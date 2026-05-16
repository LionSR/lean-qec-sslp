# postprocess_affine.py
# ---------------------------------------------------------------------
# Batch postprocess:
#   Read existing SSLP hits jsonl (unchanged search outputs),
#   compute affine general solution (FULL VARIABLE SPACE),
#   and write a NEW jsonl with an added "affine" field.
#
# This keeps the search framework untouched.
# ---------------------------------------------------------------------

from __future__ import annotations

import argparse
import glob
import json
import os
from typing import Any, Dict, Iterable, Optional, Tuple

from sslp_affine import solve_affine_from_hit


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


def append_jsonl(path: str, obj: Dict[str, Any]) -> None:
    d = os.path.dirname(path)
    if d:
        os.makedirs(d, exist_ok=True)
    with open(path, "a", encoding="utf-8") as f:
        f.write(json.dumps(obj, ensure_ascii=False) + "\n")


def hit_key(h: Dict[str, Any]) -> Tuple:
    return (
        int(h.get("n", -1)),
        int(h.get("m", -1)),
        int(h.get("K", -1)),
        tuple(int(x) for x in h.get("a", [])),
        tuple(int(x) for x in h.get("s_list", [])),
    )


def process_one_jsonl(
    in_path: str,
    out_path: str,
    overwrite: bool = False,
    limit: Optional[int] = None,
) -> None:
    if os.path.exists(out_path) and overwrite:
        os.remove(out_path)

    seen = set()
    ok = 0
    fail = 0

    for idx, hit in enumerate(iter_jsonl(in_path), start=1):
        if limit is not None and idx > limit:
            break

        k = hit_key(hit)
        if k in seen:
            continue
        seen.add(k)

        try:
            _, affine_ser = solve_affine_from_hit(hit)
            hit2 = dict(hit)
            hit2["affine"] = affine_ser
            append_jsonl(out_path, hit2)
            ok += 1
        except Exception as e:
            hit2 = dict(hit)
            hit2["affine"] = {"error": str(e)}
            append_jsonl(out_path, hit2)
            fail += 1

        if idx % 100 == 0:
            print(f"[{os.path.basename(in_path)}] processed {idx} | ok={ok} fail={fail}")

    print(f"[done] {in_path} -> {out_path} | ok={ok} fail={fail} unique={len(seen)}")


def main() -> None:
    ap = argparse.ArgumentParser(description="Postprocess SSLP hits: add affine general solutions (Scheme A, full variable space).")
    ap.add_argument("--in", dest="in_pattern", required=True,
                    help="Input jsonl path or glob, e.g. outputs_multi/K*/codes_all_details_multi.jsonl")
    ap.add_argument("--out", dest="out_path", default=None,
                    help="Output jsonl path. If omitted, create alongside input as *_affine.jsonl")
    ap.add_argument("--overwrite", action="store_true", help="Overwrite output file if exists.")
    ap.add_argument("--limit", type=int, default=None, help="Process at most N hits (debug).")
    args = ap.parse_args()

    paths = sorted(glob.glob(args.in_pattern)) if any(ch in args.in_pattern for ch in "*?[]") else [args.in_pattern]
    if not paths:
        raise SystemExit(f"No files matched: {args.in_pattern}")

    if args.out_path and len(paths) > 1:
        raise SystemExit("--out can only be used with a single --in file; use glob without --out to auto-name.")

    for p in paths:
        if not os.path.exists(p):
            print(f"[skip] not found: {p}")
            continue
        if args.out_path:
            outp = args.out_path
        else:
            base, ext = os.path.splitext(p)
            outp = base + "_affine" + ext
        process_one_jsonl(p, outp, overwrite=args.overwrite, limit=args.limit)


if __name__ == "__main__":
    main()
