# indep_check_core_multi.py
# Fully independent multi-checker + fast weight enumerator (no imports from project code).
# Requires: numpy only.

import os, json, csv, re
from typing import List, Dict, Any, Tuple, Optional
import numpy as np
from fractions import Fraction
from itertools import combinations, product

TOL = 1e-8  # numeric tolerance for comparisons

# ----------------------------
# Utilities
# ----------------------------

def ensure_dir(path: str):
    if path and not os.path.exists(path):
        os.makedirs(path, exist_ok=True)

def _npjson_default(o):
    if isinstance(o, (np.integer,)): return int(o)
    if isinstance(o, (np.floating,)): return float(o)
    if isinstance(o, np.ndarray): return o.tolist()
    if isinstance(o, (complex, np.complexfloating)):
        return {"re": float(np.real(o)), "im": float(np.imag(o))}
    return str(o)

def all_bitstrings(n: int) -> np.ndarray:
    d = 1 << n
    arr = np.zeros((d, n), dtype=int)
    for i in range(d):
        for j in range(n):
            arr[i, n-1-j] = (i >> j) & 1  # position 0 = MSB
    return arr

def build_supports_multi(n: int, a: List[int], m: int, s_list: List[int]) -> Tuple[np.ndarray, List[np.ndarray]]:
    bits = all_bitstrings(n)
    avec = np.array(a, dtype=int) % m
    sums = (bits @ avec) % m
    out = []
    for s in s_list:
        out.append(np.where(sums == (s % m))[0])
    return bits, out

def hamming_distance(b1: np.ndarray, b2: np.ndarray) -> int:
    return int(np.sum(b1 != b2))

def min_hamming_distance_union(n: int, S_list: List[np.ndarray], bits: np.ndarray) -> int:
    idxs: List[int] = []
    for S in S_list:
        idxs.extend(S.tolist())
    if len(idxs) < 2:
        return 0
    md = n + 1
    for i in range(len(idxs)):
        bi = bits[idxs[i]]
        for j in range(i+1, len(idxs)):
            bj = bits[idxs[j]]
            d = hamming_distance(bi, bj)
            if d < md:
                md = d
                if md == 0:
                    return 0
    return md if md <= n else 0

def bits_to_index(bits: str) -> int:
    return int(bits, 2)

def parse_fraction(s: str) -> Fraction:
    s = s.strip()
    if s == "0": return Fraction(0, 1)
    if "/" in s:
        a, b = s.split("/", 1)
        return Fraction(int(a), int(b))
    return Fraction(int(s), 1)

def _clean_ket_text(s: str) -> str:
    s = s.strip()
    return s.replace("|","").replace("⟩","").replace("⟨","").replace("<","").replace(">","")

def terms_to_prob_map(terms: List[Dict[str, Any]]) -> Tuple[Dict[str, Fraction], bool]:
    prob_map: Dict[str, Fraction] = {}
    all_exact = True
    for t in terms:
        ket = _clean_ket_text(str(t["ket"]))
        if "prob_fraction" in t:
            pr = parse_fraction(str(t["prob_fraction"]))
        elif "prob_float" in t:
            pr = Fraction(str(t["prob_float"]))  # approximate
            all_exact = False
        elif "amp" in t:
            a = str(t["amp"]).replace(" ", "")
            if "i" in a:
                if a == "i": val = 1j
                elif a == "-i": val = -1j
                else:
                    if a.endswith("i"):
                        a2 = a[:-1]
                        m = re.search(r"(.+)([+-])(.+)$", a2)
                        if m:
                            r, sign, im = m.group(1), m.group(2), m.group(3)
                            val = float(r) + (1j if sign=="+" else -1j)*float(im)
                        else:
                            val = 1j*float(a2)
                    else:
                        raise ValueError(f"amp format not recognized: {a}")
            else:
                val = float(a)
            pr = Fraction(str((abs(val) ** 2)))
            all_exact = False
        else:
            pr = Fraction(0, 1)
            all_exact = False
        prob_map[ket] = pr
    return prob_map, all_exact

# ----------------------------
# State reconstruction
# ----------------------------

