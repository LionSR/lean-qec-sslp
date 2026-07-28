# pure — fully kernel-checked certification of all 14,116 codes

This is the same complete Lean certification of every one of the **14,116**
deduplicated distance-2 codes as `../full_native/`, but with **no `native_decide`
anywhere**: every step of every proof is checked by the Lean kernel. It is the
strongest of the four builds and the one to consult when the trust base matters.

## Proof structure

`ExampleData.OK` is a conjunction of four conditions. The first two are finite
membership/residue checks that the kernel evaluates directly; the last two are the
ones that resist it, and they are handled differently:

```lean
theorem code_i_b3 : ∀ k, IsNormalizedProb (code_i.supp k) (code_i.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_i], ?_⟩ <;>
    norm_num [code_i, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]

theorem code_i_b4 : ZTypeKL' K code_i.supp code_i.prob code_i.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_i, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]

theorem code_i_ok : code_i.OK := ⟨by decide, by decide, code_i_b3, code_i_b4⟩
```

## Why `decide` fails here but `norm_num` succeeds

Normalization (`IsNormalizedProb`) and the Z-type Knill–Laflamme equalities
(`ZTypeKL'`) aggregate sums of rationals. Deciding them means asking the kernel to
reduce applications of `Rat.add` and `Rat.blt`, and in practice the kernel gets
**stuck** on those — not merely slow, so no amount of compute or `maxHeartbeats`
gets past it. This is why the other three builds fall back to `native_decide` for
these two conjuncts.

`norm_num` avoids the obstacle rather than fighting it: instead of *deciding* the
proposition by evaluation, it *proves* it, assembling an arithmetic certificate that
the kernel then checks by ordinary term-level reduction. No change to the data
representation is needed — the codes are still stored with `ℚ` coefficients exactly
as in the other builds.

## Per-code axiom audit

Each chunk ends with `#print axioms code_i_qec` for every code it certifies, 14,116
reports in total. A clean compile log therefore contains, for each individual code,

```
'Catalogue.ChunkNNN.code_i_qec' depends on axioms: [propext, Classical.choice, Quot.sound]
```

`Lean.ofReduceBool` and `Lean.trustCompiler` — the two axioms `native_decide`
introduces — appear nowhere. Their absence across all 14,116 reports is what
certifies, machine-checkably and code by code, that nothing was delegated to the
compiler.

The reports from the recorded run are archived here in [`axioms/`](axioms/), one file
per chunk, exactly as Lean emitted them. They can be checked without recompiling:

```bash
cd search/distance2_catalogue/lean_certification/pure/axioms
cat Chunk*.txt | wc -l                                      # 14116
cat Chunk*.txt | grep -c 'ofReduceBool\|trustCompiler'       # 0
cat Chunk*.txt | sed 's/.*depends on axioms: //' | sort -u   # a single line
```

The third command is the strongest of the three: over all 14,116 reports there is
exactly **one** distinct axiom set, `[propext, Classical.choice, Quot.sound]`.

If you recompile, `compile_all.sh` writes each chunk's output next to its source as
`Chunks/ChunkNNN.lean.log`, in the same format; `cat` them first, since `grep -c`
over several files prints one count per file rather than a total.

## Relation to the other artifacts

- `../full_native/` — every code with a single `native_decide` (~5 min to build).
- `../kernel_b1b2/` — support and screen in the kernel for all 14,116 codes;
  normalization and Z-type KL by `native_decide` (~33 min).
- `../packed/` — the whole catalogue as one umbrella theorem `catalogue_all_ok`.
- **this directory** — all four conjuncts in the kernel for all 14,116 codes (~3 h).
- `SS/FamilyI/`, `SS/LambdaV2/` — parametric *analytical family* theorems covering
  infinitely many codes with pure-kernel symbolic proofs.

Alongside `code_i_ok`, every code here also carries `code_i_qec`, which states the
quantum-error-correction property itself rather than the arithmetic certificate:

```lean
theorem code_i_qec : ∃ ψ, SS.IsAmplitudes code_i ψ ∧ SS.HasDistance ψ 2
```

It is obtained from `code_i_ok` through the bridge theorem `SS.OK_hasDistance2`
(`SS/BridgeD2.lean`), which is itself pure-kernel; see the parent
[`README.md`](../README.md).

## Reproduce

```bash
python search/distance2_catalogue/lean_certification/gen_lean.py --mode pure
bash   search/distance2_catalogue/lean_certification/pure/compile_all.sh
```

A clean run reports `29/29 chunks OK, 0 failed`. Measured timings are in
[`../VERIFICATION.md`](../VERIFICATION.md).
