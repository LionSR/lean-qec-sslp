# run_indep_check_multi.py
import os, argparse
from indep_check_core_multi import run_indep_check_multi

def main():
    ap = argparse.ArgumentParser(description="Independent checker for multi-state subset-sum codes (with fast weight enumerator)")
    ap.add_argument("--in-json", type=str, default=os.path.join("outputs_multi", "codes_all_details_multi_allK.json"),
                    help="Searcher output JSON (with `states`)")
    ap.add_argument("--out-dir", type=str, default=os.path.join("outputs_multi", "indep_check_reports"),
                    help="Directory to write reports")
    ap.add_argument("--compare-csv", type=str, default=None,
                    help="(Optional) searcher's CSV that contains enumerators; will be compared if keys match")
    args = ap.parse_args()

    out_json = os.path.join(args.out_dir, "indep_kl_u_enum_report.json")
    out_csv  = os.path.join(args.out_dir, "indep_kl_u_enum_report.csv")

    print(f"[Independent Multi-Check] input={args.in_json}")
    if args.compare_csv:
        print(f"[Compare enumerators with] {args.compare_csv}")

    summary = run_indep_check_multi(args.in_json, out_json, out_csv, user_enum_csv=args.compare_csv)
    print(f"[Done] total={summary['total']}, passed_overall={summary['passed_overall']}")
    print(f"Reports saved to:\n  {out_json}\n  {out_csv}")

if __name__ == "__main__":
    main()
