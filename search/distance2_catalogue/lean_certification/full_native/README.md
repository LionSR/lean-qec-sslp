# full_native — certification of the full distance-2 catalogue (all 14,116 codes)

This directory contains a **complete Lean 4 certification of every one of the
14,116 deduplicated distance-2 codes** in the catalogue, not merely a set of
representative instances. It is the cheapest of the four builds: one
`native_decide` per code.

## What is certified

For each canonical code `i` the file `Chunks/ChunkNNN.lean` contains

```lean
def code_i : ExampleData n m K := { a, S, supp, prob, targetZ }

theorem code_i_ok : code_i.OK := by native_decide

theorem code_i_qec : ∃ ψ, SS.IsAmplitudes code_i ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_i code_i_ok (by decide) (by decide)
```

`ExampleData.OK` (defined in `SS/Verify.lean`) bundles four finite arithmetic
conditions:

1. subset-sum support condition for each logical state (`SSConditionSupport'`),
2. the residue-shift screen (`ResidueShiftScreen`),
3. probability normalization (`IsNormalizedProb`), and
4. the Z-type Knill–Laflamme equalities (`ZTypeKL'`).

`code_i_ok` on its own is the arithmetic certificate; it is `code_i_qec` that states
the quantum-error-correction property — that logical states realizing the recorded
probabilities exist and satisfy the genuine Knill–Laflamme conditions for every Pauli
error of weight ≤ 1. It is obtained through the pure-kernel bridge theorem
`SS.OK_hasDistance2` ([`SS/BridgeD2.lean`](../../../../SS/BridgeD2.lean)), which
besides `OK` also takes two decidable structural conditions on the parameters
(`∀ i, aᵢ ≠ 0` and injectivity of `S`); both are discharged in the kernel by `decide`
for every code, which is what makes `code_i_qec` unconditional.

The transversal diagonal action is *not* part of this certificate; it is checked by
the Python pipeline (`../../sslp_ops.py`, `../../indep_check_core_multi.py`).

## Coverage and provenance

- **14,116 codes**, split into **29 chunk files** of up to 500 codes each
  (`Chunks/Chunk000.lean` … `Chunks/Chunk028.lean`; 28 × 500 + 116 = 14,116).
- The codes are the canonical, deduplicated instances listed in
  [`../../data/codes_summary_multi_allK_nondegenerate.csv`](../../data/codes_summary_multi_allK_nondegenerate.csv)
  (14,116 rows).
- Each code's exact data (support strings and rational probabilities) is taken from
  the detailed catalogue, shipped zipped as
  [`../../data/codes_all_details_multi_allK.zip`](../../data/codes_all_details_multi_allK.zip)
  and read in place by the generator `gen_lean.py` — no manual unzip step needed.

## Trust base (`native_decide`)

These certificates use Lean's `native_decide`, which compiles the decision procedure
to native code and therefore trusts the Lean compiler (the axioms
`Lean.ofReduceBool` and `Lean.trustCompiler` appear in `#print axioms`).

If that trust assumption matters to you, use [`../pure/`](../pure/) instead: it
certifies the same 14,116 codes with every step checked by the Lean kernel and no
`native_decide` anywhere, at the cost of a ~3 h rather than ~5 min build. This
directory is kept because it is the fastest way to rebuild the whole catalogue.

The same codes are also independently re-checked by the Python checker
[`../../indep_check_core_multi.py`](../../indep_check_core_multi.py) (see
[`../../rerun_fixed_summary.json`](../../rerun_fixed_summary.json):
111,315 / 111,315 raw hits pass). That checker is numerical (`float64`, `1e-8`
tolerance) apart from the cross-state Z-expectation equalities, which it compares
in exact `Fraction` arithmetic — so it is an independent check by a different
method, not a second exact one.

## How to reproduce

From the repository root, with the Lean toolchain and Mathlib cache available:

```bash
# (re)generate the chunk files from the catalogue data
python search/distance2_catalogue/lean_certification/gen_lean.py --mode native

# compile-check all chunks (≈5 min, 6-way parallel; set JOBS to change that)
bash search/distance2_catalogue/lean_certification/full_native/compile_all.sh
```

A clean run reports `29/29 chunks OK, 0 failed`, i.e. all 14,116 `code_i_ok` and
`code_i_qec` theorems type-check with no errors and no `sorry`.
