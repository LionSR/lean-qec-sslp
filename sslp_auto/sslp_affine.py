# sslp_affine.py
# ---------------------------------------------------------------------
# FULL VARIABLE SPACE:
#   Derive an affine general solution for the Z-marginal equalities
#   (and per-state normalization), then derive the feasible region from
#   nonnegativity constraints.
#
# Important:
#   - "Full variable space" means: for each logical state j, we include
#     *all* bitstrings in C_j = {x in {0,1}^n : <a,x> mod m == s_j}
#     in the variable list, not only the nonzero terms shown in hit["states"].
#   - This avoids the common pitfall where the reduced (nonzero-only) support
#     makes the affine family appear to have free_dim=0.
# ---------------------------------------------------------------------

from __future__ import annotations

import re
from fractions import Fraction
from itertools import product
from typing import Any, Dict, List, Tuple, Union

import sympy as sp
from sympy.solvers.inequalities import reduce_inequalities


# --------------------------
# Basic helpers
# --------------------------

def z_sign(bitstring: str, i: int) -> int:
    """Eigenvalue of Z_i on |bitstring>: +1 for 0, -1 for 1."""
    return 1 if bitstring[i] == "0" else -1


def ket_to_bitstring(s: str) -> str:
    """
    Robustly extract a 0/1 bitstring from strings like:
      "|0101⟩", "ket{0101}", "| 0101 >", etc.
    Strategy: take the longest [01]+ substring.
    """
    ss = str(s)
    groups = re.findall(r"[01]+", ss)
    if not groups:
        raise ValueError(f"Cannot parse bitstring from: {s!r}")
    groups.sort(key=len, reverse=True)
    return groups[0]


def parse_frac(x: Any) -> Fraction:
    """Parse 'a/b', int, Fraction, float, or numeric strings into Fraction."""
    if isinstance(x, Fraction):
        return x
    if isinstance(x, int):
        return Fraction(x, 1)
    if isinstance(x, float):
        return Fraction(x).limit_denominator(10**12)
    s = str(x).strip()
    if s == "":
        return Fraction(0, 1)
    return Fraction(s)


def frac_to_sympy(fr: Fraction) -> sp.Rational:
    return sp.Rational(fr.numerator, fr.denominator)


# --------------------------
# Full supports from (n,m,a,s_list)
# --------------------------

def build_full_supports(n: int, a: List[int], m: int, s_list: List[int]) -> List[List[str]]:
    """
    Build full coset supports:
      C_j = { x in {0,1}^n : sum_i a_i x_i mod m == s_list[j] }

    Ordering matches the natural lexicographic order induced by
    itertools.product([0,1], repeat=n), i.e. binary counting with the
    leftmost bit as MSB.
    """
    if n <= 0:
        raise ValueError("n must be positive.")
    if m <= 0:
        raise ValueError("m must be positive.")
    if len(a) != n:
        raise ValueError(f"len(a) must equal n; got len(a)={len(a)} n={n}")
    if not s_list:
        raise ValueError("s_list must be non-empty.")

    all_bits = [''.join(str(b) for b in tup) for tup in product([0, 1], repeat=n)]

    C_list: List[List[str]] = []
    for s in s_list:
        ss = int(s) % int(m)
        Cj = []
        for bs in all_bits:
            acc = 0
            for i, ch in enumerate(bs):
                if ch == "1":
                    acc += int(a[i])
            if acc % m == ss:
                Cj.append(bs)
        if not Cj:
            raise ValueError(f"Empty support for s={s} (mod m={m}); unexpected.")
        C_list.append(Cj)

    return C_list


# --------------------------
# Extract supports from hit["states"] (nonzero-only) -- kept for debugging
# --------------------------