def state_from_terms_prob(n: int, terms: List[Dict[str, Any]]) -> np.ndarray:
    """
    Build |psi> from terms with either prob_fraction/prob_float (amplitude = +sqrt(prob))
    or amp (complex string 'a+bi' / 'a-bi' / 'i' / '-i').
    """
    d = 1 << n
    psi = np.zeros(d, dtype=np.complex128)
    has_amp = any("amp" in t for t in terms)

    if has_amp:
        for t in terms:
            k = _clean_ket_text(str(t["ket"]))
            idx = bits_to_index(k)
            a = str(t["amp"]).replace(" ", "")
            if "i" in a:
                if a == "i": val = 1j
                elif a == "-i": val = -1j
                else:
                    if a.endswith("i"):
                        a2 = a[:-1]
                        m = re.search(r"(.+)([+-])(.+)$", a2)
                        if m:
                            r, sign, im = m.group(1), m.group(2), m.group(3)
                            val = float(r) + (1j if sign=="+" else -1j)*float(im)
                        else:
                            val = 1j*float(a2)
                    else:
                        raise ValueError(f"amp format not recognized: {a}")
            else:
                val = float(a)
            psi[idx] = complex(val)
    else:
        for t in terms:
            k = _clean_ket_text(str(t["ket"]))
            idx = bits_to_index(k)
            if "prob_fraction" in t:
                pr = float(parse_fraction(str(t["prob_fraction"])))
            else:
                pr = float(t.get("prob_float", 0.0))
            psi[idx] = np.sqrt(max(pr, 0.0))

    # normalize
    norm = np.vdot(psi, psi).real
    if norm > 0:
        psi = psi / np.sqrt(norm)
    return psi

# ----------------------------
# Single-qubit matrix elements
# ----------------------------

def matel_Zi(psi: np.ndarray, phi: np.ndarray, n: int, i: int, bits_cache: np.ndarray=None) -> complex:
    bits = bits_cache if bits_cache is not None else all_bitstrings(n)
    sign = 1 - 2 * bits[:, i]
    return np.vdot(psi, sign * phi)

def matel_Xi(psi: np.ndarray, phi: np.ndarray, n: int, i: int) -> complex:
    d = 1 << n
    val = 0.0 + 0.0j
    for x in range(d):
        y = x ^ (1 << (n-1-i))
        val += np.conjugate(psi[x]) * phi[y]
    return val

def matel_Yi(psi: np.ndarray, phi: np.ndarray, n: int, i: int) -> complex:
    d = 1 << n
    val = 0.0 + 0.0j
    for x in range(d):
        bit_i = (x >> (n-1-i)) & 1
        y = x ^ (1 << (n-1-i))
        factor = 1j * ((-1) ** bit_i)
        val += np.conjugate(psi[x]) * phi[y]
    return val

# ----------------------------
# KL & Transversal-U
# ----------------------------

def verify_KL_multi(psi_list: List[np.ndarray], n: int, tol: float = TOL) -> Dict[str, Any]:
    K = len(psi_list)
    bits = all_bitstrings(n)
    ok = True
    violations: List[Tuple] = []
    # equal diagonals
    for i in range(n):
        zdiag = [matel_Zi(psi_list[j], psi_list[j], n, i, bits) for j in range(K)]
        xdiag = [matel_Xi(psi_list[j], psi_list[j], n, i) for j in range(K)]
        ydiag = [matel_Yi(psi_list[j], psi_list[j], n, i) for j in range(K)]
        for arr, lab in ((zdiag,"Z_diag"), (xdiag,"X_diag"), (ydiag,"Y_diag")):
            base = arr[0]
            for j in range(1, K):
                if abs(arr[j] - base) > tol:
                    ok = False; violations.append((lab, i, 0, j, complex(base), complex(arr[j])))
    # off-diagonals ~ 0
    for i in range(n):
        for r in range(K):
            for s in range(K):
                if r == s: continue
                zrs = matel_Zi(psi_list[r], psi_list[s], n, i, bits)
                xrs = matel_Xi(psi_list[r], psi_list[s], n, i)
                yrs = matel_Yi(psi_list[r], psi_list[s], n, i)
                if abs(zrs) > tol: ok=False; violations.append(("Z_offdiag", i, r, s, complex(zrs)))
                if abs(xrs) > tol: ok=False; violations.append(("X_offdiag", i, r, s, complex(xrs)))
                if abs(yrs) > tol: ok=False; violations.append(("Y_offdiag", i, r, s, complex(yrs)))
    return {"ok": ok, "violations": violations}

