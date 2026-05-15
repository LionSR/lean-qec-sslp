# sslp_search_multi.py
import os, json
from typing import List, Dict, Any, Optional, Tuple, Set
import numpy as np

from sslp_utils import (
    ensure_dir, build_supports_multi, min_hamming_distance_union,
    iterate_all_monotone_a, iterate_all_increasing_s, s_valid_against_a
)
from sslp_lp import solve_z_lp_multi_exact
from sslp_ops import build_states_from_probs_multi, verify_KL_multi, verify_transversal_U_multi
from sslp_features import (
    build_state_expansion, compute_site_expectations_multi, compute_lambda_star_from_Z_multi,
    build_state_expression_plain, build_state_expression_latex, fraction_str
)
from sslp_weight import compute_shor_laflamme_enumerators, format_enumerators_fraction
from math import gcd

# ------------------------
# Helpers: persistence
# ------------------------

def _hit_key(h: Dict[str, Any]) -> Tuple:
    return (
        int(h["n"]), int(h["m"]), int(h["K"]),
        tuple(int(x) for x in h["a"]),
        tuple(int(x) for x in h["s_list"]),
    )

def _append_jsonl(path: str, hit: Dict[str, Any]):
    ensure_dir(path)
    with open(path, "a", encoding="utf-8") as f:
        f.write(json.dumps(hit, ensure_ascii=False) + "\n")