def extract_supports_from_hit_states(hit: Dict[str, Any]) -> List[List[str]]:
    """
    Extract per-logical-state nonzero supports from hit["states"].
    This is *not* the "full variable space" support.
    """
    states = hit.get("states", None)
    if not isinstance(states, list) or len(states) == 0:
        raise KeyError("hit['states'] missing or invalid; cannot extract supports.")
    C_list: List[List[str]] = []
    for terms in states:
        if not isinstance(terms, list):
            raise ValueError("hit['states'] must be list of list.")
        bits: List[str] = []
        for t in terms:
            if isinstance(t, dict) and "ket" in t:
                bits.append(ket_to_bitstring(t["ket"]))
        uniq = sorted(set(bits))
        if not uniq:
            raise ValueError("Empty support extracted from hit['states']; unexpected.")
        C_list.append(uniq)

    n0 = len(C_list[0][0])
    for j in range(len(C_list)):
        for b in C_list[j]:
            if len(b) != n0:
                raise ValueError("Inconsistent bitstring lengths across supports.")
    return C_list


# --------------------------
# Build Z-marginal linear system (multi-K)
# --------------------------

def build_Z_marginal_system_multi(
    C_list: List[List[str]],
) -> Tuple[List[sp.Symbol], Dict[sp.Symbol, Tuple[int, int, str]], List[sp.Eq]]:
    """
    Build linear equalities:
      For each qubit i: <0|Z_i|0> = <j|Z_i|j> for all j=1..K-1
    plus per-state normalizations:
      sum_{x in C_j} P_{j,x} = 1 for each j

    Variables: P{j}_k for k=0..|C_j|-1, with var_meta[var]=(j,k,bitstring).
    """
    K = len(C_list)
    if K < 2:
        raise ValueError("Need at least 2 logical states (K>=2).")
    n = len(C_list[0][0])

    vars_all: List[sp.Symbol] = []
    var_meta: Dict[sp.Symbol, Tuple[int, int, str]] = {}
    blocks: List[Tuple[sp.Symbol, ...]] = []

    for j in range(K):
        pj = sp.symbols(f"P{j}_0:{len(C_list[j])}", real=True)
        blocks.append(pj)
        for k, v in enumerate(pj):
            vars_all.append(v)
            var_meta[v] = (j, k, C_list[j][k])

    eqs: List[sp.Eq] = []
    for i in range(n):
        lhs0 = sum(blocks[0][k] * z_sign(C_list[0][k], i) for k in range(len(C_list[0])))
        for j in range(1, K):
            rhsj = sum(blocks[j][k] * z_sign(C_list[j][k], i) for k in range(len(C_list[j])))
            eqs.append(sp.Eq(lhs0, rhsj))

    for j in range(K):
        eqs.append(sp.Eq(sum(blocks[j]), 1))

    return vars_all, var_meta, eqs


# --------------------------
# Affine solve
# --------------------------

def solve_affine_equalities_auto(
    eqs: List[sp.Eq],
    vars_all: List[sp.Symbol],
) -> Tuple[Dict[sp.Symbol, sp.Expr], List[sp.Symbol], List[sp.Symbol]]:
    """
    Solve A x = b exactly using SymPy's linsolve.

    mapping[var] is an affine expression in free variables.
    free_vars may include:
      - some original variables left free (mapping[v] == v),
      - internal parameters (tau0, tau1, ...) if SymPy introduces them.

    dep_vars are vars_all excluding original free vars (NOT including tau's).
    """
    sol_set = sp.linsolve(eqs, vars_all)
    if not sol_set:
        raise ValueError("No solutions: linear constraints inconsistent.")
    sol_tuple = list(sol_set)[0]
    mapping: Dict[sp.Symbol, sp.Expr] = {v: sp.simplify(expr) for v, expr in zip(vars_all, sol_tuple)}

    free_orig = [v for v in vars_all if sp.simplify(mapping[v] - v) == 0]

    all_syms = set()
    for expr in sol_tuple:
        all_syms |= set(expr.free_symbols)
    params = sorted(list(all_syms - set(vars_all)), key=str)

    free_vars: List[sp.Symbol] = []
    seen = set()
    for v in free_orig + params:
        if v not in seen:
            free_vars.append(v)
            seen.add(v)

    dep_vars = [v for v in vars_all if v not in free_orig]
    return mapping, free_vars, dep_vars


