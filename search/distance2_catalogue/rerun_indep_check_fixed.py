"""
Re-run the independent KL/U checker on the full distance-2 catalogue with the
corrected `matel_Yi` (it now carries the accumulated `factor` and uses the
standard Y phase) and the strengthened transversal-phase check.

Purpose: confirm that these corrections do NOT change the pass/fail verdict of
any of the ~111k catalogue records, i.e. that the 14,116 canonical results are
unaffected.

Usage:
    python rerun_indep_check_fixed.py [--start K] [--limit N]
Outputs a summary to stdout and writes rerun_fixed_summary.json.
"""
import json, os, sys, argparse, time, zipfile
import numpy as np
from indep_check_core_multi import check_one_hit_multi

HERE = os.path.dirname(os.path.abspath(__file__))
JSON = os.path.join(HERE, "data", "codes_all_details_multi_allK",
                    "codes_all_details_multi_allK.json")
JSONZ = os.path.join(HERE, "data", "codes_all_details_multi_allK.zip")

def load_hits(path):
    """Read the detailed catalogue.

    The repository ships this file zipped (the extracted JSON is ~490 MB), so a
    fresh clone has only the archive. Read it in place if it has not been
    extracted, so no manual unzip step is needed to reproduce the re-run.
    """
    if path is not None:
        with open(path, "r", encoding="utf-8") as f:
            return json.load(f)
    if os.path.exists(JSON):
        with open(JSON, "r", encoding="utf-8") as f:
            return json.load(f)
    if not os.path.exists(JSONZ):
        raise SystemExit("cannot find the catalogue details; expected either\n"
                         "  " + JSON + "\nor\n  " + JSONZ)
    with zipfile.ZipFile(JSONZ) as z:
        names = [n for n in z.namelist() if n.endswith(".json")]
        if len(names) != 1:
            raise SystemExit("expected exactly one .json in " + JSONZ +
                             ", found: " + repr(names))
        with z.open(names[0]) as f:
            return json.load(f)

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--in-json", default=None,
                    help="explicit path to the details JSON; by default the "
                         "shipped data/codes_all_details_multi_allK.zip is read "
                         "in place (or the extracted JSON if present)")
    ap.add_argument("--limit", type=int, default=0, help="0 = all")
    ap.add_argument("--start", type=int, default=0,
                    help="skip this many records; lets a long run be split")
    ap.add_argument("--out", default=os.path.join(HERE, "rerun_fixed_summary.json"))
    args = ap.parse_args()

    t0 = time.time()
    print(f"[load] {args.in_json or JSONZ}", flush=True)
    hits = load_hits(args.in_json)
    if args.start:
        hits = hits[args.start:]
    if args.limit:
        hits = hits[:args.limit]
    total = len(hits)
    print(f"[load] {total} hits in {time.time()-t0:.1f}s", flush=True)

    passed = 0
    failed_records = []   # any code that does NOT pass under the fixed checker
    t1 = time.time()
    for idx, h in enumerate(hits):
        try:
            r = check_one_hit_multi(h, None)
            ok = bool(r["overall_ok"])
        except Exception as e:
            ok = False
            failed_records.append({"idx": idx, "error": str(e),
                                   "n": h.get("n"), "m": h.get("m"), "K": h.get("K"),
                                   "a": h.get("a"), "s_list": h.get("s_list")})
            continue
        if ok:
            passed += 1
        else:
            failed_records.append({
                "idx": idx, "n": r["n"], "m": r["m"], "K": r["K"],
                "a": r["a"], "s_list": r["s_list"],
                "reasons": r["core_numeric"]["reasons"] + r["exact_fraction"]["reasons"],
                "KL_ok": r["core_numeric"]["KL_ok"], "U_ok": r["core_numeric"]["U_ok"],
            })
        if (idx + 1) % 5000 == 0:
            print(f"  ...{idx+1}/{total} checked, passed={passed}, "
                  f"elapsed={time.time()-t1:.0f}s", flush=True)

    src = args.in_json or (JSON if os.path.exists(JSON) else JSONZ)
    # Record the input relative to the repository, not the machine it ran on.
    try:
        repo_root = os.path.dirname(os.path.dirname(HERE))
        src = os.path.relpath(src, repo_root).replace(os.sep, "/")
    except ValueError:
        pass
    summary = {
        "input": src,
        "checker": ("indep_check_core_multi.check_one_hit_multi; matel_Yi carries the "
                    "accumulated factor and the standard Y phase, and "
                    "verify_transversal_U_multi checks the advertised phase directly"),
        "total": total,
        "passed_overall": passed,
        "failed_overall": total - passed,
        "wall_time_s": round(time.time() - t0, 1),
        "failed_records": failed_records,
    }
    with open(args.out, "w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2, ensure_ascii=False, default=lambda o: getattr(o, "tolist", lambda: str(o))())

    print(f"\n[RESULT] total={total}  passed_overall={passed}  "
          f"failed_overall={total-passed}", flush=True)
    print(f"[RESULT] wall time = {time.time()-t0:.1f}s", flush=True)
    if failed_records:
        print(f"[RESULT] {len(failed_records)} codes did NOT pass -- see {args.out}", flush=True)
    else:
        print(f"[RESULT] ALL codes pass under the corrected checker.", flush=True)

if __name__ == "__main__":
    main()