def _load_jsonl(path: str) -> List[Dict[str, Any]]:
    if not path or not os.path.exists(path):
        return []
    out = []
    with open(path, "r", encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if not line: continue
            try:
                out.append(json.loads(line))
            except Exception:
                pass
    return out

def _load_checkpoint(ckpt_path: str) -> Optional[Dict[str, Any]]:
    if not ckpt_path or not os.path.exists(ckpt_path):
        return None
    with open(ckpt_path, "r", encoding="utf-8") as f:
        try:
            return json.load(f)
        except Exception:
            return None

def _save_checkpoint(ckpt_path: str, ckpt: Dict[str, Any]):
    
    if not ckpt_path:
        return
    ensure_dir(ckpt_path)
    with open(ckpt_path, "w", encoding="utf-8") as f:
        json.dump(ckpt, f, indent=2, ensure_ascii=False)

def _lex_leq(a1: Tuple[int, ...], s1: Tuple[int, ...], a2: Tuple[int, ...], s2: Tuple[int, ...]) -> bool:
    if a1 < a2: return True
    if a1 > a2: return False
    return s1 <= s2

# ------------------------
# Core Search 
# ------------------------

def search_all_monotone_a_distance2_multi(
    n: int, m: int, K: int,
    max_hits: Optional[int] = None,
    require_coprime_sm: bool = True,

    # resume/persistence
    jsonl_path: Optional[str] = None,
    ckpt_path: Optional[str] = None,
    resume_pair: Optional[Tuple[Tuple[int, ...], Tuple[int, ...]]] = None,
    ni: Optional[int] = None, mi: Optional[int] = None,
    seen_keys: Optional[Set[Tuple]] = None
) -> List[Dict[str, Any]]:
    hits: List[Dict[str, Any]] = []
    skip_until = resume_pair is not None
    a_resume, s_resume = resume_pair if resume_pair is not None else (None, None)

    for a in iterate_all_monotone_a(n, m):
        a_t = tuple(int(x) for x in a)

        if skip_until:
            if a_t < a_resume:
                continue
            elif a_t == a_resume:
                pass
            else:
                skip_until = False

        s_iter = iterate_all_increasing_s(m, K, require_coprime_sm=require_coprime_sm)
        for s_inc in s_iter:
            s_t = tuple(int(x) for x in s_inc)
            if resume_pair is not None and skip_until:
                if a_t == a_resume and s_t <= s_resume:
                    if ckpt_path is not None and ni is not None and mi is not None:
                        _save_checkpoint(ckpt_path, {"position": {"n_idx": ni, "m_idx": mi, "a_last": list(a_t), "s_last": list(s_t)}})
                    continue
                else:
                    skip_until = False

            s_list = [0] + list(s_t)
            if not all(s_valid_against_a(a, m, s) for s in s_t):
                if ckpt_path is not None and ni is not None and mi is not None:
                    _save_checkpoint(ckpt_path, {"position": {"n_idx": ni, "m_idx": mi, "a_last": list(a_t), "s_last": list(s_t)}})
                continue

            bits, S_list = build_supports_multi(n, a, m, s_list)
            if any(len(S)==0 for S in S_list):
                if ckpt_path is not None and ni is not None and mi is not None:
                    _save_checkpoint(ckpt_path, {"position": {"n_idx": ni, "m_idx": mi, "a_last": list(a_t), "s_last": list(s_t)}})
                continue

            dC = min_hamming_distance_union(n, S_list)
            if dC != 2:
                if ckpt_path is not None and ni is not None and mi is not None:
                    _save_checkpoint(ckpt_path, {"position": {"n_idx": ni, "m_idx": mi, "a_last": list(a_t), "s_last": list(s_t)}})
                continue

            # === LP -> Exact BFS (Fractions) ===
            sol = solve_z_lp_multi_exact(n, S_list)
            if sol is None:
                if ckpt_path is not None and ni is not None and mi is not None:
                    _save_checkpoint(ckpt_path, {"position": {"n_idx": ni, "m_idx": mi, "a_last": list(a_t), "s_last": list(s_t)}})
                continue
            Ps_frac, Ps_float = sol

            # states for verification & enumerators (float)
            psi_list = build_states_from_probs_multi(n, S_list, Ps_float, phases_list=None)
            kl = verify_KL_multi(n, psi_list, tol=1e-8)
            if not kl["ok"]:
                if ckpt_path is not None and ni is not None and mi is not None:
                    _save_checkpoint(ckpt_path, {"position": {"n_idx": ni, "m_idx": mi, "a_last": list(a_t), "s_last": list(s_t)}})
                continue

            Uok = verify_transversal_U_multi(n, a, m, [0]+list(s_t), psi_list, tol=1e-8)
            if not Uok["ok"]:
                if ckpt_path is not None and ni is not None and mi is not None:
                    _save_checkpoint(ckpt_path, {"position": {"n_idx": ni, "m_idx": mi, "a_last": list(a_t), "s_last": list(s_t)}})
                continue

            # features
            Z = compute_site_expectations_multi(n, psi_list)
            lam = compute_lambda_star_from_Z_multi(Z["Z_float"])
            expansions = [build_state_expansion(bits, S_list[j], Ps_frac[j]) for j in range(K)]

            # order
            g = m
            for s in [0]+list(s_t):
                g = gcd(g, int(s) % m)
            order_val = m // g

            # explicit expressions
            expr_plain = [build_state_expression_plain(bits, S_list[j], Ps_frac[j]) for j in range(K)]
            expr_latex = [build_state_expression_latex(bits, S_list[j], Ps_frac[j]) for j in range(K)]

            # --- weight enumerators ---
            we = compute_shor_laflamme_enumerators(psi_list)
            we_frac = format_enumerators_fraction(we["A"], we["B"])

            hit = {
                "n": n, "m": m, "K": K, "a": list(a), "s_list": [0]+list(s_t),
                "sizes": [len(S) for S in S_list],
                "P_list": [p.tolist() for p in Ps_float],
                "P_fraction_list": [[fraction_str(v) for v in Ps_frac[j]] for j in range(K)],
                "states": expansions,
                "Z_expectations": Z,
                "lambda_star": lam,
                "order": int(order_val),
                "weight_enumerator": {
                    "A_float": we["A"], "B_float": we["B"],
                    **we_frac
                },
                "logical_state_expressions": {
                    "plain": [f"|{j}_L> = {expr_plain[j]}" for j in range(K)],
                    "latex": [rf"\ket{{{j}_L}} = {expr_latex[j]}" for j in range(K)],
                },
            }

            k = _hit_key(hit)
            if seen_keys is None or k not in seen_keys:
                if jsonl_path:
                    _append_jsonl(jsonl_path, hit)
                hits.append(hit)
                if seen_keys is not None:
                    seen_keys.add(k)

            if ckpt_path is not None and ni is not None and mi is not None:
                _save_checkpoint(ckpt_path, {"position": {"n_idx": ni, "m_idx": mi, "a_last": list(a_t), "s_last": list(s_t)}})

            if max_hits is not None and len(hits) >= max_hits:
                return hits

    return hits

# ---- grid search & saving ----

def search_grid_multi(
    n_list: List[int], m_list: List[int], K: int,
    max_hits_per_pair: Optional[int] = 5,
    require_coprime_sm: bool = True,

    # resume/persistence
    resume: bool = False,
    ckpt_path: Optional[str] = None,
    jsonl_path: Optional[str] = None
) -> List[Dict[str, Any]]:
    seen_hits = _load_jsonl(jsonl_path) if jsonl_path else []
    seen_keys: Set[Tuple] = set(_hit_key(h) for h in seen_hits)

    ckpt = _load_checkpoint(ckpt_path) if resume and ckpt_path else None
    pos = (ckpt or {}).get("position", None)

    all_hits: List[Dict[str, Any]] = []

    for ni, n in enumerate(n_list):
        print(f"\n=== Searching n={n}, K={K} ===")
        for mi, m in enumerate(m_list):
            print(f"[pair] n={n}, m={m}, K={K}")

            pair_resume = None
            if pos is not None:
                n_idx = pos.get("n_idx", 0)
                m_idx = pos.get("m_idx", 0)
                if (ni < n_idx) or (ni == n_idx and mi < m_idx):
                    print("  -> skipped (already done by checkpoint)")
                    continue
                if ni == n_idx and mi == m_idx:
                    a_last = pos.get("a_last", None)
                    s_last = pos.get("s_last", None)
                    if a_last is not None and s_last is not None:
                        pair_resume = (tuple(a_last), tuple(s_last))
                        print(f"  -> resuming after a={a_last}, s_inc={s_last}")

            hs = search_all_monotone_a_distance2_multi(
                n, m, K,
                max_hits=max_hits_per_pair,
                require_coprime_sm=require_coprime_sm,
                jsonl_path=jsonl_path,
                ckpt_path=ckpt_path if resume and ckpt_path else None,
                resume_pair=pair_resume,
                ni=ni, mi=mi,
                seen_keys=seen_keys
            )
            print(f"  -> {len(hs)} new hit(s)")
            all_hits.extend(hs)

            if resume and ckpt_path is not None:
                next_ni, next_mi = ni, mi + 1
                if next_mi >= len(m_list):
                    next_ni, next_mi = ni + 1, 0
                _save_checkpoint(ckpt_path, {"position": {"n_idx": next_ni, "m_idx": next_mi, "a_last": None, "s_last": None}})

    print(f"\n[grid done] total new hits this run: {len(all_hits)}")
    return all_hits

def save_hits_json(hits: List[Dict[str, Any]], out_json: str):
    ensure_dir(out_json)
    with open(out_json, "w", encoding="utf-8") as f:
        json.dump(hits, f, indent=2, ensure_ascii=False)
    print(f"[saved] {out_json}")

def save_hits_csv_summary(hits: List[Dict[str, Any]], out_csv: str):
    """
    CSV columns now include Shor–Laflamme enumerators:
      - A_float, B_float: space-separated decimal
      - A_fraction, B_fraction: space-separated a/b (for readability)
    """
    ensure_dir(out_csv)
    import csv
    fields = [
        "n","m","K","a","s_list","sizes","order",
        "lambda_star","lambda_star_sq",
        "A_float","B_float","A_fraction","B_fraction"
    ]
    with open(out_csv, "w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=fields)
        w.writeheader()
        for h in hits:
            lam = h["lambda_star"]
            we = h.get("weight_enumerator", {})
            w.writerow({
                "n": h["n"], "m": h["m"], "K": h["K"],
                "a": " ".join(map(str, h["a"])),
                "s_list": " ".join(map(str, h["s_list"])),

                "sizes": " ".join(map(str, h["sizes"])),
                "order": h.get("order", ""),

                "lambda_star": " ".join(f"{x:.12g}" for x in lam.get("lambda_star_float", [])),
                "lambda_star_sq": " ".join(f"{x:.12g}" for x in lam.get("lambda_star_sq_float", [])),

                "A_float": " ".join(f"{x:.12g}" for x in we.get("A_float", [])),
                "B_float": " ".join(f"{x:.12g}" for x in we.get("B_float", [])),
                "A_fraction": " ".join(we.get("A_fraction", [])),
                "B_fraction": " ".join(we.get("B_fraction", [])),
            })

def aggregate_stats_per_n_m(hits: List[Dict[str, Any]]):
    stats = {}
    for h in hits:
        n = int(h["n"]); m = int(h["m"])
        stats.setdefault(n, {}).setdefault(m, 0)
        stats[n][m] += 1
    return stats

def aggregate_stats_per_n_order(hits: List[Dict[str, Any]]):
    stats = {}
    for h in hits:
        n = int(h["n"]); order = int(h.get("order", 0))
        stats.setdefault(n, {}).setdefault(order, 0)
        stats[n][order] += 1
    return stats

def aggregate_stats_per_order(hits: List[Dict[str, Any]]):
    stats = {}
    for h in hits:
        order = int(h.get("order", 0))
        stats[order] = stats.get(order, 0) + 1
    return stats

def save_logical_expressions_markdown(hits: List[Dict[str, Any]], out_md: str):
    ensure_dir(out_md)
    from math import gcd as _g
    with open(out_md, "w", encoding="utf-8") as f:
        f.write("# Subset-Sum Codes — Logical State Expressions (Markdown)\n\n")
        f.write(f"- Total codes: **{len(hits)}**\n\n")
        for idx, h in enumerate(hits, start=1):
            n = h["n"]; m = h["m"]; K = h["K"]
            a = " ".join(map(str, h["a"]))
            s_list = h["s_list"]
            sizes = h["sizes"]
            order_val = int(h.get("order", 0))

            g = m
            for s in s_list:
                g = _g(g, int(s) % m)

            f.write(f"## Code {idx}\n\n")
            f.write(f"**Parameters**  \n")
            f.write(f"- n = `{n}`, m = `{m}`, K = `{K}`  \n")
            f.write(f"- a = `{a}`  \n")
            f.write(f"- s_list = `{', '.join(map(str, s_list))}`  \n")
            f.write(f"- sizes = `{', '.join(map(str, sizes))}`  \n")
            f.write(f"- order = `m / gcd(m, s1, ..., s_(K-1)) = {m} / {g} = {order_val}`  \n\n")

            f.write(f"**Logical states (plain)**\n\n")
            for j, line in enumerate(h["logical_state_expressions"]["plain"]):
                f.write(f"- {line}\n")
            f.write("\n---\n\n")
    print(f"[saved] {out_md}")

def save_logical_expressions_latex(hits: List[Dict[str, Any]], out_tex: str):
    ensure_dir(out_tex)
    from math import gcd as _g
    with open(out_tex, "w", encoding="utf-8") as f:
        f.write(r"\documentclass[11pt]{article}" + "\n")
        f.write(r"\usepackage{amsmath,amssymb}" + "\n")
        f.write(r"\usepackage{braket}" + "\n")
        f.write(r"\usepackage[margin=1in]{geometry}" + "\n")
        f.write(r"\begin{document}" + "\n")
        f.write(r"\section*{Subset-Sum Codes --- Logical State Expressions (LaTeX)}" + "\n")
        f.write(rf"\noindent Total codes: {len(hits)}\par\medskip" + "\n\n")

        for idx, h in enumerate(hits, start=1):
            n = h["n"]; m = h["m"]; K = h["K"]
            a_vec = "(" + ", ".join(map(str, h["a"])) + ")"
            s_list = h["s_list"]
            sizes = h["sizes"]
            order_val = int(h.get("order", 0))

            g = m
            for s in s_list:
                g = _g(g, int(s) % m)

            f.write(rf"\section*{{Code {idx}}}" + "\n")
            f.write(r"\noindent\textbf{Parameters.}" + "\n")
            f.write(
                rf"$n={n},\; m={m},\; K={K};\quad \mathbf a={a_vec};\quad S=\{{"
                + ", ".join(map(str, s_list))
                + r"\};\quad \text{sizes}=\left("
                + ", ".join(map(str, sizes))
                + r"\right).$"
                + r"\\[4pt]" + "\n"
            )
            f.write(
                rf"$\displaystyle \text{{order}}=\frac{{m}}{{\gcd(m,s_1,\dots,s_{{K-1}})}}"
                rf"=\frac{{{m}}}{{{g}}}={order_val}.$" + "\n\n"
            )

            f.write(r"\noindent\textbf{Logical states.}" + "\n")
            for line in h["logical_state_expressions"]["latex"]:
                f.write(r"\[ " + line + r" \]" + "\n")
            f.write(r"\bigskip" + "\n\n")

        f.write(r"\end{document}" + "\n")
    print(f"[saved] {out_tex}")

__all__ = [
    "search_grid_multi", "save_hits_json", "save_hits_csv_summary",
    "aggregate_stats_per_n_m", "aggregate_stats_per_n_order", "aggregate_stats_per_order",
    "save_logical_expressions_markdown", "save_logical_expressions_latex",
    "_load_jsonl"
]