# --------------------------
# Inequality canonicalization (optional pruning)
# --------------------------

def canonicalize_linear_inequalities(ineqs: List[sp.Expr], free_vars: List[sp.Symbol]) -> List[sp.Expr]:
    """
    Canonicalize linear inequalities into a·t <= b for those that are linear
    in free_vars. Remove duplicates / keep tightest bound per direction a.
    """
    if not free_vars:
        return ineqs

    best: Dict[Tuple[int, ...], sp.Expr] = {}
    extra: List[sp.Expr] = []

    for ineq in ineqs:
        if isinstance(ineq, sp.GreaterThan):
            g = sp.expand(-(ineq.lhs - ineq.rhs))
        elif isinstance(ineq, sp.LessThan):
            g = sp.expand(ineq.lhs - ineq.rhs)
        else:
            extra.append(ineq)
            continue

        c0 = sp.expand(g.subs({v: 0 for v in free_vars}))
        coeffs = [sp.expand(sp.diff(g, v)) for v in free_vars]

        if sp.simplify(g - (c0 + sum(ci * vi for ci, vi in zip(coeffs, free_vars)))) != 0:
            extra.append(ineq)
            continue

        a = tuple(sp.nsimplify(ci, rational=True) for ci in coeffs)
        b = sp.nsimplify(-c0, rational=True)

        denoms = [sp.denom(ai) for ai in a if ai != 0]
        lcm = 1
        for d in denoms:
            lcm = sp.ilcm(lcm, int(d))

        a_int = [int(ai * lcm) for ai in a]
        g_gcd = 0
        for val in a_int:
            g_gcd = sp.igcd(g_gcd, abs(val))

        if g_gcd == 0:
            extra.append(ineq)
            continue

        a_int = [val // g_gcd for val in a_int]
        b_can = sp.nsimplify(b * lcm / g_gcd, rational=True)
        key = tuple(a_int)

        if key in best:
            if b_can < best[key]:
                best[key] = b_can
        else:
            best[key] = b_can

    out: List[sp.Expr] = []
    for a_int, b in best.items():
        expr = sum(sp.Rational(ai) * v for ai, v in zip(a_int, free_vars))
        out.append(sp.Le(expr, b))
    out.extend(extra)
    return sorted(out, key=lambda inq: sp.srepr(inq))


def rewrite_single_var_bounds(ineq: sp.Expr) -> sp.Expr:
    """Rewrite inequalities like -t <= 1/7 into t >= -1/7 for nicer display."""
    if not isinstance(ineq, sp.LessThan):
        return ineq
    lhs, rhs = sp.expand(ineq.lhs), sp.expand(ineq.rhs)
    syms = list(lhs.free_symbols)
    if len(syms) != 1:
        return ineq
    v = syms[0]
    a = sp.expand(sp.diff(lhs, v))
    c = sp.expand(lhs.subs({v: 0}))
    if sp.simplify(lhs - (a * v + c)) != 0:
        return ineq
    rhs2 = sp.simplify(rhs - c)
    if isinstance(a, sp.Rational) and a != 0:
        if a > 0:
            return sp.Le(v, sp.simplify(rhs2 / a))
        else:
            return sp.Ge(v, sp.simplify(rhs2 / a))
    return ineq


# --------------------------
# Region derivation
# --------------------------

def derive_region_from_nonnegativity(
    mapping: Dict[sp.Symbol, sp.Expr],
    vars_all: List[sp.Symbol],
    free_vars: List[sp.Symbol],
) -> Union[sp.Expr, List[sp.Expr], bool]:
    """
    Region defined by:
      mapping[var] >= 0 for all vars

    Return:
      - bool True/False if free_dim==0
      - a simplified SymPy boolean expression if free_dim==1 (via reduce_inequalities)
      - otherwise, a pruned list of inequalities
    """
    ineqs = [sp.Ge(mapping[v], 0) for v in vars_all]
    ineqs = [sp.simplify(i) for i in ineqs if i != True]  # noqa: E712

    if not free_vars:
        for i in ineqs:
            if sp.simplify(i) == False:  # noqa: E712
                return False
        return True

    ineqs2 = canonicalize_linear_inequalities(ineqs, free_vars)
    ineqs2 = [rewrite_single_var_bounds(i) for i in ineqs2]

    seen = set()
    uniq: List[sp.Expr] = []
    for i in ineqs2:
        s = sp.srepr(i)
        if s not in seen:
            seen.add(s)
            uniq.append(i)

    if len(free_vars) == 1:
        t = free_vars[0]
        try:
            return sp.simplify(reduce_inequalities(uniq, t))
        except Exception:
            return uniq

    return uniq


# --------------------------
# Serialization helpers
# --------------------------

def _ser_expr(expr: sp.Expr) -> Dict[str, str]:
    return {
        "str": str(expr),
        "srepr": sp.srepr(expr),
        "latex": sp.latex(expr),
    }


def _ser_eq(eq: sp.Eq) -> Dict[str, Dict[str, str]]:
    return {"lhs": _ser_expr(eq.lhs), "rhs": _ser_expr(eq.rhs)}


def serialize_region(region: Union[sp.Expr, List[sp.Expr], bool]) -> Dict[str, Any]:
    if isinstance(region, bool):
        return {"kind": "bool", "data": region}
    if isinstance(region, list):
        return {"kind": "list", "data": [_ser_expr(r) for r in region]}
    return {"kind": "expr", "data": _ser_expr(region)}


# --------------------------
# Main API used by postprocess scripts
# --------------------------

def solve_affine_from_hit(hit: Dict[str, Any]) -> Tuple[Dict[sp.Symbol, sp.Expr], Dict[str, Any]]:
    """
    Compute full-variable-space affine family for a hit.
    Returns:
      mapping (sympy), affine_ser (json-serializable)
    """
    n = int(hit.get("n"))
    m = int(hit.get("m"))
    a = [int(x) for x in hit.get("a", [])]
    s_list = [int(x) for x in hit.get("s_list", [])]
    if not a or not s_list:
        raise KeyError("hit must contain fields: n, m, a, s_list")

    C_list = build_full_supports(n, a, m, s_list)

    vars_all, var_meta, eqs = build_Z_marginal_system_multi(C_list)
    mapping, free_vars, dep_vars = solve_affine_equalities_auto(eqs, vars_all)
    region = derive_region_from_nonnegativity(mapping, vars_all, free_vars)

    affine_ser: Dict[str, Any] = {
        "free_vars": [str(v) for v in free_vars],
        "dep_vars": [str(v) for v in dep_vars],
        "vars_all": [str(v) for v in vars_all],
        "var_meta": {
            str(v): {"state": int(j), "index": int(k), "bitstring": bs}
            for v, (j, k, bs) in var_meta.items()
        },
        "mapping": {str(v): _ser_expr(mapping[v]) for v in vars_all},
        "region": serialize_region(region),
        "eqs": [_ser_eq(eq) for eq in eqs],
    }

    sizes = hit.get("sizes", None)
    if isinstance(sizes, list) and len(sizes) == len(C_list):
        affine_ser["sizes_full"] = [len(Cj) for Cj in C_list]
        affine_ser["sizes_hit"] = [int(x) for x in sizes]
        affine_ser["sizes_match"] = (affine_ser["sizes_full"] == affine_ser["sizes_hit"])

    return mapping, affine_ser
