# sslp_weight.py
# Shor–Laflamme weight enumerators for general (possibly nonadditive) QECCs.


from typing import List, Dict, Tuple
import numpy as np
from itertools import combinations, product
from fractions import Fraction
from sslp_utils import ensure_dir

_I, _X, _Y, _Z = 0, 1, 2, 3

def _iter_pauli_strings_by_weight(n: int, w: int):
    if w == 0:
        yield (0,) * n
        return
    for pos in combinations(range(n), w):
        for ops in product((1,2,3), repeat=w):
            arr = [0]*n
            for p,op in zip(pos, ops):
                arr[p] = op
            yield tuple(arr)

def _apply_pauli_on_ket_fast(psi: np.ndarray, n: int, ops: Tuple[int,...]) -> np.ndarray:
    d = psi.shape[0]
    mask_flip = 0
    mask_sign = 0
    y_count = 0
    for i,op in enumerate(ops):
        if op == _X:
            mask_flip |= (1 << i)
        elif op == _Y:
            mask_flip |= (1 << i); mask_sign |= (1 << i); y_count += 1
        elif op == _Z:
            mask_sign |= (1 << i)
    idx = np.arange(d, dtype=np.int64) ^ np.int64(mask_flip)
    ks = np.arange(d, dtype=np.int64)
    parity_bits = np.fromiter(((int((x & np.int64(mask_sign))).bit_count() & 1) for x in ks),
                              dtype=np.int8, count=d)
    sign_pm = np.where(parity_bits == 0, 1.0, -1.0)
    if y_count % 4 == 0: i_factor = 1.0 + 0.0j
    elif y_count % 4 == 1: i_factor = 0.0 + 1.0j
    elif y_count % 4 == 2: i_factor = -1.0 + 0.0j
    else: i_factor = 0.0 - 1.0j
    phase = sign_pm.astype(np.complex128) * i_factor
    phi = np.empty_like(psi, dtype=np.complex128)
    phi[idx] = phase * psi
    return phi

def _overlap(psi_l: np.ndarray, psi_r: np.ndarray, n: int, ops: Tuple[int,...]) -> complex:
    phi = _apply_pauli_on_ket_fast(psi_r, n, ops)
    return np.vdot(psi_l, phi)

def compute_shor_laflamme_enumerators(psi_list: List[np.ndarray]) -> Dict[str, List[float]]:
    if not psi_list:
        return {"A": [], "B": []}
    d = psi_list[0].shape[0]
    n = int(round(np.log2(d))); assert (1 << n) == d
    K = len(psi_list)
    A = [0.0] * (n + 1)
    B = [0.0] * (n + 1)
    psis = [np.asarray(v, dtype=np.complex128) for v in psi_list]

    for w in range(n + 1):
        sum_Aw = 0.0
        sum_Bw = 0.0
        for ops in _iter_pauli_strings_by_weight(n, w):
            t = 0.0 + 0.0j
            for i in range(K):
                t += _overlap(psis[i], psis[i], n, ops)
            sum_Aw += float(np.abs(t) ** 2)
            s = 0.0
            for i in range(K):
                for k in range(K):
                    val = _overlap(psis[i], psis[k], n, ops)
                    s += float((val.real * val.real) + (val.imag * val.imag))
            sum_Bw += s
        A[w] = sum_Aw / (K * K)
        B[w] = sum_Bw / K
    return {"A": A, "B": B}

def _to_frac_str(x: float, max_den: int = 10**12, rel_tol: float = 1e-12) -> str:
    fr = Fraction(x).limit_denominator(max_den)
    if abs(float(fr) - x) <= rel_tol * max(1.0, abs(x)):
        return f"{fr.numerator}" if fr.denominator == 1 else f"{fr.numerator}/{fr.denominator}"
    return f"{x:.12g}"

def format_enumerators_fraction(A: List[float], B: List[float],
                                max_den: int = 10**12, rel_tol: float = 1e-12) -> Dict[str, List[str]]:
    return {
        "A_fraction": [_to_frac_str(x, max_den, rel_tol) for x in A],
        "B_fraction": [_to_frac_str(x, max_den, rel_tol) for x in B],
    }

# ----- LaTeX -----
def _latexify_coeff_str(s: str) -> str:
    s = s.strip()
    if "/" in s:
        a, b = s.split("/", 1)
        return rf"\tfrac{{{a}}}{{{b}}}"
    return s

def poly_from_fraction_list_latex(coeffs: List[str], var: str = "z") -> str:
    terms = []
    for j, s in enumerate(coeffs):
        if s in ("0", "0/1", "0/"):  # conservative zero checks
            continue
        cj = _latexify_coeff_str(s)
        if j == 0:
            terms.append(cj)
        elif cj == "1":
            terms.append(var)
        else:
            terms.append(rf"{cj}\,{var}" if j == 1 else rf"{cj}\,{var}^{{{j}}}")
    return " + ".join(terms) if terms else "0"

def save_weight_enumerators_latex(hits: List[Dict], out_tex: str,
                                  title: str = r"Shor--Laflamme Weight Enumerators") -> None:
    ensure_dir(out_tex)
    with open(out_tex, "w", encoding="utf-8") as f:
        f.write(r"\documentclass[11pt]{article}"+"\n")
        f.write(r"\usepackage{amsmath,amssymb}"+"\n")
        f.write(r"\usepackage[margin=1in]{geometry}"+"\n")
        f.write(r"\begin{document}"+"\n")
        f.write(rf"\section*{{{title}}}"+"\n")
        f.write(rf"\noindent Total codes: {len(hits)}\par\medskip"+"\n\n")
        for idx, h in enumerate(hits, start=1):
            we = h.get("weight_enumerator", {})
            A_frac = we.get("A_fraction", [])
            B_frac = we.get("B_fraction", [])
            A_poly = poly_from_fraction_list_latex(A_frac, var="z")
            B_poly = poly_from_fraction_list_latex(B_frac, var="z")

            n = int(h["n"]); m = int(h["m"]); K = int(h["K"])
            a = "(" + ", ".join(map(str, h.get("a", []))) + ")"
            s_list = "(" + ", ".join(map(str, h.get("s_list", []))) + ")"
            f.write(rf"\section*{{Code {idx}}}"+"\n")
            f.write(rf"\noindent Parameters: $n={n},\ m={m},\ K={K},\ \mathbf a={a},\ S={s_list}.$\\[4pt]"+"\n")
            f.write(r"\[ A(z) = " + A_poly + r"\]"+"\n")
            f.write(r"\[ B(z) = " + B_poly + r"\]"+"\n")
            f.write(r"\bigskip"+"\n\n")
        f.write(r"\end{document}"+"\n")
