# Lean certification of the full distance-2 catalogue (all 14,116 codes)

This directory provides a **complete Lean 4 certification of every one of the
14,116 deduplicated distance-2 codes** in the catalogue — not merely a set of
representative instances. For each canonical code `i` there is a definition
`code_i : ExampleData n m K` (a finite data record holding the code's exact support
strings, rational squared-amplitudes, and target Z-values) and a theorem
`code_i_ok : code_i.OK`.

The certified predicate `ExampleData.OK` is **defined in
[`SS/Verify.lean`](../../../SS/Verify.lean)** (`structure ExampleData` and
`def ExampleData.OK`). It is the conjunction of four finite arithmetic conditions
which, together with the two structural side conditions described under
[Structural side conditions](#structural-side-conditions) below, imply distance 2:

1. **support** (`SSConditionSupport'`, `SS/Basic.lean`) — every computational-basis
   string of a logical state lies in a single subset-sum residue class;
2. **screen** (`ResidueShiftScreen`, `SS/ResidueShiftScreen.lean`) — distinct logical
   states stay separated under every weight-one X/Y shift;
3. **normalization** (`IsNormalizedProb`, `SS/ZTypeKL.lean`) — each logical state's
   squared amplitudes form a probability distribution;
4. **Z-type Knill–Laflamme** (`ZTypeKL'`, `SS/ZTypeKL.lean`) — all logical states
   share the same single-qubit Z-expectations.

No one of these four says on its own that a class of errors is detectable: the
diagonal Knill–Laflamme elements are what conditions 2 and 4 control, while the
vanishing of the *off-diagonal* elements comes from the logical states having
disjoint supports, which is where the injectivity side condition below enters.
`SS/BridgeD2.lean` is what assembles the four into the actual detection statement.

The same predicate is used by the hand-written worked examples in `Examples/D2/`, so
a small instance and the full catalogue can be inspected side by side. The 14,116
codes are emitted from the catalogue data by the generator `gen_lean.py` into 29
chunk files of up to 500 codes each (28 × 500 + 116 = 14,116).

## From the certificate to the actual QEC property

`ExampleData.OK` is a *finite arithmetic* certificate. That it carries the intended
**quantum** meaning is proved separately, and is machine-checked:

* [`SS/HilbertKL.lean`](../../../SS/HilbertKL.lean) defines states in the
  `2^n`-dimensional complex space, the Pauli operators `P(x,z) = i^{#Y} Xˣ Z^z`, the
  inner product, and the genuine Knill–Laflamme conditions. Its **bridge lemma**
  proves that a KL matrix element equals exactly the finite support sum that the
  certificates compute (index set `SS.diagIntersection`).
* [`SS/BridgeD2.lean`](../../../SS/BridgeD2.lean) proves `OK_detects_weight1`: a code
  certified by `OK`, whose parameters satisfy the accompanying decidable structural
  conditions (see below), satisfies the Knill–Laflamme conditions for **every** Pauli
  error of weight ≤ 1, i.e. it detects all single-qubit errors. `exists_amplitudes`
  shows the required logical states actually exist, so the statement is not vacuous.

Accordingly, in the three per-code builds (`full_native/`, `kernel_b1b2/`, `pure/`)
**each** of the 14,116 codes carries, alongside `code_i_ok`, a theorem stated in
quantum-error-correction terms:

```lean
theorem code_i_qec : ∃ ψ, SS.IsAmplitudes code_i ψ ∧ SS.HasDistance ψ 2
```

The fourth build, `packed/`, is deliberately different: it collapses each chunk into
a single `chunk_all_ok`, so it carries neither `code_i_ok` nor `code_i_qec` per code.
Its purpose is the umbrella packaging, not the per-code statements.

Both bridge files are **pure-kernel** (`#print axioms` lists only `propext`,
`Classical.choice`, `Quot.sound`): the bridge adds no trust assumption of its own.

### Structural side conditions

Besides `OK`, the bridge takes two hypotheses on the code parameters: `∀ i, aᵢ ≠ 0`
(otherwise flipping qubit `i` preserves the residue class) and injectivity of the
residues `S` (otherwise two logical states need not be orthogonal). Both are decidable
and are discharged in the kernel by `decide` for every code, so the per-code theorem
`code_i_qec` above is **unconditional**; both conditions hold throughout the catalogue
(0 exceptions out of 14,116).

## Four versions

| Directory | Packaging | Proof | Kernel coverage | Compile time* |
|---|---|---|---|---|
| `full_native/`  | per code: `code_i_ok`, `code_i_qec` | `by native_decide` | none (all via compiler) | ~5 min |
| `kernel_b1b2/`  | per code: `code_i_ok`, `code_i_qec` | support + screen by `decide`; normalization + Z-type KL by `native_decide` | support & screen kernel-checked for all 14,116 | ~33 min |
| `packed/`       | one theorem per chunk + one umbrella `catalogue_all_ok`; no per-code theorems | `by native_decide` | none (all via compiler) | ~5 min |
| **`pure/`**     | per code: `code_i_ok`, `code_i_qec` | **all four conjuncts in the kernel** (`decide` + `norm_num`) | **complete — no `native_decide` anywhere** | ~3 h |

*Order-of-magnitude guidance only, at 6-way parallelism on a workstation; the
`pure/` figure is the measured 15-way run. All four compile with **no errors and no
`sorry`** and each reports `29/29 chunks OK` — see [`VERIFICATION.md`](VERIFICATION.md)
for what was actually run, on what, and with which results.

`full_native/` is the fastest to build and certifies every code. `kernel_b1b2/`
moves the two kernel-tractable conditions (support membership and the
residue-shift screen) into the Lean kernel for **all** 14,116 codes, following the
referees' suggestion to prefer `decide` over `native_decide` where feasible.
`packed/` collapses the whole catalogue into a **single named theorem**
`catalogue_all_ok` (each 500-code chunk certified by one `chunk_all_ok`, conjoined
by the umbrella), directly answering the referees' observation that the certified
codes were presented as *isolated instances*.

**`pure/` removes `native_decide` from the distance-2 catalogue entirely.** The two
conditions that resist kernel `decide` are the ones aggregating rational sums: the
kernel does not reduce `Rat.add`/`Rat.blt` applications in practice, so the decision
procedure gets stuck rather than merely slow. They are therefore not decided at all
but *proved*, by `norm_num`, which builds an arithmetic certificate instead of
relying on kernel reduction. Every one of the 14,116 codes is then certified with
the kernel checking every step.

## Trust base

In `pure/` the trust base is the Lean kernel alone. Each of its 29 chunks ends with
`#print axioms code_i_qec` for every code it certifies — 14,116 reports in total —
so the compile log records, code by code, that the proof depends only on

```
[propext, Classical.choice, Quot.sound]
```

and on neither `Lean.ofReduceBool` nor `Lean.trustCompiler`. Those two axioms are
exactly what `native_decide` introduces, so their absence from all 14,116 reports
is a machine-checked statement that no step was delegated to the compiler.

The other three versions use `native_decide` for at least one conjunct and therefore
additionally trust the Lean compiler. They are kept because they are far cheaper to
rebuild (~5–33 min against ~3 h) and because `packed/` provides the single-theorem
packaging; `pure/` is the one to consult for the strongest guarantee.

Independently of Lean, the same catalogue is re-verified by the Python checker
`../indep_check_core_multi.py` (see `../rerun_fixed_summary.json`:
111,315 / 111,315 raw hits pass). That checker is numerical — the Knill–Laflamme
matrix elements, the transversal-phase check and the weight enumerators are
evaluated in `float64` against a `1e-8` tolerance — except for the cross-state
Z-expectation equalities, which it compares in exact `Fraction` arithmetic. It is
therefore an independent full-coverage check by a different method, not a second
exact one; the exact-arithmetic guarantee for the catalogue is what `pure/`
provides.
For results covering *infinitely many* codes rather than a finite catalogue, see the
analytical family theorems in `SS/FamilyI/` and `SS/LambdaV2/`, which are symbolic
and pure-kernel.

## Layout

```
lean_certification/
├── gen_lean.py         generator (--mode native | split | packed | pure)
├── VERIFICATION.md     measured compile results for all four versions
├── full_native/        all 14,116 codes, one native_decide each
│   ├── Chunks/         Chunk000.lean … Chunk028.lean
│   ├── compile_all.sh
│   └── README.md
├── kernel_b1b2/        all 14,116 codes, support+screen by kernel decide
│   ├── Chunks/
│   ├── compile_all.sh
│   └── README.md
├── packed/             all 14,116 codes as one theorem catalogue_all_ok
│   ├── Chunks/         Chunk000.lean … Chunk028.lean (one chunk_all_ok each)
│   ├── AllOk.lean      umbrella: catalogue_all_ok
│   ├── compile_all.sh
│   └── README.md
└── pure/               all 14,116 codes, fully kernel-checked, no native_decide
    ├── Chunks/         Chunk000.lean … Chunk028.lean (+ per-code #print axioms)
    ├── axioms/         archived audit: 14,116 `#print axioms` reports as emitted
    ├── compile_all.sh
    └── README.md
```

## Reproduce

```bash
# regenerate one version's chunk files from the catalogue data
python search/distance2_catalogue/lean_certification/gen_lean.py --mode native   # or: --mode split | --mode packed | --mode pure

# compile-check that version
bash search/distance2_catalogue/lean_certification/full_native/compile_all.sh   # ≈5 min
bash search/distance2_catalogue/lean_certification/kernel_b1b2/compile_all.sh   # ≈33 min
bash search/distance2_catalogue/lean_certification/packed/compile_all.sh        # ≈5 min
bash search/distance2_catalogue/lean_certification/pure/compile_all.sh          # ≈3 h
```

Each generator mode reproduces the committed chunk files byte-for-byte, on any
platform and from a fresh clone: the catalogue details are read straight out of
`../data/codes_all_details_multi_allK.zip`, so no manual unzip step is needed.

The packed build is also wired into `lake` as a (non-default) library target, so
the umbrella theorem `catalogue_all_ok` can be built and verified with a single
command:

```bash
lake build Catalogue      # builds the 29 packed chunks + umbrella (~5 min)
```

## Distance-3 as well

The same semantic core also covers distance 3:

* [`SS/QSqrt235iC.lean`](../../../SS/QSqrt235iC.lean) embeds the exact number field
  `ℚ(√2,√3,√5,i)` into `ℂ` and proves the embedding is a ring homomorphism
  compatible with conjugation (only the easy faithfulness direction is needed —
  no linear independence of radicals is assumed).
* [`SS/BridgeD3.lean`](../../../SS/BridgeD3.lean) proves that `diagMatElt` and
  `offdiagMatElt` *are* the KL matrix elements `⟨0_L|P|0_L⟩` and `⟨0_L|P|1_L⟩`, that
  under the complementary ansatz `|1_L⟩ = X^{⊗n}|0_L⟩` one has
  `⟨1_L|P|1_L⟩ = (-1)^{wt(z)}·⟨0_L|P|0_L⟩` (the "automatic" criterion for even
  `wt(z)`), and finally `KL_of_allKLSatisfied`: whenever the exact certificate
  accepts, the two logical states satisfy the genuine Knill–Laflamme conditions for
  every Pauli of weight ≤ w.

All four bridge files are pure-kernel and contain no `sorry`.

The converse direction — a hypothetical code in the ansatz yields a solution of the
reduced system — is formalized for **both** distance-3 no-go cases:
[`Examples/D3/NoGo/Bridge.lean`](../../../Examples/D3/NoGo/Bridge.lean) together with
`KLSubsys_of_KL` and `no_KL_state` do it for `a = (0,1,1,2,3,3,5)`, and
[`BD16_1112226_FromKL.lean`](../../../Examples/D3/NoGo/BD16_1112226_FromKL.lean)
does the same for `a = (1,1,1,2,2,2,6)` over its own 17-constraint subsystem. Both
results therefore read "no normalized state satisfies the Knill–Laflamme conditions
for the Pauli errors of weight ≤ 2" rather than "this algebraic system has no
solution", and both axiom reports are in
[`Examples/AxiomAudit.txt`](../../../Examples/AxiomAudit.txt).

### Distance-3 examples also carry QEC statements

Each of the twelve `Examples/D3/BD16v*.lean` files now proves, besides its finite
certificate, a theorem `qec`: for every Pauli of weight ≤ 2 the off-diagonal element
`⟨0_L|P|1_L⟩` vanishes and the two diagonal elements agree — i.e. the code detects
every weight-≤2 error. This uses `SS.BD16.detects_weight2`
([`SS/BridgeBD16.lean`](../../../SS/BridgeBD16.lean)), which is pure-kernel.

That bridge needs a **third** side condition, of the same kind as the two at
distance 2: `isDistance3` does not constrain the amplitudes off the support
(`probAmpConsistent` quantifies only over `s ∈ supp`), so `amp_vanish` is stated
explicitly in each file and discharged mechanically. It holds for all twelve.
