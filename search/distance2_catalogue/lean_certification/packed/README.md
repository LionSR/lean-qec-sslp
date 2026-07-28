# packed — the full catalogue certified by a single named theorem

This is the same complete Lean certification of all **14,116** deduplicated
distance-2 codes as `../full_native/` and `../kernel_b1b2/`, but *packaged*
differently so that the whole catalogue is certified by **one** named result
rather than by 14,116 separate theorems.

This directly addresses the referees' observation that the repository presented
the certified codes as **isolated instances**: here they are bundled into a
single theorem whose statement quantifies over the entire catalogue.

## Proof structure

Each chunk file `Chunks/ChunkNNN.lean` contains up to 500 code definitions
`code_i : ExampleData n m K` (28 chunks of 500 and a last one of 116, totalling
14,116) and **one** theorem certifying all of them at once:

```lean
def checks : List Bool :=
  [decide code_0.OK, decide code_1.OK, …, decide code_499.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide
```

`chunk_all_ok` says: *every* code in the chunk decides its `ExampleData.OK`
predicate to `true`. Because the list is a homogeneous `List Bool`, this avoids
the heterogeneous `Sigma`-packing that a "list of codes of varying arities"
would otherwise require, while still ranging over all 500 codes in one statement.

The umbrella `AllOk.lean` then conjoins the 29 chunk theorems:

```lean
theorem catalogue_all_ok :
    Catalogue.Chunk000.checks.all id = true ∧
    Catalogue.Chunk001.checks.all id = true ∧
    … ∧
    Catalogue.Chunk028.checks.all id = true :=
  ⟨Catalogue.Chunk000.chunk_all_ok,
   Catalogue.Chunk001.chunk_all_ok, …,
   Catalogue.Chunk028.chunk_all_ok⟩
```

(The *statement* conjoins the 29 propositions; the *proof* is the anonymous
constructor applied to the 29 chunk theorems.)

`catalogue_all_ok` is a single theorem entailing that **all 14,116 codes** in the
deduplicated catalogue satisfy `ExampleData.OK`: the 29 `checks` lists have
28 × 500 + 116 = 14,116 entries between them, one per code.

Note that `packed/` carries no per-code theorems: the point of this build is the
packaging. For `code_i_ok` and the quantum-error-correction statement `code_i_qec`
code by code, see `../full_native/`, `../kernel_b1b2/` or `../pure/`.

## Relation to the other artifacts

- `../full_native/` — every code with its own `native_decide` theorem
  (`code_i_ok`); fastest to build (~5 min).
- `../kernel_b1b2/` — every code split so support + residue-shift screen are
  discharged in the Lean kernel by `decide` for all 14,116 codes; normalization
  and Z-type KL by `native_decide`.
- **this directory** — the entire catalogue collapsed into one theorem
  `catalogue_all_ok` (no isolated instances). Same `native_decide` trust base as
  `full_native/`.
- `SS/FamilyI/`, `SS/LambdaV2/` — parametric *analytical family* theorems that
  cover infinitely many codes with pure-kernel symbolic proofs.

## Trust base

`chunk_all_ok` (and hence `catalogue_all_ok`) is proved by `native_decide`, so
`#print axioms` lists `Lean.ofReduceBool` and `Lean.trustCompiler` alongside the
usual `propext`, `Classical.choice`, `Quot.sound`. This is the same trust base as
`full_native/`; for a build of the same catalogue with no `native_decide` at all,
see `../pure/`.

The catalogue is also independently re-checked by `../../indep_check_core_multi.py`
(111,315 / 111,315 raw hits pass). That checker is numerical (`float64`, `1e-8`
tolerance), apart from the cross-state Z-expectation equalities which it compares in
exact `Fraction` arithmetic.

## Reproduce

This build is wired into `lake`, so the one-liner is:

```bash
python search/distance2_catalogue/lean_certification/gen_lean.py --mode packed  # (re)generate sources
lake build Catalogue                                                            # compile + verify
```

The `Catalogue` library is declared in the repository `lakefile.lean` with

```lean
lean_lib Catalogue where
  srcDir := "."
  roots  := #[`search.distance2_catalogue.lean_certification.packed.AllOk]
  globs  := #[.submodules `search.distance2_catalogue.lean_certification.packed]
```

so `lake build Catalogue` builds the 29 chunk oleans and then the umbrella
`AllOk` (emitting `catalogue_all_ok`) into `.lake/build/lib/`. It is **not** a
default target (it takes ~5 min), so a plain `lake build` still builds only `SS`.

### Standalone alternative (no lake lib)

`compile_all.sh` reproduces the same result without touching the lakefile: it
compiles each chunk with `-o` to emit `.olean` files and adds the repo root to
`LEAN_PATH` for the umbrella step.

```bash
bash search/distance2_catalogue/lean_certification/packed/compile_all.sh
```

A clean run reports `29/29 chunks OK` followed by
`UMBRELLA OK: catalogue_all_ok type-checks (all 14,116 codes)`.
