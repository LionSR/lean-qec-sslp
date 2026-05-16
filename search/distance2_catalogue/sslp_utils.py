# sslp_utils.py
# Utilities: formatting, IO, bitstrings, supports (single/multi), distance, enumeration.

import os
from fractions import Fraction
from typing import List, Dict, Tuple, Any, Optional
import numpy as np
from itertools import product, combinations_with_replacement, combinations

# ----- formatting -----
def fraction_str(x, max_den: int = 10**12) -> str:
    """
    Render number as a/b or integer.
    - If x is Fraction -> exact
    - If x is float     -> best rational within max_den (display only)
    """
    if isinstance(x, Fraction):
        return f"{x.numerator}" if x.denominator == 1 else f"{x.numerator}/{x.denominator}"
    try:
        xf = float(x)
    except Exception:
        return str(x)
    if abs(xf) < 1e-18:
        return "0"
    fr = Fraction(xf).limit_denominator(max_den)
    return f"{fr.numerator}" if fr.denominator == 1 else f"{fr.numerator}/{fr.denominator}"

def sqrt_fraction_str(prob, max_den: int = 10**12) -> str:
    return f"√({fraction_str(prob, max_den)})"

def bits_to_ket(bits_row: np.ndarray) -> str:
    return f"|{''.join(str(int(b)) for b in bits_row)}⟩"

# ----- IO -----
def ensure_dir(path: str):
    if path:
        d = path if os.path.isdir(path) else os.path.dirname(path)
        if d and not os.path.exists(d):
            os.makedirs(d, exist_ok=True)

# ----- bitstrings & supports -----
def all_bitstrings(n: int) -> np.ndarray:
    return np.array(list(product([0, 1], repeat=n)), dtype=int)

def build_supports(n: int, a: List[int], m: int, s: int):
    bits = all_bitstrings(n)
    avec = np.array(a, dtype=int) % m
    sums = (bits @ avec) % m
    S_idx = np.where(sums == (s % m))[0]
    return bits, S_idx

def build_supports_multi(n: int, a: List[int], m: int, s_list: List[int]):
    """Return (bits, [S0_idx, S1_idx, ..., S_{K-1}_idx]), where s_list includes ALL targets."""
    bits = all_bitstrings(n)
    avec = np.array(a, dtype=int) % m
    sums = (bits @ avec) % m
    S_list = [np.where(sums == (s % m))[0] for s in s_list]
    return bits, S_list

# ----- Hamming distance over union -----
def min_hamming_distance_union(n: int, S_list: List[np.ndarray]) -> int:
    bits = all_bitstrings(n)
    idxs = []
    for S in S_list:
        idxs.extend(S.tolist())
    if len(idxs) < 2:
        return 0
    min_d = 10**9
    for i in range(len(idxs)):
        bi = bits[idxs[i]]
        for j in range(i+1, len(idxs)):
            bj = bits[idxs[j]]
            d = int(np.sum(bi != bj))
            if d < min_d:
                min_d = d
                if min_d == 0:
                    return 0
    return min_d

# ----- enumerate monotone a -----
def iterate_all_monotone_a(n: int, m: int):
    for comb in combinations_with_replacement(range(1, m), n):
        yield list(comb)

# ----- enumerate increasing s (exclude 0) -----
def iterate_all_increasing_s(m: int, K: int, require_coprime_sm: bool = True):
    """Yield tuples (s1,...,s_{K-1}) with 1<= s1 < ... < s_{K-1} <= m-1."""
    cand = range(1, m)
    if require_coprime_sm:
        cand = [s for s in cand if np.gcd(s, m) == 1]
    for tup in combinations(cand, K-1):
        yield list(tup)

# ----- validity: s != ±a_i (mod m) -----
def s_valid_against_a(a: List[int], m: int, s: int) -> bool:
    am = [x % m for x in a]
    return all((s - x) % m != 0 and (s + x) % m != 0 for x in am)