def apply_transversal_U(a: List[int], m: int, psi: np.ndarray, n: int) -> np.ndarray:
    bits = all_bitstrings(n)
    avec = (np.array(a, dtype=int) % m).astype(int)
    omega = np.exp(2j * np.pi / m)
    exps = (bits @ avec) % m
    phases = np.power(omega, exps)
    return psi * phases

def verify_transversal_U_multi(a: List[int], m: int, s_list: List[int],
                               psi_list: List[np.ndarray], n: int, tol: float = TOL) -> Dict[str, Any]:
    omega = np.exp(2j * np.pi / m)
    oks = []; details = []
    for j, psi in enumerate(psi_list):
        Upsi = apply_transversal_U(a, m, psi, n)
        phase_target = omega ** (s_list[j] % m)
        cj = np.vdot(psi, Upsi) / phase_target
        okj = np.allclose(Upsi, phase_target * cj * psi, atol=tol)
        oks.append(bool(okj))
        details.append({"phase_target": complex(phase_target), "phase_proj": complex(cj)})
    return {"ok": all(oks), "per_state_ok": oks, "details": details}

# ----------------------------
# Exact Z from terms (Fraction + tolerant fallback)
# ----------------------------

def exact_Z_expectations_from_terms(n: int,
                                    bits: np.ndarray,
                                    S_idx: np.ndarray,
                                    terms: List[Dict[str, Any]]) -> Tuple[List[Fraction], bool]:
    
    prob_map, all_exact = terms_to_prob_map(terms)
    out: List[Fraction] = []
    for i in range(n):
        s = Fraction(0, 1)
        for idx in S_idx.tolist():
            ket = "".join(str(int(b)) for b in bits[idx])
            pr = prob_map.get(ket, Fraction(0, 1))
            s += pr * (1 - 2 * int(bits[idx, i]))
        out.append(s)
    return out, all_exact

# ----------------------------
# Fast weight enumerator (no Kronecker)
# ----------------------------

def _build_pauli_action_cache(n: int):
    d = 1 << n
    idx = np.arange(d, dtype=np.int64)
    flip_idx = []
    signZ = []
    phaseY = []
    for pos in range(n):
        shift = (n - 1 - pos)
        mask = (1 << shift)
        bit = ((idx >> shift) & 1).astype(np.int8)
        flip_idx.append(idx ^ mask)                               # X: reindex
        signZ.append(1.0 - 2.0 * bit.astype(np.float64))          # Z: ±1
        phaseY.append(1j * np.where(bit == 1, -1.0, 1.0))         # Y: i*(-1)^bit
    return {
        "flip": [np.asarray(x, dtype=np.int64) for x in flip_idx],
        "signZ": [np.asarray(x, dtype=np.float64) for x in signZ],
        "phaseY": [np.asarray(x, dtype=np.complex128) for x in phaseY],
    }

def _apply_pauli_string_to_matrix(Q: np.ndarray,
                                  spec: Tuple[Tuple[int, str], ...],
                                  cache: Dict[str, List[np.ndarray]]) -> np.ndarray:
    
    EQ = Q
    for (pos, lab) in spec:
        if lab == "Z":
            EQ = EQ * cache["signZ"][pos][:, None]
        elif lab == "X":
            EQ = EQ[cache["flip"][pos], :]
        elif lab == "Y":
            EQ = EQ[cache["flip"][pos], :] * cache["phaseY"][pos][:, None]
        else:
            pass
    return EQ

def _qr_orthonormalize(states: List[np.ndarray]) -> Tuple[np.ndarray, int]:
    if len(states) == 0:
        raise ValueError("no states provided")
    M = np.stack(states, axis=1)        # (2^n, K)
    Q, R = np.linalg.qr(M, mode="reduced")
    keep = (np.abs(np.diag(R)) > 1e-12)
    Q = Q[:, keep]
    return Q, Q.shape[1]

