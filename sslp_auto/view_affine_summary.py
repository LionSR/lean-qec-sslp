# view_affine_summary.py
# ---------------------------------------------------------------------
# Pretty-print affine general solutions from *_affine.jsonl into Markdown.
#
# Goals:
#   - Show the general solution in FULL variable space (all P_{j,k} variables),
#     grouped by logical state Cj as X_{bitstring} = expr
#   - Show region constraints cleanly (one per line), avoiding raw dict dumps
#   - Produce Markdown that renders correctly in VS Code Preview
#
# Usage:
#   python view_affine_summary.py --in "outputs_multi/K4/codes_all_details_multi_affine.jsonl" \
#       --out "outputs_multi/K4/affine_summary.md" --start 0 --max 20
#
# Generate all the results
#   cd sslp_n456_k234_m20_sub_v2/codes
#   $n = (Get-Content "outputs_multi/K4/codes_all_details_multi_affine.jsonl").Count; python view_affine_summary.py --in "outputs_multi/K4/codes_all_details_multi_affine.jsonl" --out "outputs_multi/K4/affine_summary.md" --start 0 --max $n

# ---------------------------------------------------------------------

from __future__ import annotations

import argparse
import json
import os
from typing import Any, Dict, Iterable, List, Optional, Tuple


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


def hit_params_line(hit: Dict[str, Any]) -> str:
    n = hit.get("n", None)
    m = hit.get("m", None)
    K = hit.get("K", None)
    a = hit.get("a", None)
    s_list = hit.get("s_list", None)
    sizes = hit.get("sizes", None)
    order = hit.get("order", None)
    return f"n={n}, m={m}, K={K}, a={a}, s_list={s_list}, sizes={sizes}, order={order}"


def _extract_str_from_obj(obj: Any) -> str:
    """Best-effort get a readable string from the serialized expr/ineq object."""
    if obj is None:
        return ""
    if isinstance(obj, str):
        return obj.strip()
    if isinstance(obj, dict):
        # common format: {"str": "...", "srepr": "...", "latex": "..."}
        if "str" in obj and isinstance(obj["str"], str):
            return obj["str"].strip()
        if "latex" in obj and isinstance(obj["latex"], str):
            return obj["latex"].strip()
        if "srepr" in obj and isinstance(obj["srepr"], str):
            return obj["srepr"].strip()
        # fallback
        try:
            return json.dumps(obj, ensure_ascii=False)
        except Exception:
            return str(obj)
    return str(obj).strip()


def _split_region_expr_to_lines(s: str) -> List[str]:
    """Split 'a & b & c' into ['a','b','c'] for readability."""
    s = (s or "").strip()
    if not s:
        return []
    # normalize sympy lowercase booleans
    if s in ("true", "True"):
        return ["True"]
    if s in ("false", "False"):
        return ["False"]

    # Split by '&' (your serializer uses ' & ' for reduce_inequalities output)
    if "&" in s:
        parts = [p.strip() for p in s.split("&")]
        parts = [p for p in parts if p]
        return parts if parts else [s]
    return [s]


def extract_region_lines(region_obj: Any) -> List[str]:
    """
    region in your jsonl is usually serialized as:
      {"kind":"expr","data":{"str":"...", ...}}
    or:
      {"kind":"list","data":[{"str":"...", ...}, ...]}
    We convert it to a list of printable lines.
    """
    if region_obj is None:
        return ["(missing)"]

    # serialized wrapper
    if isinstance(region_obj, dict) and "kind" in region_obj and "data" in region_obj:
        kind = region_obj.get("kind", "")
        data = region_obj.get("data", None)
        if kind == "expr":
            s = _extract_str_from_obj(data)
            return _split_region_expr_to_lines(s) or ["(empty expr)"]
        if kind == "list":
            lines: List[str] = []
            if isinstance(data, list):
                for it in data:
                    lines.append(_extract_str_from_obj(it))
            else:
                lines.append(_extract_str_from_obj(data))
            # also split any '&' that slipped in
            out: List[str] = []
            for ln in lines:
                out.extend(_split_region_expr_to_lines(ln))
            return [x for x in out if x] or ["(empty list)"]

        # fallback: still try to extract str
        s = _extract_str_from_obj(region_obj)
        return _split_region_expr_to_lines(s) or ["(unparsed)"]

    # raw list / raw string
    if isinstance(region_obj, list):
        out: List[str] = []
        for it in region_obj:
            out.extend(_split_region_expr_to_lines(_extract_str_from_obj(it)))
        return [x for x in out if x] or ["(empty)"]

    if isinstance(region_obj, str):
        return _split_region_expr_to_lines(region_obj) or ["(empty)"]

    return _split_region_expr_to_lines(_extract_str_from_obj(region_obj)) or ["(unparsed)"]


