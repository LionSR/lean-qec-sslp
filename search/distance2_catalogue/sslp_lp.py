# sslp_lp.py
import numpy as np
from typing import List, Optional, Tuple
from fractions import Fraction
from sslp_utils import all_bitstrings

try:
    from scipy.optimize import linprog
    HAVE_SCIPY = True
except Exception:
    HAVE_SCIPY = False


def _build_Aeq_beq(n: int, S_list: List[np.ndarray]) -> Tuple[np.ndarray, np.ndarray, List[int], np.ndarray]:
    """
    Build equality system (integer):
      For each i=0..n-1 and each j=1..K-1:  Z0[:,i]^T p0 - Zj[:,i]^T pj = 0
      For each j=0..K-1: 1^T p^(j) = 1
    Return Aeq, beq, sizes, offs
    """
    K = len(S_list)
    bits = all_bitstrings(n)
    Z_blocks = [1 - 2 * bits[S] for S in S_list]  # each: (|S_j|, n)
    sizes = [len(S) for S in S_list]
    if any(sz == 0 for sz in sizes):
        return None, None, None, None
    total_vars = sum(sizes)

    # integer matrices
    Aeq = np.zeros(((K-1)*n + K, total_vars), dtype=int)
    beq = np.zeros((K-1)*n + K, dtype=int)

    offs = np.cumsum([0] + sizes[:-1])

    row = 0
    for j in range(1, K):
        Z0 = Z_blocks[0].T   # n x |S0|
        Zj = Z_blocks[j].T   # n x |Sj|
        for i in range(n):
            Aeq[row, offs[0]:offs[0]+sizes[0]] = Z0[i]
            Aeq[row, offs[j]:offs[j]+sizes[j]] = -Zj[i]
            row += 1

    for j in range(K):
        Aeq[row, offs[j]:offs[j]+sizes[j]] = 1
        beq[row] = 1
        row += 1

    return Aeq, beq, sizes, offs


def _select_basis_from_x(Aeq: np.ndarray, x: np.ndarray, rank_target: int, tol: float=1e-10) -> Optional[List[int]]:
    
    m, nvars = Aeq.shape
    order = np.argsort(-np.abs(x))
    B: List[int] = []
    M = np.zeros((m, 0), dtype=float)
    r = 0

    def try_add(col_idx: int) -> bool:
        nonlocal M, r
        col = Aeq[:, col_idx:col_idx+1].astype(float)
        M_new = np.concatenate([M, col], axis=1)
        r_new = np.linalg.matrix_rank(M_new, tol)
        if r_new > r:
            M = M_new; r = r_new; B.append(int(col_idx))
            return True
        return False

    for j in order:
        if r >= rank_target: break
        try_add(int(j))
    if r < rank_target:
        for j in range(nvars):
            if r >= rank_target: break
            if j in B: continue
            try_add(int(j))

    return B if r == rank_target else None


def _select_independent_rows(A: np.ndarray, r: int, tol: float=1e-10) -> Optional[List[int]]:
    
    m, n = A.shape
    order = np.argsort(-np.linalg.norm(A.astype(float), axis=1))
    R: List[int] = []
    M = np.zeros((0, n), dtype=float)
    rank_now = 0

    def try_add(i: int) -> bool:
        nonlocal M, rank_now
        row = A[i:i+1, :].astype(float)
        M_new = np.vstack([M, row])
        r_new = np.linalg.matrix_rank(M_new, tol)
        if r_new > rank_now:
            M = M_new; rank_now = r_new; R.append(int(i))
            return True
        return False

    for i in order:
        if rank_now >= r: break
        try_add(int(i))
    if rank_now < r:
        for i in range(m):
            if rank_now >= r: break
            if i in R: continue
            try_add(i)

    return R if rank_now == r else None


