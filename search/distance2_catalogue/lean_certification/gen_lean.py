"""
Generate Lean certificate files for the deduplicated catalogue of 14,116
distance-2 codes.

For each canonical code we emit a definition
    def code_i : ExampleData n m K := { a, S, supp, prob, targetZ }
and, depending on --mode, a certificate:
    native : theorem code_i_ok : code_i.OK := by native_decide
    split  : theorem code_i_ok : code_i.OK := by refine <..>; decide/decide/native/native
             (support + residue-shift screen inside the kernel; norm + Z-type KL native)
    packed : no per-code theorem; instead one theorem per chunk
                 chunk_all_ok : checks.all id = true := by native_decide
             (checks = [decide code_0.OK, ...]) plus an umbrella AllOk.lean whose
             single theorem catalogue_all_ok conjoins all chunks -> all 14,116 codes.
    pure   : no native_decide at all. Support and screen by kernel `decide`; the two
             conjuncts that aggregate rationals are *proved* by norm_num rather than
             decided, since the kernel does not reduce Rat.add / Rat.blt in practice.
             Each chunk also ends with `#print axioms code_i_qec` for every code, so
             the compile log records the trust base code by code.

Except in packed mode every code also gets

    theorem code_i_qec : exists psi, SS.IsAmplitudes code_i psi /\\ SS.HasDistance psi 2

via the pure-kernel bridge SS.OK_hasDistance2 (SS/BridgeD2.lean), whose two
structural side conditions are discharged in the kernel by `decide`.

Codes are grouped into chunk files (CHUNK per file); packed mode additionally
writes an umbrella importing them all.

Data source: the detailed JSON (states/prob) matched to the canonical CSV keys.
"""
import json, csv, os, glob, argparse, zipfile
from fractions import Fraction

HERE = os.path.dirname(os.path.abspath(__file__))
BASE = os.path.dirname(HERE)  # distance2_catalogue
JSON = os.path.join(BASE, "data", "codes_all_details_multi_allK", "codes_all_details_multi_allK.json")
JSONZ = os.path.join(BASE, "data", "codes_all_details_multi_allK.zip")
CSVF = os.path.join(BASE, "data", "codes_summary_multi_allK_nondegenerate.csv")

def load_details():
    """Read the detailed catalogue.

    The repository ships this file zipped (the extracted JSON is ~490 MB), so a
    fresh clone has only the archive. Read it in place if it has not been
    extracted, so that no manual unzip step is needed to reproduce the chunks.
    """
    if os.path.exists(JSON):
        with open(JSON, encoding="utf-8") as f:
            return json.load(f)
    if not os.path.exists(JSONZ):
        raise SystemExit(
            "cannot find the catalogue details; expected either\n"
            "  " + JSON + "\nor\n  " + JSONZ)
    with zipfile.ZipFile(JSONZ) as z:
        names = [n for n in z.namelist() if n.endswith(".json")]
        if len(names) != 1:
            raise SystemExit("expected exactly one .json in " + JSONZ +
                             ", found: " + repr(names))
        with z.open(names[0]) as f:
            return json.load(f)

def ket_to_bits(ket):
    # "|0011⟩" -> [False,False,True,True]
    s = ket.strip().lstrip("|").rstrip("⟩")
    return [c == "1" for c in s]

def bits_to_lean(bits):
    return "![" + ", ".join("true" if b else "false" for b in bits) + "]"

def q_to_lean(fr):
    f = Fraction(fr)
    if f.denominator == 1:
        return f"({f.numerator} : ℚ)"
    return f"(({f.numerator} : ℚ) / {f.denominator})"

def zmod_vec(vals, m):
    return "![" + ", ".join(f"({v} : ZMod {m})" for v in vals) + "]"

