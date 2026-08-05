# Verification record

What was actually compiled and measured for this branch, so that every claim made in
the surrounding READMEs can be traced to a run rather than taken on trust. Everything
here is reproducible from a fresh clone with the commands in the last section.

This file is the single source for the measured figures of the branch: job counts,
module counts, axiom-audit totals and re-verification counts. `CHANGES.md` explains
what was changed and why, and points here rather than repeating the numbers.

## Environment

| | |
|---|---|
| Lean toolchain | `leanprover/lean4:v4.27.0` (`lean-toolchain`) |
| Mathlib | pinned at `fc278a179e431ed10630af63fc05481680c0c7bd` (`lake-manifest.json`) |
| Compute host | 56-core Intel Xeon w9-3495x, 1 TB RAM, Windows |
| Python host | Intel i9-12900KS, 128 GB RAM, Windows |
| Dates | 2026-07-27 / 2026-07-28; kernel-only distance-3 work 2026-08-03 / 2026-08-04 |

## Whole-library type-check

Run from the repository root on the compute host:

```
lake build SS Examples     ->  Build completed successfully (7972 jobs)
lake build Catalogue       ->  Build completed successfully (7954 jobs)
```

Both report no errors and no warnings.

The first command reaches **every module of both libraries**: 40 of 40 under `SS/`
and 44 of 44 under `Examples/`, counted as the transitive import closure of the two
library roots. That includes the six bridge files, the `SS/FamilyI` and
`SS/FamilyII` analytical families, the `SS/LambdaV2` families of the supplementary
notes, the integer mirror (`SS/ZSqrt235i.lean`, `SS/ZFullKLEval.lean`), the worked
distance-2 examples including the residue-degenerate `((6,4,2))` code, the twelve
BD16 distance-3 examples with their kernel-only counterparts, and both no-go
developments. The second command builds the 29 packed chunks and the umbrella theorem
`catalogue_all_ok`.

Lake's default `globs` is `roots.map .one`, so a module reaches the build only if it
is in the import closure of `SS.lean` or `Examples.lean`. Both roots are complete:

```bash
# every .lean under SS/ and Examples/ is imported, directly or transitively
lake build SS Examples
```

No `sorry` and no custom `axiom` declaration appears anywhere in the branch.

## The four catalogue builds

All four certify the same 14,116 codes; they differ in packaging and in how much is
checked by the Lean kernel. Each chunk is counted as passing only when
`lake env lean` exits 0, recorded by a `__CHUNK_OK__` marker the script appends on
that path — never by inspecting the log for the word "error", which would count a
killed process or a missing `lake` as a pass.

| Build | Chunks passing | Errors | Parallelism | Wall clock |
|---|---|---|---|---|
| `full_native/` | 29 / 29 | 0 | 15-way | — |
| `kernel_b1b2/` | 29 / 29 | 0 | 15-way | — |
| `packed/` | 29 / 29 + umbrella | 0 | 15-way | — |
| `pure/` | **29 / 29** | 0 | 15-way, 7 threads/proc | **3 h 41 min** |

The three runs marked "—" were executed back to back in a single session; only the
`pure/` run was separately timed (2026-07-27 18:31:45 → 22:13:19). The compile-time
figures quoted in the other READMEs are order-of-magnitude guidance, not measurements
from this table.

The `pure/` run recorded 29 `START`, 29 `OK`, 0 `SKIP` and 0 `FAIL`: every chunk was
compiled in that run, none was carried over from an earlier one.

## Trust base of `pure/`: the per-code axiom audit

Each `pure/` chunk ends with `#print axioms code_i_qec` for every code it certifies.
The resulting reports are archived in [`pure/axioms/`](pure/axioms/), one file per
chunk, exactly as Lean emitted them.

| Check | Result |
|---|---|
| Axiom reports | **14,116** |
| Theorem indices covered | `code_0_qec` … `code_14115_qec`, no gaps, no duplicates |
| Distinct axiom sets over all 14,116 | **1** — `[propext, Classical.choice, Quot.sound]` |
| Occurrences of `Lean.ofReduceBool` or `Lean.trustCompiler` | **0** |

`Lean.ofReduceBool` and `Lean.trustCompiler` are exactly the axioms `native_decide`
introduces. Their absence from every one of the 14,116 reports is a machine-checked,
code-by-code statement that no step of any proof in this build was delegated to the
compiler.

To re-derive the table from the archived files:

```bash
cd search/distance2_catalogue/lean_certification/pure/axioms
cat Chunk*.txt | wc -l                                   # 14116
cat Chunk*.txt | grep -c 'ofReduceBool\|trustCompiler'    # 0
cat Chunk*.txt | sed 's/.*depends on axioms: //' | sort -u  # one line
```

## Independent Python re-verification

`rerun_indep_check_fixed.py` re-runs the independent checker over the complete
catalogue, reading `data/codes_all_details_multi_allK.zip` in place.

| | |
|---|---|
| Raw hits checked | 111,315 |
| Passing | **111,315** |
| Failing | 0 |
| Wall clock | 6,587 s (two invocations covering the catalogue once: records 0-89999, then `--start 90000`) |