def weight_enumerators_fast_from_states(states: List[np.ndarray], n: int) -> Tuple[np.ndarray, np.ndarray]:
    r"""return A_w, B_w（w=0..n）。not construct Kronecker matrix，compute on Q^\dagger E Q directly"""
    Q, r = _qr_orthonormalize(states)   # (2^n, r)
    QH = Q.conj().T                     # (r, 2^n)
    cache = _build_pauli_action_cache(n)

    A = np.zeros(n+1, dtype=np.float64)
    B = np.zeros(n+1, dtype=np.float64)

    # w=0
    M = QH @ Q
    t = np.trace(M)
    A[0] = float((np.abs(t) ** 2) / (r ** 2))                 # = 1
    B[0] = float((np.linalg.norm(M, "fro") ** 2) / r)         # = 1

    # w>=1
    for w in range(1, n+1):
        swA = 0.0
        swB = 0.0
        for pos_tuple in combinations(range(n), w):
            for labs in product(("X", "Y", "Z"), repeat=w):
                spec = tuple((pos_tuple[j], labs[j]) for j in range(w))
                EQ = _apply_pauli_string_to_matrix(Q, spec, cache)    # (2^n, r)
                M = QH @ EQ                                           # (r, r)
                t = np.trace(M)
                swA += (np.abs(t) ** 2) / (r ** 2)
                swB += (np.linalg.norm(M, "fro") ** 2) / r
        A[w] = swA
        B[w] = swB
    return A, B

# ----------------------------
# Compare-to-user CSV 
# ----------------------------

def key_of_hit(h: Dict[str, Any]) -> Tuple:
    return (
        int(h["n"]),
        int(h["m"]),
        int(h["K"]),
        tuple(int(x) for x in h["a"]),
        tuple(int(x) for x in h["s_list"]),
    )

def _parse_int_list(s: str) -> List[int]:
    return [int(x) for x in re.findall(r"-?\d+", s or "")]

def load_user_enumerator_csv(path: str) -> Dict[Tuple, Dict[str, List[float]]]:
    """
    Try to parse a CSV produced by the searcher that contains A_w / B_w.
    Expected keys: columns n,m,K,a,s_list; enumerators as either:
      - single columns 'A_w' and 'B_w' with space/comma-separated floats or JSON-like [..]
      - multiple columns A0..An and B0..Bn
    Returns mapping key(tuple)-> {"A": list[float], "B": list[float]}
    """
    out: Dict[Tuple, Dict[str, List[float]]] = {}
    if not path or (not os.path.exists(path)):
        return out

    with open(path, "r", encoding="utf-8") as f:
        rd = csv.DictReader(f)
        hdr = rd.fieldnames or []

        # detect enumerator columns
        has_vec_cols = ("A_w" in hdr and "B_w" in hdr)
        A_cols = sorted([c for c in hdr if re.fullmatch(r"A\d+", c)], key=lambda x: int(x[1:]))
        B_cols = sorted([c for c in hdr if re.fullmatch(r"B\d+", c)], key=lambda x: int(x[1:]))

        for row in rd:
            try:
                n = int(row["n"]); m = int(row["m"]); K = int(row["K"])
                a = tuple(_parse_int_list(row.get("a","")))
                s_list = tuple(_parse_int_list(row.get("s_list","")))
            except Exception:
                continue
            key = (n, m, K, a, s_list)

            A_vals: List[float] = []
            B_vals: List[float] = []
            if has_vec_cols:
                def _parse_vec(txt: str) -> List[float]:
                    txt = (txt or "").strip()
                    if txt.startswith("[") and txt.endswith("]"):
                        try:
                            arr = json.loads(txt)
                            return [float(x) for x in arr]
                        except Exception:
                            pass
                    parts = re.split(r"[,\s]+", txt.strip())
                    return [float(x) for x in parts if x]
                A_vals = _parse_vec(row.get("A_w",""))
                B_vals = _parse_vec(row.get("B_w",""))
            elif A_cols and B_cols:
                try:
                    A_vals = [float(row[c]) for c in A_cols]
                    B_vals = [float(row[c]) for c in B_cols]
                except Exception:
                    A_vals, B_vals = [], []
            else:
                pass

            
            if A_vals and B_vals:
                out[key] = {"A": A_vals, "B": B_vals}

    return out

# ----------------------------
# Per-hit check 
# ----------------------------

