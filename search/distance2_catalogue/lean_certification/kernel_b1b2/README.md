# kernel_b1b2 — maximally kernel-checked certification of all 14,116 codes

This is the same complete Lean certification of all **14,116** deduplicated
distance-2 codes as `../full_native/`, but with the proof of each code split so
that as much as possible is discharged **inside the Lean kernel** by `decide`
(rather than by `native_decide`), following the suggestion of the referees.

## Proof structure

Each code's certificate is

```lean
theorem code_i_ok : code_i.OK := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · decide          -- support membership   (kernel)
  · decide          -- residue-shift screen (kernel)
  · native_decide   -- normalization
  · native_decide   -- Z-type KL
```

`ExampleData.OK` is the conjunction of four conditions. The first two
(`SSConditionSupport'` and `ResidueShiftScreen`) are finite membership/residue
checks over `ℚ`/`ZMod m` that the kernel can evaluate, so they are discharged by
kernel-level `decide` for **every one of the 14,116 codes**. The last two
(`IsNormalizedProb` and `ZTypeKL'`) aggregate rational sums whose decision
procedure does not reduce in the kernel in practice, so they retain
`native_decide` — the same branch the referee's own rewrite of `ex522_ok` left as
`native_decide`.

## Relation to the other artifacts

- `../full_native/` — every code with a single `native_decide` (fastest to
  compile; ~5 min).
- **this directory** — support and screen in the kernel for all 14,116 codes;
  normalization and Z-type KL by `native_decide` (~33 min single-machine, much
  faster in parallel).
- `Examples/D2/Ex*.lean` — representative worked examples in which *three* of the
  four conjuncts (support, screen, **and normalization**) are kernel-checked, the
  third via the explicit `isNormalizedProb_probTwo` … `isNormalizedProb_probEight`
  lemmas in `SS/Verify.lean`. This applies to seven of the eight; `Ex622.lean` keeps
  `native_decide` for normalization, because its support is a `Finset.univ.filter`
  and its probabilities are conditional on membership, so the `probK` combinators
  those lemmas are stated for do not apply to it.
- `../pure/` — all four conjuncts in the kernel, for all 14,116 codes.
- `SS/FamilyI/`, `SS/LambdaV2/` — parametric *analytical family* theorems that
  cover infinitely many codes with pure-kernel symbolic proofs.

Together these give a graded hierarchy: the analytical families cover infinitely many
codes with pure-kernel symbolic proofs; `../pure/` covers the full 14,116 with every
step in the kernel; this directory covers the same 14,116 with support and screen in
the kernel at a tenth of the build time; and the representative instances in
`Examples/D2/` are written out by hand so a reader can follow one end to end.
Independently of Lean, the whole catalogue is also re-checked by the Python pipeline
(numerically, `float64` at `1e-8`, with the cross-state Z-expectation equalities in
exact `Fraction` arithmetic).

## Reproduce

```bash
python search/distance2_catalogue/lean_certification/gen_lean.py --mode split
bash   search/distance2_catalogue/lean_certification/kernel_b1b2/compile_all.sh
```

A clean run reports `29/29 chunks OK, 0 failed`.