Recorded in [`../rerun_fixed_summary.json`](../rerun_fixed_summary.json). The checker
is numerical — Knill–Laflamme matrix elements, the transversal-phase check and the
weight enumerators are evaluated in `float64` against a `1e-8` tolerance — apart from
the cross-state Z-expectation equalities, which it compares in exact `Fraction`
arithmetic. It is an independent check by a different method, not a second exact one;
the exact-arithmetic guarantee is what `pure/` provides.

The checker also compares its own two representations of a logical state against each
other (`crosscheck_terms_vs_problist`): the vectors used for the Knill-Laflamme and
transversality checks are built from the numerical `P_list`, while the exact
Z-expectation branch reads the separate `states` dump, and nothing previously forced
the two to describe the same state. Perturbing a single `prob_fraction` entry makes
the record fail, so the comparison is not vacuous.

## Kernel-only certification beyond the distance-2 catalogue

The Lean kernel cannot reduce `Rat` arithmetic — even `(3 : ℚ) + 4 = 7` is not closed
by `decide`, because every `Rat` operation rebuilds a structure carrying a coprimality
proof — while `Int` arithmetic is GMP-backed and the enumeration of all 16,384 Pauli
strings on seven qubits reduces without difficulty. Each remaining construction is
therefore mirrored over the integers and transported back (`SS/ZSqrt235i.lean`,
`SS/ZFullKLEval.lean`).

| Object | Top-level theorem | Axioms |
|---|---|---|
| 12 distance-3 BD16 constructions | `BD16v*Kernel.qec_kernel` | `[propext, Classical.choice, Quot.sound]` |
| 12 distance-3 certificates | `BD16v*Kernel.isDistance3_kernel` | same |
| no-go `a = (1,1,1,2,2,2,6)` | `BD16_1112226.no_KL_state` | same |
| no-go `a = (0,1,1,2,3,3,5)` | `BD16_0112335.no_KL_state` | same |
| residue-degenerate `((6,4,2))` | `Ex642ControlledPhase.hasDistance_kernel` | same |
| Family I (`C₀ = {0ⁿ, 1ⁿ}`) | `SS.FamilyI.familyI_OK` | same |
| Family II (even parity) | `SS.FamilyII.detects` | same |

`Lean.ofReduceBool` and `Lean.trustCompiler` occur in none of them. The `native_decide`
originals are kept alongside: they build in seconds rather than minutes, so each file
offers both routes.

These are not assertions of this document. `Examples/AxiomAudit.lean` prints the
axiom dependency of all 31 theorems above, and its output is archived as
`Examples/AxiomAudit.txt`. Measured 2026-08-05 on the pinned toolchain: 31 reports,
all `[propext, Classical.choice, Quot.sound]`; `lake build Examples.AxiomAudit`
completed 7,937 jobs in 7 min 53 s. To regenerate and check from a fresh clone:

```bash
lake env lean Examples/AxiomAudit.lean > Examples/AxiomAudit.txt
grep -c 'depends on axioms'                Examples/AxiomAudit.txt   # 31
grep -c 'ofReduceBool\|trustCompiler'      Examples/AxiomAudit.txt   # 0
```

Two checks guard against a theorem that is true but empty. `BD16v7Kernel.qec_kernel`
inhabits the same type as the original `BD16v7.qec`, so the kernel-only version states
the same proposition rather than a weaker one; and `Ex642ControlledPhase.normalized`
records that the logical states are unit vectors, without which `SS.Detects` would be
satisfied vacuously by the zero family.

## Generator reproducibility

Every mode of `gen_lean.py` regenerates the committed chunk files **byte-for-byte**,
verified from a clone in which the catalogue details exist only as the shipped
`.zip`:

| Mode | Target directory | Chunks | Differences |
|---|---|---|---|
| `--mode native` | `full_native/Chunks/` | 29 | 0 |
| `--mode split` | `kernel_b1b2/Chunks/` | 29 | 0 |
| `--mode packed` | `packed/Chunks/` (+ `AllOk.lean`) | 29 | 0 |
| `--mode pure` | `pure/Chunks/` | 29 | 0 |

This is what makes the 116 generated files reviewable without reading them: rather
than auditing 14,116 code records by eye, regenerate them and check that the diff is
empty.

## Reproducing all of the above

```bash
git checkout referee-response
lake exe cache get                       # 10-25 min

lake build SS Examples                   # whole library + all examples
lake build Catalogue                     # umbrella catalogue_all_ok

JOBS=15 bash search/distance2_catalogue/lean_certification/full_native/compile_all.sh
JOBS=15 bash search/distance2_catalogue/lean_certification/kernel_b1b2/compile_all.sh
JOBS=15 bash search/distance2_catalogue/lean_certification/packed/compile_all.sh
JOBS=15 bash search/distance2_catalogue/lean_certification/pure/compile_all.sh   # ~4 h

python search/distance2_catalogue/rerun_indep_check_fixed.py                     # ~2 h

python search/distance2_catalogue/lean_certification/gen_lean.py --mode pure
git diff --exit-code                     # empty: the committed chunks are what the generator emits
```

Each `compile_all.sh` ends with `NN/29 chunks OK, N failed`; the packed one adds
`UMBRELLA OK: catalogue_all_ok type-checks (all 14,116 codes)`.

On Windows, run the `.sh` scripts under Git Bash (`& "C:\Program Files\Git\bin\bash.exe" …`)
rather than WSL, so that the `lake` on your `PATH` is visible to the script.