def _gaussian_solve_fraction(A: np.ndarray, b: np.ndarray) -> Optional[List[Fraction]]:
    """
    Solve square system A x = b exactly over rationals (Fractions).
    A: (r x r) int, b: (r,) int  -> returns x list[Fraction] or None if singular.
    """
    r = A.shape[0]
    # copy to Fraction
    M = [[Fraction(int(A[i, j])) for j in range(r)] for i in range(r)]
    y = [Fraction(int(b[i])) for i in range(r)]

    # forward elimination with partial pivoting (by nonzero test)
    for k in range(r):
        pivot = None
        for i in range(k, r):
            if M[i][k] != 0:
                pivot = i; break
        if pivot is None:
            return None
        if pivot != k:
            M[k], M[pivot] = M[pivot], M[k]
            y[k], y[pivot] = y[pivot], y[k]
        # normalize row k
        pk = M[k][k]
        if pk == 0:
            return None
        for j in range(k, r):
            M[k][j] /= pk
        y[k] /= pk
        # eliminate below
        for i in range(k+1, r):
            if M[i][k] == 0: continue
            fac = M[i][k]
            for j in range(k, r):
                M[i][j] -= fac * M[k][j]
            y[i] -= fac * y[k]

    # back substitution
    x = [Fraction(0) for _ in range(r)]
    for i in range(r-1, -1, -1):
        s = y[i]
        for j in range(i+1, r):
            s -= M[i][j] * x[j]
        x[i] = s  # diagonal is 1
    return x


def solve_z_lp_multi_exact(n: int, S_list: List[np.ndarray], tol: float=1e-10):
    """
    Exact BFS via LP + rational reconstruction:
      1) Build integer Aeq, beq.
      2) Solve LP (float) to get a feasible point x_float (only to guide basis selection).
      3) rank(Aeq) = r; choose r independent columns B (basis) by greedy rank growth.
      4) choose r independent rows R from Aeq[:, B] to get square A_RB.
      5) Solve A_RB x_B = b_R exactly over Q (Fractions).
      6) Fill nonbasic = 0; split by blocks; normalize each block to sum=1.

    Return (Ps_frac, Ps_float) or None.
    """
    if not HAVE_SCIPY:
        raise RuntimeError("scipy is required for LP feasibility")

    Aeq, beq, sizes, offs = _build_Aeq_beq(n, S_list)
    if Aeq is None:
        return None

    total_vars = Aeq.shape[1]
    bounds = [(0, None)] * total_vars
    c = np.zeros(total_vars)

    # LP feasibility (float)
    res = linprog(c, A_eq=Aeq, b_eq=beq, bounds=bounds, method="highs")
    if (not res.success) or (res.x is None):
        return None
    x_float = res.x

    # column basis
    rankA = int(np.linalg.matrix_rank(Aeq.astype(float)))
    B = _select_basis_from_x(Aeq, x_float, rankA, tol=tol)
    if B is None or len(B) != rankA:
        return None

    # row selection to make square system
    A_B = Aeq[:, B]              # (m x r)
    R = _select_independent_rows(A_B, rankA, tol=tol)
    if R is None or len(R) != rankA:
        return None

    A_RB = Aeq[R][:, B]          # (r x r), integer
    b_R  = beq[R]                # (r,)

    # exact rational solve
    xB_frac = _gaussian_solve_fraction(A_RB, b_R)
    if xB_frac is None:
        return None

    # assemble full Fraction solution
    x_frac = [Fraction(0) for _ in range(total_vars)]
    for idx, col in enumerate(B):
        x_frac[col] = xB_frac[idx]

    # nonnegativity guard (exact)
    if any(val < 0 for val in x_frac):
        return None

    # split & normalize by blocks
    Ps_frac = []
    Ps_float = []
    for j, sz in enumerate(sizes):
        start = offs[j]; end = start + sz
        block_frac = x_frac[start:end]
        s_frac = sum(block_frac, start=Fraction(0))
        if s_frac == 0:
            block_frac = [Fraction(0) for _ in block_frac]
        else:
            block_frac = [v / s_frac for v in block_frac]
        Ps_frac.append(block_frac)
        Ps_float.append(np.array([float(v) for v in block_frac], dtype=float))

    return Ps_frac, Ps_float