def check_one_hit_multi(h: Dict[str, Any],
                        user_enum_map: Optional[Dict[Tuple, Dict[str, List[float]]]] = None) -> Dict[str, Any]:
    n = int(h["n"]); m = int(h["m"]); K = int(h["K"])
    a = [int(x) for x in h["a"]]; s_list = [int(x) for x in h["s_list"]]
    sizes_dump = [int(x) for x in h["sizes"]]
    P_list = [np.array(p, dtype=float) for p in h["P_list"]]
    states_dump = h.get("states", [])

    # supports
    bits, S_list = build_supports_multi(n, a, m, s_list)

    reasons: List[str] = []
    core_ok = True

    # sizes
    sizes_real = [len(S) for S in S_list]
    if sizes_real != sizes_dump:
        core_ok = False; reasons.append("sizes_mismatch")
    if any(sz == 0 for sz in sizes_real):
        core_ok = False; reasons.append("empty_support")

    # distance 2
    d2 = min_hamming_distance_union(n, S_list, bits)
    if d2 != 2:
        core_ok = False; reasons.append("distance!=2")

    # prob sanity & build states numerically
    psi_list = []
    for j in range(K):
        pj = P_list[j]
        if np.any(pj < -1e-14):
            core_ok = False; reasons.append(f"neg_prob_block_{j}")
        ssum = float(np.sum(pj))
        if not np.isclose(ssum, 1.0, atol=1e-8):
            core_ok = False; reasons.append(f"prob_sum!=1_block_{j}")
        d = 1 << n
        psi = np.zeros(d, dtype=np.complex128)
        psi[S_list[j]] = np.sqrt(np.maximum(pj, 0.0))
        norm = np.vdot(psi, psi).real
        if norm > 0: psi /= np.sqrt(norm)
        psi_list.append(psi)

    # KL & U
    kl = verify_KL_multi(psi_list, n, tol=TOL)
    u  = verify_transversal_U_multi(a, m, s_list, psi_list, n, tol=TOL)
    if not kl["ok"]: core_ok=False; reasons.append("KL_fail")
    if not u["ok"]:  core_ok=False; reasons.append("U_fail")

    # numeric Z & lambda*
    Z_numeric = [[float(np.real(matel_Zi(psi_list[j], psi_list[j], n, i))) for i in range(n)] for j in range(K)]
    lam = [sum(Z_numeric[j][i] for j in range(K))/K for i in range(n)]
    lam2 = [x*x for x in lam]

    # exact Z equality if dump has terms
    exact_ok = True; exact_reasons: List[str] = []
    if states_dump and len(states_dump) == K:
        Z_exact_num = []   # numeric version for tolerant equality
        exact_all_frac = True
        Z_exact_frac = []  # fraction version if all exact

        for j in range(K):
            Zj_frac, all_exact_j = exact_Z_expectations_from_terms(n, bits, S_list[j], states_dump[j])
            exact_all_frac = exact_all_frac and all_exact_j
            Z_exact_frac.append(Zj_frac)
            Z_exact_num.append([float(z) for z in Zj_frac])

        if exact_all_frac:
            eq_ok = all(Z_exact_frac[j][i] == Z_exact_frac[0][i] for j in range(1, K) for i in range(n))
            if not eq_ok:
                exact_ok = False; exact_reasons.append("Z_equal_fail_exact_fraction")
        else:
            eq_ok = all(abs(Z_exact_num[j][i] - Z_exact_num[0][i]) <= TOL for j in range(1, K) for i in range(n))
            if not eq_ok:
                exact_ok = False; exact_reasons.append("Z_equal_fail_numeric_tol")

    # weight enumerators (fast, independent)
    A_ind, B_ind = weight_enumerators_fast_from_states(psi_list, n)

    # optional: compare with user's enumerator CSV
    enum_cmp = {"has_user": False}
    if user_enum_map is not None:
        k = key_of_hit(h)
        if k in user_enum_map:
            enum_cmp["has_user"] = True
            Au = np.array(user_enum_map[k]["A"], dtype=float)
            Bu = np.array(user_enum_map[k]["B"], dtype=float)
            if len(Au) == len(A_ind) and len(Bu) == len(B_ind):
                diffA = np.max(np.abs(Au - A_ind)) if len(Au)>0 else 0.0
                diffB = np.max(np.abs(Bu - B_ind)) if len(Bu)>0 else 0.0
                enum_cmp.update({
                    "A_ok": bool(diffA <= TOL),
                    "B_ok": bool(diffB <= TOL),
                    "max_abs_diff_A": float(diffA),
                    "max_abs_diff_B": float(diffB),
                })
            else:
                enum_cmp.update({
                    "A_ok": False, "B_ok": False,
                    "reason": f"length_mismatch: user A={len(Au)} B={len(Bu)}, indep A={len(A_ind)} B={len(B_ind)}"
                })

    overall_ok = core_ok and exact_ok and (enum_cmp.get("A_ok", True) and enum_cmp.get("B_ok", True) if enum_cmp.get("has_user", False) else True)

    return {
        "n": n, "m": m, "K": K, "a": a, "s_list": s_list,
        "overall_ok": overall_ok,
        "core_numeric": {
            "ok": core_ok,
            "reasons": reasons,
            "KL_ok": kl["ok"], "U_ok": u["ok"],
            "KL_violations": kl["violations"],
            "U_detail": u
        },
        "exact_fraction": {"ok": exact_ok, "reasons": exact_reasons},
        "Z_numeric": Z_numeric,
        "lambda_numeric": {"lambda": lam, "lambda_sq": lam2},
        "sizes_real": sizes_real,
        "distance_union": d2,
        "enumerator_independent": {
            "A_w": A_ind.tolist(),
            "B_w": B_ind.tolist()
        },
        "enumerator_compare": enum_cmp
    }

