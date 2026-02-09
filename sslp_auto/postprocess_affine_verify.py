# postprocess_affine_verify.py
# ---------------------------------------------------------------------
# Verify the affine family saved by postprocess_affine.py.
#
# Checks (for each unique hit):
#   1) The stored concrete probabilities P_fraction_list satisfy the
#      Z-marginal equalities and per-state normalization.
#   2) The stored probabilities satisfy the stored affine mapping:
#        P = mapping(free_vars)
#      where free_vars are extracted from the affine solution, and their
#      values are inferred from the stored P values.
#   3) The stored probabilities satisfy the stored region constraints
#      (derived from nonnegativity).
#
# Output: a JSON report with ok/fail counts and failure details.
# ---------------------------------------------------------------------

from __future__ import annotations

import argparse
import glob
import json
import os
from typing import Any, Dict, Iterable, List, Optional, Tuple

import sympy as sp

from sslp_affine import (
    build_full_supports,
    build_Z_marginal_system_multi,
    parse_frac,
)


def iter_jsonl(path: str) -> Iterable[Dict[str, Any]]:
    with open(path, "r", encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            try:
                yield json.loads(line)
            except Exception:
                continue


def hit_key(h: Dict[str, Any]) -> Tuple:
    return (
        int(h.get("n", -1)),
        int(h.get("m", -1)),
        int(h.get("K", -1)),
        tuple(int(x) for x in h.get("a", [])),
        tuple(int(x) for x in h.get("s_list", [])),
    )


def symtab_from_affine(aff: Dict[str, Any]) -> Dict[str, sp.Symbol]:
    """
    Create a sympy Symbol table for all variables/free_vars that might appear
    in mapping/region strings.
    """
    names = set()
    for k in ("vars_all", "free_vars", "dep_vars"):
        for v in aff.get(k, []) or []:
            names.add(str(v))
    mapping = aff.get("mapping", {}) or {}
    for v, md in mapping.items():
        if isinstance(md, dict) and "str" in md:
            s = str(md["str"])
            try:
                for tok in sp.sympify(s, evaluate=False).free_symbols:
                    names.add(str(tok))
            except Exception:
                pass
    return {name: sp.Symbol(name, real=True) for name in sorted(names)}


def build_subs_from_hit_probabilities(hit: Dict[str, Any], aff: Dict[str, Any]) -> Dict[sp.Symbol, sp.Rational]:
    """
    Build substitutions for all vars in aff["vars_all"] using hit["P_fraction_list"]
    and aff["var_meta"] (state, index).
    """
    pfl = hit.get("P_fraction_list", None)
    if not isinstance(pfl, list) or not pfl:
        raise KeyError("hit['P_fraction_list'] missing/invalid")

    var_meta = aff.get("var_meta", None)
    if not isinstance(var_meta, dict) or not var_meta:
        raise KeyError("aff['var_meta'] missing/invalid")

    subs: Dict[sp.Symbol, sp.Rational] = {}

    for vname in aff.get("vars_all", []) or []:
        vname = str(vname)
        meta = var_meta.get(vname, None)
        if not isinstance(meta, dict):
            raise KeyError(f"var_meta missing for {vname}")
        j = int(meta["state"])
        k = int(meta["index"])
        fr = parse_frac(pfl[j][k])
        subs[sp.Symbol(vname, real=True)] = sp.Rational(fr.numerator, fr.denominator)

    return subs


def infer_free_subs(
    mapping_sym: Dict[sp.Symbol, sp.Expr],
    vars_all: List[sp.Symbol],
    free_vars: List[sp.Symbol],
    subs_all: Dict[sp.Symbol, sp.Rational],
) -> Dict[sp.Symbol, sp.Expr]:
    """
    Determine a concrete assignment to free variables (including possible internal params)
    that matches the stored point subs_all.
    """
    vars_set = set(vars_all)
    free_orig = [v for v in free_vars if v in vars_set]
    params = [v for v in free_vars if v not in vars_set]

    subs_free: Dict[sp.Symbol, sp.Expr] = {}
    for v in free_orig:
        if v not in subs_all:
            raise KeyError(f"Missing value for free variable {v} in stored probabilities.")
        subs_free[v] = subs_all[v]

    if not params:
        return subs_free

    eqs: List[sp.Eq] = []
    params_set = set(params)

    for v in vars_all:
        expr = sp.simplify(mapping_sym[v].subs(subs_free) - subs_all[v])
        if expr == 0:
            continue
        if expr.free_symbols & params_set:
            eqs.append(sp.Eq(expr, 0))

    if not eqs:
        for p in params:
            subs_free[p] = sp.Rational(0)
        return subs_free

    sol_set = sp.linsolve(eqs, params)
    if not sol_set:
        raise ValueError("Failed to infer internal parameters: inconsistent equations.")
    sol_tuple = list(sol_set)[0]

    extra = set()
    for e in sol_tuple:
        extra |= set(e.free_symbols)
    extra -= set(params)
    extra_subs = {s: sp.Rational(0) for s in extra}

    for p, val in zip(params, sol_tuple):
        subs_free[p] = sp.simplify(val.subs(extra_subs))

    return subs_free


def verify_one(hit: Dict[str, Any]) -> Tuple[bool, str]:
    aff = hit.get("affine", None)
    if not isinstance(aff, dict) or not aff:
        return False, "missing affine"
    if "error" in aff:
        return False, f"affine_error: {aff.get('error')}"

    n = int(hit.get("n"))
    m = int(hit.get("m"))
    a = [int(x) for x in hit.get("a", [])]
    s_list = [int(x) for x in hit.get("s_list", [])]
    C_list = build_full_supports(n, a, m, s_list)
    vars_all_true, _, eqs_true = build_Z_marginal_system_multi(C_list)

    subs_all = build_subs_from_hit_probabilities(hit, aff)

    for eq in eqs_true:
        lhs = sp.simplify(eq.lhs.subs(subs_all))
        rhs = sp.simplify(eq.rhs.subs(subs_all))
        if sp.simplify(lhs - rhs) != 0:
            return False, f"equality_fail: {str(eq.lhs)} != {str(eq.rhs)}"

    symtab = symtab_from_affine(aff)
    vars_all = [symtab[str(v)] for v in (aff.get("vars_all") or [])]
    free_vars = [symtab[str(v)] for v in (aff.get("free_vars") or [])]

    mapping_sym: Dict[sp.Symbol, sp.Expr] = {}
    mapping = aff.get("mapping", {}) or {}
    for vname, md in mapping.items():
        if not isinstance(md, dict) or "str" not in md:
            continue
        v = symtab[str(vname)]
        mapping_sym[v] = sp.simplify(sp.sympify(md["str"], locals=symtab))

    subs_free = infer_free_subs(mapping_sym, vars_all, free_vars, subs_all)

    for v in vars_all:
        if v not in mapping_sym:
            return False, f"mapping_missing_var: {v}"
        diff = sp.simplify(mapping_sym[v].subs(subs_free) - subs_all[v])
        if diff != 0:
            return False, f"mapping_fail: {v} -> {mapping_sym[v]}"

    reg = aff.get("region", {}) or {}
    kind = reg.get("kind", None)
    if kind == "bool":
        if reg.get("data") is False:
            return False, "region_false"
    elif kind == "expr":
        expr_str = reg.get("data", {}).get("str", "True")
        expr = sp.sympify(expr_str, locals=symtab)
        val = sp.simplify(expr.subs(subs_free))
        if val != True:  # noqa: E712
            return False, f"region_fail: {expr_str}"
    elif kind == "list":
        data = reg.get("data", []) or []
        for d in data:
            expr_str = d.get("str", None) if isinstance(d, dict) else None
            if not expr_str:
                continue
            expr = sp.sympify(expr_str, locals=symtab)
            val = sp.simplify(expr.subs(subs_free))
            if val != True:  # noqa: E712
                return False, f"region_fail: {expr_str}"
    else:
        return False, f"region_unknown_kind: {kind}"

    return True, "ok"


def process_one_file(path: str, limit: Optional[int] = None) -> Dict[str, Any]:
    seen = set()
    total = 0
    ok = 0
    fail = 0
    fails: List[Dict[str, Any]] = []

    for idx, hit in enumerate(iter_jsonl(path), start=1):
        if limit is not None and idx > limit:
            break

        k = hit_key(hit)
        if k in seen:
            continue
        seen.add(k)

        total += 1
        good, msg = verify_one(hit)
        if good:
            ok += 1
        else:
            fail += 1
            fails.append({"key": list(k), "reason": msg})

        if idx % 200 == 0:
            print(f"[{os.path.basename(path)}] verified {idx} | ok={ok} fail={fail}")

    return {"path": path, "total": total, "ok": ok, "fail": fail, "fails": fails}


def main() -> None:
    ap = argparse.ArgumentParser(description="Verify affine solutions in *_affine.jsonl")
    ap.add_argument("--in", dest="in_pattern", required=True,
                    help="Input affine jsonl path or glob, e.g. outputs_multi/K*/codes_all_details_multi_affine.jsonl")
    ap.add_argument("--out", dest="out_path", required=True,
                    help="Output report path (json)")
    ap.add_argument("--limit", type=int, default=None, help="Verify at most N lines per file (debug).")
    args = ap.parse_args()

    paths = sorted(glob.glob(args.in_pattern)) if any(ch in args.in_pattern for ch in "*?[]") else [args.in_pattern]
    if not paths:
        raise SystemExit(f"No files matched: {args.in_pattern}")

    reports = []
    total = ok = fail = 0

    for p in paths:
        if not os.path.exists(p):
            print(f"[skip] not found: {p}")
            continue
        rep = process_one_file(p, limit=args.limit)
        reports.append(rep)
        total += rep["total"]
        ok += rep["ok"]
        fail += rep["fail"]

    out = {"files": len(reports), "total": total, "ok": ok, "fail": fail, "reports": reports}
    d = os.path.dirname(args.out_path)
    if d:
        os.makedirs(d, exist_ok=True)
    with open(args.out_path, "w", encoding="utf-8") as f:
        json.dump(out, f, ensure_ascii=False, indent=2)
    print(f"[saved] {args.out_path}")


if __name__ == "__main__":
    main()
