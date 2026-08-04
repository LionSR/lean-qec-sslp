# Changes on `referee-response`

This branch collects the repository-side work answering the referee and editor
reports. It is organised so that each change can be traced to the point of the
response letter it answers, and so that a reviewer can confirm the central claims by
running a few commands rather than reading 14,116 generated code records.

Section labels below are those of `response_to_referees.tex` (A.3(a)–(d), B.II.1–3,
B.III, C.2, C.3).

---

This file explains what changed on the branch and why, organised by referee point.
The measured figures it refers to — job counts, module counts, axiom-audit totals,
re-verification counts — live in
[`search/distance2_catalogue/lean_certification/VERIFICATION.md`](search/distance2_catalogue/lean_certification/VERIFICATION.md),
which records what was actually run.

## 1. Read these six files

Everything else is either a small edit or machine-generated. The substance of the
branch is here:

| File | What it establishes |
|---|---|
| [`SS/HilbertKL.lean`](SS/HilbertKL.lean) | States in the `2^n`-dimensional complex space, the Pauli operators `P(x,z) = i^#Y X^x Z^z`, the inner product, and the standard Knill–Laflamme conditions. Its bridge lemma proves a KL matrix element **equals** the finite support sum the certificates evaluate. |
| [`SS/BridgeD2.lean`](SS/BridgeD2.lean) | `OK_detects_weight1`: a record certified by `ExampleData.OK`, whose parameters satisfy two decidable structural conditions, satisfies the KL conditions for every Pauli of weight ≤ 1. `exists_amplitudes` shows the required states exist, so the statement is not vacuous. |
| [`SS/QSqrt235iC.lean`](SS/QSqrt235iC.lean) | `QSqrt235i → ℂ` as a ring homomorphism compatible with conjugation — the arithmetic the distance-3 files need to speak about actual complex amplitudes. |
| [`SS/BridgeD3.lean`](SS/BridgeD3.lean) | The same equality at distance 3, plus the relation `⟨1_L|P|1_L⟩ = (−1)^{wt z}⟨0_L|P|0_L⟩` under the complementary ansatz. |
| [`SS/BridgeBD16.lean`](SS/BridgeBD16.lean) | `BD16.detects_weight2` — the weight-≤ 2 KL statement for the BD16 examples. |
| [`Examples/D3/NoGo/Bridge.lean`](Examples/D3/NoGo/Bridge.lean) | The converse direction, used by the no-go argument. |

All six are pure-kernel: `#print axioms` reports only
`[propext, Classical.choice, Quot.sound]`.

---

## 2. Point-by-point

### A.3(a) — "all constructions" and the distance-2 coverage

The letter states that the development "does not currently prove a general semantic
theorem from `ExampleData.OK` to the standard Hilbert-space full weight-one
Knill–Laflamme condition". **That theorem is now present**: `SS.OK_detects_weight1`
in `SS/BridgeD2.lean`, with `SS.OK_hasDistance2` packaging it as a distance
statement.

Consequently every record in the three per-record builds carries, alongside its
arithmetic certificate, a statement in quantum-error-correction terms:

```lean
theorem code_i_ok  : code_i.OK
theorem code_i_qec : ∃ ψ, SS.IsAmplitudes code_i ψ ∧ SS.HasDistance ψ 2
```

The bridge takes two decidable structural hypotheses beyond `OK` — `∀ i, aᵢ ≠ 0` and
injectivity of the residues `S` — which are discharged in the kernel by `decide` for
every record, so `code_i_qec` is unconditional per code. Both hold throughout the
catalogue (0 exceptions in 14,116). They are stated in the theorem rather than
assumed silently; see `SS/BridgeD2.lean` and the `Structural side conditions` section
of [`search/distance2_catalogue/lean_certification/README.md`](search/distance2_catalogue/lean_certification/README.md).

The worked-example account in the letter is what the files now say: all eight
kernel-check support and the residue screen, **seven** kernel-check normalization, and
`Ex622` uses native evaluation for normalization and `Z`, because its support is a
filtered residue class to which the explicit normalization lemmas do not apply. Each
example's module docstring states its own split.

**Not addressed on this branch:** no Lean certificate was added for the
controlled-phase `((6,4,2))` example.

### A.3(b) / B.II.1 — the `native_decide` trust boundary

Three things changed.

1. **Kernel `decide` wherever it was feasible**, with no change to any statement:
   `SS/LambdaV2/FamilyA–E.lean` 15 → 0 `native_decide`;
   `Examples/D3/NoGo/BD16_0112335_FromKL.lean` 244 → 0 (now entirely kernel).

2. **A clean full build of `kernel_b1b2` is now recorded** — the letter notes this was
   still required. 29/29 chunks, 0 failures; see
   [`VERIFICATION.md`](search/distance2_catalogue/lean_certification/VERIFICATION.md).

