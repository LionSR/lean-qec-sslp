# sslp_features.py
from typing import List, Dict, Any
import numpy as np
from sslp_utils import bits_to_ket, fraction_str, sqrt_fraction_str
from sslp_ops import matel_Zi

def build_state_expansion(bits: np.ndarray, idxs: np.ndarray, probs) -> List[Dict[str, Any]]:
    """
    probs: sequence of float or Fraction
    """
    terms = []
    for idx, pr in zip(idxs.tolist(), list(probs)):
        pr_float = float(pr)
        if pr_float <= 1e-15:
            continue
        terms.append({
            "ket": bits_to_ket(bits[idx]),
            "amp_float": float(np.sqrt(max(pr_float, 0.0))),
            "amp_sqrt_fraction": sqrt_fraction_str(pr),
            "prob_float": pr_float,
            "prob_fraction": fraction_str(pr),
        })
    return terms

def compute_site_expectations_multi(n: int, psi_list: List[np.ndarray]) -> Dict[str, Any]:
    """Return per-state Z-expectations (floats + fraction strings for display)."""
    Z_float = []
    Z_frac  = []
    for psi in psi_list:
        z = [float(np.real(matel_Zi(psi, psi, n, i))) for i in range(n)]
        Z_float.append(z)
        Z_frac.append([fraction_str(x) for x in z])
    return {"Z_float": Z_float, "Z_fraction": Z_frac}

def compute_lambda_star_from_Z_multi(Z_float: List[List[float]]) -> Dict[str, Any]:
    """Average over states: lambda*_i = mean_j Z_j(i)."""
    K = len(Z_float)
    n = len(Z_float[0]) if K>0 else 0
    lam = []
    for i in range(n):
        lam.append(sum(Z_float[j][i] for j in range(K)) / max(K, 1))
    lam2 = [x*x for x in lam]
    return {
        "lambda_star_float": lam,
        "lambda_star_fraction": [fraction_str(x) for x in lam],
        "lambda_star_sq_float": lam2,
        "lambda_star_sq_fraction": [fraction_str(x) for x in lam2],
    }

def _to_latex_fraction(s: str) -> str:
    s = s.strip()
    if "/" in s:
        a, b = s.split("/", 1)
        return rf"\tfrac{{{a}}}{{{b}}}"
    return s

def sqrt_fraction_latex(prob) -> str:
    return rf"\sqrt{{{_to_latex_fraction(fraction_str(prob))}}}"

def _bits_row_to_str(bits_row: np.ndarray) -> str:
    return "".join(str(int(b)) for b in bits_row)

def build_state_expression_plain(bits: np.ndarray, idxs: np.ndarray, probs) -> str:
    terms = []
    for idx, pr in zip(idxs.tolist(), list(probs)):
        if float(pr) <= 1e-15:  # skip zeros
            continue
        amp = sqrt_fraction_str(pr)
        ket = f"|{_bits_row_to_str(bits[idx])}⟩"
        terms.append(f"{amp}{ket}")
    return " + ".join(terms) if terms else "0"

def build_state_expression_latex(bits: np.ndarray, idxs: np.ndarray, probs) -> str:
    terms = []
    for idx, pr in zip(idxs.tolist(), list(probs)):
        if float(pr) <= 1e-15:
            continue
        amp = sqrt_fraction_latex(pr)
        ket = rf"\ket{{{_bits_row_to_str(bits[idx])}}}"
        terms.append(rf"{amp}\,{ket}")
    return " + ".join(terms) if terms else "0"
