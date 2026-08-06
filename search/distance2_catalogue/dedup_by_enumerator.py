"""
Rebuild the catalogue summary from the shipped record dump.

The sweep accepts one record per canonical parameter tuple `(n, m, K, a, s_list)`;
`data/codes_all_details_multi_allK.zip` holds all of them.  The catalogue is the
reduction of that set by the Shor-Laflamme weight enumerators `(A, B)`, which
`sslp_weight.compute_shor_laflamme_enumerators` computes and which every record
carries: two records are identified when their enumerators agree.

`A` and `B` are invariant under qubit permutations and under local unitaries, so
records with different enumerators are inequivalent codes and the reduced set is
pairwise inequivalent.  The converse fails -- two inequivalent codes can share an
enumerator -- so the reduced count is a lower bound on the number of inequivalent
codes the sweep reached, not a count of them.

Usage (from this directory):

    python dedup_by_enumerator.py                 # report the two figures
    python dedup_by_enumerator.py --write out.csv # also rebuild the summary CSV
    python dedup_by_enumerator.py --check         # compare against the shipped CSV

The record dump is read as a stream, so this runs in a few hundred MB of memory
rather than the ~5 GB a whole-file `json.load` would need.
"""
import argparse
import csv
import io
import json
import os
import zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
ZIPF = os.path.join(HERE, "data", "codes_all_details_multi_allK.zip")
SHIPPED_CSV = os.path.join(HERE, "data",
                           "codes_summary_multi_allK_nondegenerate.csv")

FIELDS = ["n", "m", "K", "a", "s_list", "sizes", "order",
          "lambda_star", "lambda_star_sq",
          "A_float", "B_float", "A_fraction", "B_fraction"]

BACKSLASH = chr(92)


def iter_records(path=ZIPF):
    """Yield the top-level objects of the pretty-printed JSON array in `path`."""
    z = zipfile.ZipFile(path)
    name = z.infolist()[0].filename
    buf = []
    depth = 0
    instr = False
    esc = False
    started = False
    with z.open(name) as fh:
        reader = io.TextIOWrapper(fh, encoding="utf-8")
        while True:
            chunk = reader.read(1 << 20)
            if not chunk:
                break
            for ch in chunk:
                if not started:
                    if ch == "{":
                        started = True
                        depth = 1
                        buf = ["{"]
                    continue
                buf.append(ch)
                if instr:
                    if esc:
                        esc = False
                    elif ch == BACKSLASH:
                        esc = True
                    elif ch == '"':
                        instr = False
                    continue
                if ch == '"':
                    instr = True
                elif ch == "{":
                    depth += 1
                elif ch == "}":
                    depth -= 1
                    if depth == 0:
                        yield json.loads("".join(buf))
                        started = False
                        buf = []


def enum_key(rec):
    we = rec["weight_enumerator"]
    return (" ".join(we.get("A_fraction", [])),
            " ".join(we.get("B_fraction", [])))


def row_of(rec):
    lam = rec["lambda_star"]
    we = rec["weight_enumerator"]
    return {
        "n": rec["n"], "m": rec["m"], "K": rec["K"],
        "a": " ".join(map(str, rec["a"])),
        "s_list": " ".join(map(str, rec["s_list"])),
        "sizes": " ".join(map(str, rec["sizes"])),
        "order": rec.get("order", ""),
        "lambda_star": " ".join(
            "%.12g" % x for x in lam.get("lambda_star_float", [])),
        "lambda_star_sq": " ".join(
            "%.12g" % x for x in lam.get("lambda_star_sq_float", [])),
        "A_float": " ".join("%.12g" % x for x in we.get("A_float", [])),
        "B_float": " ".join("%.12g" % x for x in we.get("B_float", [])),
        "A_fraction": we.get("A_fraction", []) and " ".join(we["A_fraction"]),
        "B_fraction": we.get("B_fraction", []) and " ".join(we["B_fraction"]),
    }


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--write", metavar="CSV",
                    help="write the reduced summary to this path")
    ap.add_argument("--check", action="store_true",
                    help="compare the reduced set against the shipped CSV")
    args = ap.parse_args()

    seen = {}
    hit_keys = set()
    total = 0
    for rec in iter_records():
        total += 1
        hit_keys.add((rec["n"], rec["m"], rec["K"],
                      tuple(rec["a"]), tuple(rec["s_list"])))
        k = enum_key(rec)
        if k not in seen:
            seen[k] = row_of(rec)

    print("accepted records                    : %d" % total)
    print("distinct (n, m, K, a, s_list)       : %d" % len(hit_keys))
    print("distinct weight enumerators (A, B)  : %d" % len(seen))

    if args.write:
        with open(args.write, "w", newline="", encoding="utf-8") as f:
            w = csv.DictWriter(f, fieldnames=FIELDS)
            w.writeheader()
            for row in seen.values():
                w.writerow(row)
        print("wrote %s" % args.write)

    if args.check:
        with io.open(SHIPPED_CSV, encoding="utf-8") as f:
            shipped = set((r["A_fraction"], r["B_fraction"])
                          for r in csv.DictReader(f))
        print("shipped CSV rows                    : %d" % len(shipped))
        print("enumerator sets agree               : %s"
              % (shipped == set(seen)))


if __name__ == "__main__":
    main()