3. **`native_decide` is eliminated from the distance-2 catalogue altogether**, in a
   fourth build [`pure/`](search/distance2_catalogue/lean_certification/pure/). The two
   conjuncts that resist kernel `decide` aggregate sums over `ℚ`, where the kernel gets
   *stuck* on `Rat.add`/`Rat.blt` rather than merely slow; they are therefore not
   decided but **proved**, by `norm_num`, which builds an arithmetic certificate the
   kernel checks by ordinary reduction. No change to the data representation was needed.

Each `pure/` chunk ends with `#print axioms code_i_qec` for every record it certifies.
The reports are archived in
[`pure/axioms/`](search/distance2_catalogue/lean_certification/pure/axioms/):

```
14,116 reports;  1 distinct axiom set: [propext, Classical.choice, Quot.sound];
0 occurrences of Lean.ofReduceBool or Lean.trustCompiler
```

Those two axioms are exactly what `native_decide` introduces, so their absence from
every report is a machine-checked, record-by-record statement of the trust base.

The other three builds retain `native_decide` and are kept for their much lower build
cost and, for `packed/`, for the umbrella packaging; each README states its own trust
base and points to `pure/`.

4. **`native_decide` is eliminated from the distance-3 constructions as well.** The
   kernel cannot reduce `Rat` arithmetic -- even `(3 : Q) + 4 = 7` is not closed by
   `decide`, because every `Rat` operation rebuilds a structure carrying a coprimality
   proof -- while `Int` arithmetic and the enumeration of all 16,384 Pauli strings on
   seven qubits both reduce without difficulty. Every distance-3 check is therefore
   mirrored over the integers and transported back:

   - `SS/ZSqrt235i.lean` defines the integer subring `Z[sqrt2, sqrt3, sqrt5, i]` and
     records that the inclusion `toQ` preserves zero, addition, negation, conjugation
     and multiplication.
   - `SS/ZFullKLEval.lean` mirrors the Layer-2 evaluator and proves
     `allKLSatisfied_of_Z_smul`: if the integer mirror of a code satisfies every
     weight-<=2 Knill-Laflamme constraint, so does the rational code it maps to, up to
     a global scale. The constraints are quadratic in the amplitudes, so a factor `q`
     rescales each matrix element and cannot affect whether it vanishes.
   - `Examples/D3/BD16v*Kernel.lean` (twelve files, generated by
     `Examples/D3/gen_kernel.py`) carry, for each construction, the integer amplitudes
     scaled by `D` and probabilities scaled by `D^2`, the two bridging lemmas
     `amp_eq` / `prob_eq`, the integer facts decided by the kernel, and the rational
     conclusions `layer1_kernel`, `probamp_kernel`, `layer2_kernel`,
     `isDistance3_kernel` and `qec_kernel`.

   `#print axioms` reports `[propext, Classical.choice, Quot.sound]` for all twenty-four
   of the `qec_kernel` and `isDistance3_kernel` theorems; neither `Lean.ofReduceBool` nor
   `Lean.trustCompiler` occurs. `BD16v7Kernel.qec_kernel` inhabits the same type as the
   original `BD16v7.qec`, so the kernel-only version states the same proposition rather
   than a weaker one. The originals are left in place; they remain the cheaper route.

5. **The two remaining constructions are certified as well.**

   - `Examples/D2/Ex642ControlledPhase.lean`: the residue-degenerate `((6,4,2))`
     controlled-phase code of Sec. III C.  Three of its four logical states share the
     residue value 0, so `ExampleData.OK` -- whose second conjunct is the residue-shift
     screen -- does not apply, and the Knill--Laflamme conditions are verified directly
     in the Hilbert space.  The amplitudes are all `+-1/4`; the check runs over the
     integer mirror and is transported by `innerC_eq`.  `hasDistance_kernel` states
     `SS.HasDistance psi 2`, and `normalized` records that the states are unit vectors,
     without which `Detects` would be satisfied vacuously by the zero family.
   - `SS/FamilyII.lean`: the even-parity subset-sum family of Sec. III B, as a theorem
     quantified over the code parameters `(n, m, K, w, S)` under two hypotheses --
     distinct residues and column balance.  Every single-qubit `X` or `Y` error takes an
     even-parity string to an odd-parity one, hence out of every support, so those
     matrix elements vanish for combinatorial reasons (`hammingWt_flip`,
     `innerC_of_flip`); the `Z` constraints follow from column balance
     (`signed_count_zero`).  The statement is proved for arbitrary amplitudes that are
     constant on each support and normalized, which covers the uniform superpositions of
     the manuscript without introducing square roots.

   With these, every construction, family and no-go result reported in the paper has a
   Lean certificate whose trusted base is the kernel and the three Mathlib axioms.

