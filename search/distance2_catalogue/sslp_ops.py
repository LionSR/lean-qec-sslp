# sslp_ops.py
from typing import List, Dict, Tuple, Any
import numpy as np
from sslp_utils import all_bitstrings

# ----- build states (single/multi) -----
def build_states_from_probs(n: int, S_idx, p, phase=None):
    d = 2 ** n
    psi = np.zeros(d, dtype=complex)
    if phase is None:
        phase = np.zeros(len(S_idx))
    psi[S_idx] = np.sqrt(np.asarray(p, dtype=float)) * np.exp(1j * np.array(phase))
    # normalize
    norm = np.vdot(psi, psi).real
    if norm > 0: psi /= np.sqrt(norm)
    return psi

def build_states_from_probs_multi(n: int, S_list, P_list, phases_list=None):
    K = len(S_list)
    if phases_list is None:
        phases_list = [None] * K
    return [build_states_from_probs(n, S_list[j], P_list[j], phases_list[j]) for j in range(K)]

# ----- caches -----
_BITS_CACHE: Dict[int, Dict[Tuple[int, ...], int]] = {}
_INDEX_TO_BITS: Dict[int, List[Tuple[int, ...]]] = {}

def _get_maps(n: int):
    if n in _BITS_CACHE:
        return _BITS_CACHE[n], _INDEX_TO_BITS[n]
    bits = all_bitstrings(n)
    d = {tuple(b): i for i, b in enumerate(bits)}
    _BITS_CACHE[n] = d
    _INDEX_TO_BITS[n] = [tuple(b) for b in bits]
    return d, _INDEX_TO_BITS[n]

# ----- one-qubit matrix elements -----
def matel_Zi(psi, phi, n, i):
    bits = all_bitstrings(n)
    sign = 1 - 2 * bits[:, i]
    return np.vdot(psi, sign * phi)

def matel_Xi(psi, phi, n, i):
    idxmap, idx2bits = _get_maps(n)
    val = 0.0 + 0.0j
    for k, b in enumerate(idx2bits):
        lst = list(b); lst[i] ^= 1
        kflip = idxmap[tuple(lst)]
        val += np.conjugate(psi[k]) * phi[kflip]
    return val

def matel_Yi(psi, phi, n, i):
    idxmap, idx2bits = _get_maps(n)
    val = 0.0 + 0.0j
    for k, b in enumerate(idx2bits):
        lst = list(b); lst[i] ^= 1
        kflip = idxmap[tuple(lst)]
        factor = 1j * ((-1) ** b[i])
        val += np.conjugate(psi[k]) * factor * phi[kflip]
    return val

# ----- KL (multi) -----
def verify_KL_multi(n: int, psi_list: List[np.ndarray], tol: float = 1e-8) -> Dict[str, Any]:
    """Check KL for single-qubit Z/X/Y across K states: all diagonals equal, all off-diagonals ~0."""
    K = len(psi_list)
    report = {"ok": True, "violations": []}
    for i in range(n):
        # diagonals
        zdiag = [matel_Zi(psi_list[j], psi_list[j], n, i) for j in range(K)]
        xdiag = [matel_Xi(psi_list[j], psi_list[j], n, i) for j in range(K)]
        ydiag = [matel_Yi(psi_list[j], psi_list[j], n, i) for j in range(K)]
        for arr, lab in [(zdiag,"Z_diag"), (xdiag,"X_diag"), (ydiag,"Y_diag")]:
            base = arr[0]
            for j in range(1, K):
                if abs(arr[j] - base) > tol:
                    report["ok"] = False; report["violations"].append((lab, i, 0, j, base, arr[j]))
        # off-diagonals
        for r in range(K):
            for s in range(K):
                if r == s: continue
                zrs = matel_Zi(psi_list[r], psi_list[s], n, i)
                xrs = matel_Xi(psi_list[r], psi_list[s], n, i)
                yrs = matel_Yi(psi_list[r], psi_list[s], n, i)
                if abs(zrs) > tol: report["ok"]=False; report["violations"].append(("Z_offdiag", i, r, s, zrs))
                if abs(xrs) > tol: report["ok"]=False; report["violations"].append(("X_offdiag", i, r, s, xrs))
                if abs(yrs) > tol: report["ok"]=False; report["violations"].append(("Y_offdiag", i, r, s, yrs))
    return report

# ----- transversal U (multi) -----
def apply_transversal_U(a: List[int], m: int, state, n: int):
    bits = all_bitstrings(n)
    omega = np.exp(2j * np.pi / m)
    phases = np.power(omega, (bits @ (np.array(a) % m)) % m)
    return state * phases

def verify_transversal_U_multi(n: int, a: List[int], m: int, s_list: List[int], psi_list: List[np.ndarray], tol: float=1e-8):
    """Check U acts as diag(ω^{s_j}) on the span of psi_list."""
    omega = np.exp(2j * np.pi / m)
    oks = []
    details = []
    for j, psi in enumerate(psi_list):
        Upsi = apply_transversal_U(a, m, psi, n)
        phase = omega ** (s_list[j] % m)
        cj = np.vdot(psi, Upsi) / phase
        okj = np.allclose(Upsi, phase * cj * psi, atol=tol)
        oks.append(bool(okj))
        details.append({"phase_target": phase, "phase_proj": cj})
    return {"ok": all(oks), "per_state_ok": oks, "details": details}