def pretty_list(xs: Any) -> str:
    """Print list like [a, b, c] without quotes."""
    if not isinstance(xs, list):
        return "[]"
    return "[" + ", ".join(str(x) for x in xs) + "]"


def md_inline_code(s: Any) -> str:
    """
    Wrap text as inline code and handle rare backtick collisions safely.
    This avoids markdown parser issues for symbols like _, *, <, >, |, etc.
    """
    text = str(s).replace("\r", " ").replace("\n", " ").strip()
    fence = "`"
    while fence in text:
        fence += "`"
    return f"{fence}{text}{fence}"


def state_letter(j: int) -> str:
    # match your example style
    letters = "XYZWUVTSPQRNMKJHGFEDCBA"
    return letters[j] if 0 <= j < len(letters) else f"C{j}"


def build_prob_lines(affine: Dict[str, Any]) -> List[str]:
    """
    Build:
      Probabilities on C0 (X):
        X_{bitstring} = expr
    using affine["var_meta"] and affine["mapping"].
    """
    var_meta = affine.get("var_meta", {})
    mapping = affine.get("mapping", {})
    if not isinstance(var_meta, dict) or not isinstance(mapping, dict):
        return ["(missing var_meta/mapping)"]

    # group by state index
    by_state: Dict[int, List[Tuple[str, str, str]]] = {}
    for vname, meta in var_meta.items():
        if not isinstance(meta, dict):
            continue
        st = meta.get("state", None)
        bit = meta.get("bitstring", None)
        if st is None or bit is None:
            continue
        try:
            st_i = int(st)
        except Exception:
            continue

        expr_obj = mapping.get(vname, None)
        expr_str = ""
        if isinstance(expr_obj, dict):
            expr_str = expr_obj.get("str", "") or _extract_str_from_obj(expr_obj)
        else:
            expr_str = _extract_str_from_obj(expr_obj)

        by_state.setdefault(st_i, []).append((str(bit), str(vname), str(expr_str)))

    lines: List[str] = []
    for st_i in sorted(by_state.keys()):
        L = state_letter(st_i)
        items = sorted(by_state[st_i], key=lambda t: (len(t[0]), t[0], t[1]))
        lines.append(f"Probabilities on C{st_i} ({L}):")
        for bit, _vname, expr in items:
            lines.append(f"{L}_{{{bit}}} = {expr}")
    return lines


def append_collapsible_section(
    out: List[str],
    summary: str,
    body_lines: List[str],
    *,
    open_by_default: bool = True,
) -> None:
    """Append one markdown <details> section."""
    open_attr = " open" if open_by_default else ""
    out.append(f"<details{open_attr}>")
    out.append(f"<summary><strong>{summary}</strong></summary>")
    out.append("")
    out.extend(body_lines)
    out.append("")
    out.append("</details>")
    out.append("")