### A.3(c) — linking probability and amplitude

`SS/BD16Defs.lean` adds

```lean
BD16Code.probAmpConsistent : ∀ s ∈ supp, conj (amp s) * amp s = ofRat (prob s)
```

as an exactly decidable predicate over `QSqrt235i`, folded into
`BD16Code.isDistance3`, which is now `probAmpConsistent ∧ layer1OK ∧ layer2OK 2`. Each
of the twelve BD16 example files discharges it as `probamp_ok`.

As the letter says, the predicate is **support-scoped**: it pins the amplitudes on the
support and does not constrain values outside it. Vanishing off the support is carried
separately as `amp_vanish` in each example and is a hypothesis of the bridge; the
docstring on `probAmpConsistent` says so.

[`Examples/D3/_check_prob_amp.py`](Examples/D3/_check_prob_amp.py) re-checks
`prob s = |amp s|²` for all twelve examples independently of Lean, in exact rational
arithmetic, by parsing the example files.

### A.3(d) — the unused `factor` variable

`indep_check_core_multi.py` now carries the accumulated factor into the Y matrix
element. While making that correction the phase itself was checked against the
standard convention `Y = [[0,−i],[i,0]]` and corrected as well, in all three places it
occurs (the two copies of `matel_Yi` and the cached action used by the weight
enumerators); all three now agree with an explicit Kronecker-product `Y` to machine
precision. This is an overall sign on a single Pauli and changes no verdict — the
checker only compares `|⟨j|Yᵢ|j⟩ − ⟨0|Yᵢ|0⟩|` and `|⟨r|Yᵢ|s⟩|` against a tolerance,
and the enumerators use `|tr M|²` and `‖M‖_F²`.

The checker also cross-checks its own two representations of a logical state, which it
previously did not.  The Knill--Laflamme and transversality checks run on vectors built
from the numerical `P_list`, while the exact `Z`-expectation branch reads the separate
`states` dump; nothing forced the two to describe the same state, so a disagreement
between them would have gone unnoticed.  `crosscheck_terms_vs_problist` now compares the
exact probabilities against the numerical ones on the support and rejects exact mass
sitting off the support.  Re-running the whole catalogue with the check in place gives
111,315/111,315 passing, so the two representations do agree throughout; perturbing a
single `prob_fraction` entry makes the record fail, so the check is not vacuous.

`verify_transversal_U_multi` now checks the advertised logical phase directly:
`U|ψ_j⟩` must equal `ω^{s_j}|ψ_j⟩` as a vector *and* the ratio
`⟨ψ_j|U|ψ_j⟩ / ω^{s_j}` must equal 1.

[`rerun_indep_check_fixed.py`](search/distance2_catalogue/rerun_indep_check_fixed.py)
re-runs the whole audit; it reads the shipped `.zip` in place, so it works from a fresh
clone with no unzip step. Result in
[`rerun_fixed_summary.json`](search/distance2_catalogue/rerun_fixed_summary.json):
**111,315 / 111,315 pass, 0 fail**.

Per the letter, the READMEs no longer describe this path as exact rational
verification: it is `float64` at `1e-8` throughout, except for the cross-state
Z-expectation equalities, which use `Fraction`.

### B.II.2 — what exactly is proved for all 14,116 records

The four artifact classes the letter distinguishes are now separate directories with
separate READMEs, each stating its own packaging, mechanism and trust base:

| Build | Per record | Trust base |
|---|---|---|
| `full_native/` | `code_i_ok`, `code_i_qec` | compiler-backed |
| `kernel_b1b2/` | `code_i_ok`, `code_i_qec` | support + screen in kernel |
| `packed/` | *no per-record theorem* — one `chunk_all_ok` per chunk plus the umbrella `catalogue_all_ok` | compiler-backed |
| `pure/` | `code_i_ok`, `code_i_qec` | **kernel only** |

`packed/AllOk.lean` answers the coverage question with a single named theorem whose
statement conjoins the 29 chunk propositions; their `checks` lists hold 14,116 entries
between them, one per record. `lakefile.lean` exposes it as a `Catalogue` target, so
`lake build Catalogue` verifies it in one command.

The claim-to-theorem index the letter promises is this file together with
[`VERIFICATION.md`](search/distance2_catalogue/lean_certification/VERIFICATION.md).

### B.II.3 — small examples and a readable kernel/native decomposition

The eight `Examples/D2/Ex*.lean` are restructured exactly along the referee's rewrite
of `ex522_ok`: `ExampleData.OK` is split into its four conjuncts instead of one native
call, with support and screen by kernel `decide` and normalization by an explicit
lemma. The lemmas are new in `SS/Verify.lean`
(`isNormalizedProb_probTwo` … `isNormalizedProb_probEight`, over matching
`probTwo` … `probEight` combinators), so normalization of a K-point distribution is
stated once rather than re-derived per example.