def gen_code(idx, e, mode="native"):
    n, m, K = int(e["n"]), int(e["m"]), int(e["K"])
    a = [int(x) % m for x in e["a"]]
    s_list = [int(x) % m for x in e["s_list"]]
    states = e["states"]  # list of K logical states; each is list of {ket, prob_fraction}
    # target Z: Z_expectations.Z_fraction[0]
    zf = e["Z_expectations"]["Z_fraction"][0]

    # per-logical-state support + prob
    supp_defs, prob_defs = [], []
    for k in range(K):
        strings = [(ket_to_bits(t["ket"]), t["prob_fraction"]) for t in states[k]]
        # support finset
        supp_elems = ", ".join(bits_to_lean(bits) for bits, _ in strings)
        supp_defs.append("{" + supp_elems + "}")
        # prob function
        lines = []
        for bits, pr in strings:
            lines.append(f"      if s = ({bits_to_lean(bits)} : BitString {n}) then {q_to_lean(pr)}")
        prob_body = "\n      else ".join(lines) + "\n      else 0"
        prob_defs.append(prob_body)

    nm = f"code_{idx}"
    out = []
    out.append(f"/-- Catalogue code #{idx}: (({n},{K},2)), m={m}, a={a}, S={s_list}. -/")
    out.append(f"def {nm} : ExampleData {n} {m} {K} where")
    out.append(f"  a := {zmod_vec(a, m)}")
    out.append(f"  S := {zmod_vec(s_list, m)}")
    out.append(f"  supp := ![{', '.join(supp_defs)}]")
    # prob: a Fin K -> BitString n -> Q, written as ![fun s => ..., ...]
    prob_funcs = []
    for k in range(K):
        prob_funcs.append("(fun s : BitString " + str(n) + " =>\n" + prob_defs[k] + ")")
    out.append("  prob := ![" + ", ".join(prob_funcs) + "]")
    out.append(f"  targetZ := ![{', '.join(q_to_lean(z) for z in zf)}]")
    if mode == "split":
        # B1 (support) and B2 (screen) discharged in the kernel by `decide`;
        # B3 (normalization) and B4 (Z-type KL) by `native_decide`.
        out.append(f"theorem {nm}_ok : {nm}.OK := by")
        out.append("  refine ⟨?_, ?_, ?_, ?_⟩")
        out.append("  · decide          -- support membership (kernel)")
        out.append("  · decide          -- residue-shift screen (kernel)")
        out.append("  · native_decide   -- normalization")
        out.append("  · native_decide   -- Z-type KL")
    elif mode == "pure":
        # Fully pure-kernel: no `native_decide` anywhere.  Support and screen are
        # decided in the kernel; normalization and the Z-type equalities are proved
        # symbolically by `norm_num`, which builds arithmetic certificates instead of
        # relying on kernel reduction of `ℚ` (which does not reduce in practice).
        out.append(f"theorem {nm}_b3 : ∀ k, IsNormalizedProb ({nm}.supp k) ({nm}.prob k) := by")
        out.append("  intro k")
        out.append("  fin_cases k <;>")
        out.append(f"    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [{nm}], ?_⟩ <;>")
        out.append(f"    norm_num [{nm}, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]")
        out.append(f"theorem {nm}_b4 : ZTypeKL' {K} {nm}.supp {nm}.prob {nm}.targetZ := by")
        out.append("  intro j i")
        out.append("  fin_cases j <;> fin_cases i <;>")
        out.append(f"    norm_num [zExpectation, zSign, {nm}, Finset.sum_insert,")
        out.append("      Finset.mem_singleton, Finset.sum_singleton]")
        out.append(f"theorem {nm}_ok : {nm}.OK := ⟨by decide, by decide, {nm}_b3, {nm}_b4⟩")
    elif mode == "packed":
        # definition only; a single per-chunk theorem certifies them all at once.
        pass
    else:
        out.append(f"theorem {nm}_ok : {nm}.OK := by native_decide")
    if mode != "packed":
        # Bridge to the Hilbert-space Knill-Laflamme conditions (SS/BridgeD2.lean).
        # The two side conditions (a_i != 0, S injective) are decidable and are
        # discharged in the kernel; the bridge theorem itself is pure-kernel.
        out.append(f"/-- Code #{idx} is a genuine distance-2 quantum code: logical states")
        out.append(f"    realizing its probabilities exist and detect every weight-1 Pauli error. -/")
        out.append(f"theorem {nm}_qec :")
        out.append(f"    ∃ ψ, SS.IsAmplitudes {nm} ψ ∧ SS.HasDistance ψ 2 :=")
        out.append(f"  SS.OK_hasDistance2 {nm} {nm}_ok (by decide) (by decide)")
    out.append("")
    return "\n".join(out)

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=0, help="0=all 14116")
    ap.add_argument("--chunk", type=int, default=500)
    ap.add_argument("--test", action="store_true", help="emit a single 2-code test file only")
    ap.add_argument("--mode", choices=["native", "split", "packed", "pure"], default="native",
                    help="native = one native_decide per code; "
                         "split = decide for support+screen, native_decide for norm+ZKL; "
                         "packed = defs only + one per-chunk `chunk_all_ok` theorem")
    ap.add_argument("--outdir", default=None,
                    help="output subdirectory (default depends on mode)")
    args = ap.parse_args()
    outdir = args.outdir or {"split": "kernel_b1b2", "packed": "packed",
                             "native": "full_native", "pure": "pure"}[args.mode]

    # canonical CSV keys in order
    keys = []
    with open(CSVF, encoding="utf-8") as f:
        for d in csv.DictReader(f):
            keys.append((int(d["n"]), int(d["m"]), int(d["K"]),
                         tuple(int(x) for x in d["a"].split()),
                         tuple(int(x) for x in d["s_list"].split())))
    data = load_details()
    jmap = {}
    for e in data:
        key = (int(e["n"]), int(e["m"]), int(e["K"]),
               tuple(int(x) for x in e["a"]), tuple(int(x) for x in e["s_list"]))
        jmap.setdefault(key, e)

    entries = [jmap[k] for k in keys]
    if args.limit:
        entries = entries[:args.limit]

    if args.test:
        body = "\n".join(gen_code(i, entries[i], mode=args.mode) for i in range(2))
        txt = ("import SS\n\nnamespace Catalogue.Test\n\nopen SS SS.Verify\n\n"
               + body + "\nend Catalogue.Test\n")
        open(os.path.join(HERE, "CatalogueTest.lean"), "w", encoding="utf-8", newline="\n").write(txt)
        print("wrote CatalogueTest.lean (2 codes)")
        return

    # full: chunk files under <outdir>/Chunks
    chunk_dir = os.path.join(HERE, outdir, "Chunks")
    os.makedirs(chunk_dir, exist_ok=True)
    # Clear the directory first. Otherwise a `--limit`ed run leaves the chunks of a
    # previous full run in place, and the build scripts would then report the whole
    # catalogue as compiling while the umbrella certifies only the truncated set.
    # Stale .log files must go too: the build scripts resume off the success marker
    # they contain.
    for stale in glob.glob(os.path.join(chunk_dir, "Chunk*.lean")) \
               + glob.glob(os.path.join(chunk_dir, "Chunk*.lean.log")) \
               + glob.glob(os.path.join(chunk_dir, "Chunk*.olean")):
        os.remove(stale)
    nchunks = 0
    chunk_names = []
    for start in range(0, len(entries), args.chunk):
        cidx = start // args.chunk
        chunk = entries[start:start + args.chunk]
        idxs = list(range(start, start + len(chunk)))
        body = "\n".join(gen_code(start + j, chunk[j], mode=args.mode) for j in range(len(chunk)))
        modname = f"Chunk{cidx:03d}"
        if args.mode == "packed":
            # one theorem per chunk certifies all its codes at once
            checks = ("def checks : List Bool :=\n  ["
                      + ",\n   ".join(f"decide code_{i}.OK" for i in idxs) + "]\n\n")
            thm = f"theorem chunk_all_ok : checks.all id = true := by native_decide\n"
            body = body + checks + thm
        hdr = "set_option maxHeartbeats 4000000\n\n" if args.mode == "pure" else ""
        # For the pure build, make the compile log itself the evidence: ask Lean to
        # report, for every single code, which axioms its QEC theorem rests on.
        audit = ""
        if args.mode == "pure":
            audit = (
                "\n-- Axiom audit: each theorem below is reported with the axioms it depends on.\n"
                "-- Expected for every entry: [propext, Classical.choice, Quot.sound].\n"
                "-- Neither `Lean.ofReduceBool` nor `Lean.trustCompiler` may appear; their absence\n"
                "-- is what certifies that no proof in this file was delegated to the compiler\n"
                "-- via `native_decide`, i.e. every step was checked by the Lean kernel.\n"
                + "".join(f"#print axioms code_{i}_qec\n" for i in idxs) + "\n")
        txt = (f"import SS\n\nnamespace Catalogue.{modname}\n\nopen SS SS.Verify\n\n" + hdr
               + body + audit + f"\nend Catalogue.{modname}\n")
        open(os.path.join(chunk_dir, f"{modname}.lean"), "w", encoding="utf-8", newline="\n").write(txt)
        chunk_names.append(modname)
        nchunks += 1
    if args.mode == "packed":
        # umbrella: one theorem asserting every chunk certifies (hence all 14,116)
        imports = "\n".join(
            f"import search.distance2_catalogue.lean_certification.packed.Chunks.{m}"
            for m in chunk_names)
        conj = " ∧\n    ".join(f"Catalogue.{m}.checks.all id = true" for m in chunk_names)
        allok = ("/-- The entire distance-2 catalogue is certified: every chunk's "
                 "`chunk_all_ok` holds,\n    hence all "
                 f"{len(entries)} codes satisfy `ExampleData.OK`. -/\n"
                 "theorem catalogue_all_ok :\n    " + conj + " :=\n  ⟨"
                 + ", ".join(f"Catalogue.{m}.chunk_all_ok" for m in chunk_names) + "⟩\n")
        umb = imports + "\n\nnamespace Catalogue\n\n" + allok + "\nend Catalogue\n"
        open(os.path.join(HERE, outdir, "AllOk.lean"), "w", encoding="utf-8", newline="\n").write(umb)
    print(f"[{args.mode}] wrote {nchunks} chunk files ({len(entries)} codes) to {outdir}/Chunks"
          + (" + AllOk.lean umbrella" if args.mode == "packed" else ""))

if __name__ == "__main__":
    main()