# ----------------------------
# Top-level driver
# ----------------------------

def run_indep_check_multi(in_json: str, out_json: str, out_csv: str,
                          user_enum_csv: Optional[str] = None) -> Dict[str, Any]:
    ensure_dir(os.path.dirname(out_json)); ensure_dir(os.path.dirname(out_csv))
    with open(in_json, "r", encoding="utf-8") as f:
        hits = json.load(f)

    user_map = load_user_enumerator_csv(user_enum_csv) if user_enum_csv else None

    reports = [check_one_hit_multi(h, user_map) for h in hits]
    passed = sum(1 for r in reports if r["overall_ok"])

    with open(out_json, "w", encoding="utf-8") as f:
        json.dump({
            "input_json": in_json,
            "total": len(hits),
            "passed_overall": passed,
            "failed_overall": len(hits) - passed,
            "results": reports
        }, f, indent=2, ensure_ascii=False, default=_npjson_default)

    # CSV summary (also write enumerators)
    fields = [
        "n","m","K","a","s_list","overall_ok","core_ok","exact_ok",
        "enum_has_user","enum_A_ok","enum_B_ok","enum_max_abs_diff_A","enum_max_abs_diff_B",
        "A_w_indep","B_w_indep","distance_union","sizes_real","reasons"
    ]
    with open(out_csv, "w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=fields)
        w.writeheader()
        for r in reports:
            enum_cmp = r["enumerator_compare"]
            A_str = " ".join(f"{x:.12g}" for x in r["enumerator_independent"]["A_w"])
            B_str = " ".join(f"{x:.12g}" for x in r["enumerator_independent"]["B_w"])
            w.writerow({
                "n": r["n"], "m": r["m"], "K": r["K"],
                "a": " ".join(map(str, r["a"])),
                "s_list": " ".join(map(str, r["s_list"])),
                "overall_ok": r["overall_ok"],
                "core_ok": r["core_numeric"]["ok"],
                "exact_ok": r["exact_fraction"]["ok"],
                "enum_has_user": enum_cmp.get("has_user", False),
                "enum_A_ok": enum_cmp.get("A_ok", ""),
                "enum_B_ok": enum_cmp.get("B_ok", ""),
                "enum_max_abs_diff_A": enum_cmp.get("max_abs_diff_A", ""),
                "enum_max_abs_diff_B": enum_cmp.get("max_abs_diff_B", ""),
                "A_w_indep": A_str,
                "B_w_indep": B_str,
                "distance_union": r["distance_union"],
                "sizes_real": " ".join(map(str, r["sizes_real"])),
                "reasons": " ".join(r["core_numeric"]["reasons"] + r["exact_fraction"]["reasons"])
            })

    return {"total": len(hits), "passed_overall": passed}