### B.III — integration with external libraries

No external QEC library is imported. What changed is that `SS/HilbertKL.lean` now
provides, inside this development, the general definitions such an integration needs —
states, Pauli operators, inner product, and the standard KL conditions — and the bridge
theorems connect the construction-specific predicates to them. That is steps (2) and
(3) of the path described in the reply, done against local definitions; adopting an
external library's representation remains future work.

### C.2 — the unqualified "Lean-certified catalogue" claim

Repository-side, the four builds and their READMEs now state predicate, coverage,
mechanism and trust base separately for each, and `VERIFICATION.md` records what was
actually run. Manuscript wording is not part of this branch.

### C.3 — scope of the distance-3 classification

For `a = (0,1,1,2,3,3,5)`, the no-go now reads at the level of quantum states rather
than an algebraic system: `no_KL_state` in
[`Examples/D3/NoGo/BD16_0112335.lean`](Examples/D3/NoGo/BD16_0112335.lean) says no
normalized state on the SS support satisfies the KL conditions for the Pauli errors of
weight ≤ 2. Its hypotheses are restricted to weight ≤ 2 deliberately; an unrestricted
version is contradicted by normalization alone and would rule out nothing. The
docstring records why.

The second exclusion, `BD16_1112226`, still stops at the algebraic `no_solution`. Its
reduction would mean writing a derivation comparable to the 766-line one in
`BD16_0112335_FromKL.lean`, and it has not been done.

---

## 3. What is generated, and how to check it without reading it

116 of the files on this branch are machine-generated certificate chunks (29 per
build). They are not meant to be read. The check is that the generator reproduces them:

```bash
python search/distance2_catalogue/lean_certification/gen_lean.py --mode pure
git diff --exit-code          # empty output = the committed chunks are what the generator emits
```

This holds for all four modes (`native`, `split`, `packed`, `pure`), on any platform,
from a fresh clone: the catalogue details are read straight out of
`data/codes_all_details_multi_allK.zip`, so no unzip step is needed.

---

## 4. Reproducing the whole branch

```bash
lake exe cache get                       # 10–25 min

lake build SS Examples                   # whole library and all examples
lake build Catalogue                     # umbrella catalogue_all_ok

JOBS=15 bash search/distance2_catalogue/lean_certification/pure/compile_all.sh   # ~4 h
python search/distance2_catalogue/rerun_indep_check_fixed.py                     # ~2 h
```

The job counts, module counts and timings these commands produce are recorded in
[`VERIFICATION.md`](search/distance2_catalogue/lean_certification/VERIFICATION.md).

Measured results, environment and versions:
[`VERIFICATION.md`](search/distance2_catalogue/lean_certification/VERIFICATION.md).

On Windows, run the `.sh` scripts under Git Bash rather than WSL, so the `lake` on your
`PATH` is visible to the script.

---

## 4b. The declared search grid and what "distinct" means

The catalogue is the output of a bounded search over the grid declared in
`search/distance2_catalogue/run_search_multi.py`:

```python
N_LIST = [4, 5, 6]            # qubit numbers
K_LIST = [2, 3, 4]            # code dimensions
M_LIST = list(range(2, 21))   # moduli m = 2 .. 20
```

Deduplication is by `_hit_key` in `search/distance2_catalogue/sslp_search_multi.py`,
the tuple `(n, m, K, a, s_list)` — qubit number, modulus, code dimension, site-weight
vector, residue assignment — with no further identification, in particular none under
qubit permutation. That is what "14,116 **distinct** records" means.

What the number is, and what it is not: the enumeration visits every canonical parameter
tuple in the declared ranges and retains what survives the guards, the linear-programming
stage and exactification.  It is a systematic search over a bounded grid, not a
classification theorem.  The feasibility stage is a numerical linear program, so a false
negative near a feasibility boundary cannot be excluded from the output alone; and the
nondegenerate-residue and union-distance conditions are part of the ansatz rather than of
the problem, so codes outside them are not sought — the residue-degenerate ((6,4,2))
construction of Sec. III C is one such code, and this sweep cannot find it (B.I.2, B.I.3).

## 5. Known gaps

- `SS/LambdaV2/FamilyA-E.lean` quantify over the amplitude parameter at fixed code
  parameters `(n, m, w, S)`, not over the code parameters themselves.  They formalize
  the lambda families of `notes/lambda_families/lambdav2.tex`, which are a different
  construction from the manuscript's Family II; the two should not be conflated.
- The distance-3 constructive files certify representative points of parameter
  families, not every member (C.3).