def render_one_hit(hit: Dict[str, Any], hit_idx: int) -> str:
    affine = hit.get("affine", {})
    out: List[str] = []
    out.append(f"## Hit {hit_idx}")
    out.append("")
    out.append("<details open>")
    out.append(f"<summary><strong>Hit {hit_idx}</strong> (click to expand/collapse)</summary>")
    out.append("")

    if not isinstance(affine, dict):
        append_collapsible_section(
            out,
            "Affine",
            [f"**Affine:** {md_inline_code('(invalid or missing)')}"],
            open_by_default=True,
        )
        out.append("</details>")
        out.append("")
        return "\n".join(out)

    if "error" in affine:
        append_collapsible_section(
            out,
            "Affine error",
            [f"**Affine error:** {md_inline_code(affine.get('error'))}"],
            open_by_default=True,
        )
        out.append("</details>")
        out.append("")
        return "\n".join(out)

    free_vars = affine.get("free_vars", [])
    region_obj = affine.get("region", None)

    append_collapsible_section(
        out,
        "Parameters",
        [f"**Parameters:** {md_inline_code(hit_params_line(hit))}"],
        open_by_default=False,
    )

    append_collapsible_section(
        out,
        "Free variables",
        [f"**Free variables:** {md_inline_code(pretty_list(free_vars))}"],
        open_by_default=False,
    )

    region_body = ["**Region constraints:**"]
    for ln in extract_region_lines(region_obj):
        region_body.append(f"- {md_inline_code(ln)}")
    append_collapsible_section(
        out,
        "Region constraints",
        region_body,
        open_by_default=False,
    )

    prob_lines = build_prob_lines(affine)
    if prob_lines:
        cur_header: Optional[str] = None
        cur_items: List[str] = []
        groups: List[Tuple[str, List[str]]] = []

        for ln in prob_lines:
            ln = ln.strip()
            if not ln:
                continue
            if ln.startswith("Probabilities on C") and ln.endswith(":"):
                if cur_header is not None:
                    groups.append((cur_header, cur_items))
                cur_header = ln
                cur_items = []
            else:
                cur_items.append(ln)

        if cur_header is not None:
            groups.append((cur_header, cur_items))

        if groups:
            for header, items in groups:
                body = [f"**{header}**"]
                for item in items:
                    body.append(f"- {md_inline_code(item)}")
                append_collapsible_section(
                    out,
                    header[:-1] if header.endswith(":") else header,
                    body,
                    open_by_default=False,
                )
        else:
            append_collapsible_section(
                out,
                "Probabilities",
                [f"- {md_inline_code('(none)')}"],
                open_by_default=False,
            )
    else:
        append_collapsible_section(
            out,
            "Probabilities",
            ["**Probabilities:**", f"- {md_inline_code('(none)')}"],
            open_by_default=False,
        )

    out.append("</details>")
    out.append("")
    out.append("---")
    out.append("")
    return "\n".join(out)


def main() -> None:
    ap = argparse.ArgumentParser(description="View affine general-solution summary as Markdown.")
    ap.add_argument("--in", dest="in_path", required=True, help="Input *_affine.jsonl path")
    ap.add_argument("--out", dest="out_path", required=True, help="Output .md path")
    ap.add_argument("--start", type=int, default=0, help="Start index (0-based) in the jsonl stream")
    ap.add_argument("--max", type=int, default=20, help="Max number of hits to render")
    args = ap.parse_args()

    in_path = args.in_path
    out_path = args.out_path
    start = max(0, int(args.start))
    maxn = max(0, int(args.max))

    os.makedirs(os.path.dirname(out_path) or ".", exist_ok=True)

    lines: List[str] = []
    lines.append("# Affine General-Solution Summary")
    lines.append("")
    lines.append(f"Source: `{in_path}`")
    lines.append(f"Range: start={start}, max={maxn}")
    lines.append("")

    # stream read
    count_total = 0
    count_written = 0
    for hit in iter_jsonl(in_path):
        if count_total < start:
            count_total += 1
            continue
        if count_written >= maxn:
            break
        count_written += 1
        count_total += 1
        lines.append(render_one_hit(hit, count_written))

    with open(out_path, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))

    print(f"[saved] {out_path} | rendered={count_written} (start={start})")


if __name__ == "__main__":
    main()
