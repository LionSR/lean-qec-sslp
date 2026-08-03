# Repository Guide for "Lean-Verified Multi-Agent Discovery of Exact Nonadditive Quantum Codes"


## The Agent Workflow, TeXRA, and What This Repository Contains

The paper describes a role-separated agent workflow, and TeXRA is the interactive
VS Code interface through which that work was carried out
(<https://texra.ai>, Ref. [19] of the paper). TeXRA does not appear anywhere in
the code here, and that is not an oversight in the artifacts: **nothing in this
repository imports TeXRA, requires it to be installed, or contacts a commercial
model.** Every build and audit command below runs under the pinned Lean toolchain
and a standard Python environment alone.

What TeXRA supplied was the *session structure*, not the computation. Stated as a
protocol that can be re-implemented in any framework offering role-specific
sessions with per-role tool permissions over a shared directory:

| Role | Mode and context | Tool permissions | Produces |
| --- | --- | --- | --- |
| Synthesis | derivation-then-edit; SSLP literature and the manuscript draft as context | editing the shared directory | symbolic reformulations, parameter templates, proof goals; after the sweep, closed-form families and no-go arguments |
| Search | tool-use loop | writing and executing Python | canonical enumeration, residue classes, Z-type linear programs, rational reconstruction, recorded outputs |
| Verification | separate tool-use session; **not** given the search transcripts | the Lean 4 compiler and the proof library in `SS/` | Lean sources and the proof terms the kernel accepts |

Two properties of the protocol matter more than the interface:

- **Handoff is by file, not by conversation.** Each role reads what the others
  wrote to the shared project directory. The verification role receives exported
  exact data (supports, rational probabilities, algebraic amplitudes) together
  with a proof goal, rather than the reasoning that produced them.
- **Acceptance is decided by a checker, not by a model.** A result enters the
  paper only after the Lean compiler accepts the corresponding proof term.

The historical sessions themselves cannot be replayed: no prompt, sampling
parameter, random seed, tool-permission snapshot, session transcript, or
failed-attempt log was exported at the time, and none is reconstructed here. What
is on record is the interface, the model version in use at each stage (GPT-5.0
for the distance-2 work, GPT-5.2 for the distance-3 analysis and the Lean
formalization), and the one contemporaneous input record that survives, released
as [`provenance/seed_522.tex`](provenance/seed_522.tex).


## How This Repository Maps to the Paper

### 1. Current manuscript source


The earlier SSLP background paper cited by the manuscript is stored separately in:

- [paper/background-2504.20847/](paper/background-2504.20847/)

### 2. Distance-2 catalogue and search results

The numerical search pipeline and certified catalogue for the distance-2 results live in:

- [search/distance2_catalogue/](search/distance2_catalogue/)

This directory contains:

- the search scripts,
- the independent audit scripts,
- the summary CSV data,
- the full detailed ZIP archives.

At the paper level, this directory is the main repository home for the catalogue and global statistics discussed in the Results section.

### 3. Analytical families extracted from the catalogue

The post-processing and analytic-family extraction materials are in:

- [search/general_solutions/](search/general_solutions/)

This directory includes:

- [General_solutions_of_SSLP.tex](search/general_solutions/General_solutions_of_SSLP.tex),
- the affine post-processing scripts,
- the affine verification and summary scripts.

These materials connect the raw distance-2 catalogue to the analytical structures discussed later in the paper.

### 4. Lean formalization: shared library

The reusable Lean library is in:

- [SS/](SS/)

This directory contains the shared formal machinery for:

- subset-sum support conditions,
- diagonal action,
- Z-type Knill-Laflamme constraints,
- distance-3 verification support,
- analytical family formalization.

### 5. Lean formalization: concrete examples

The example-specific Lean certificates are in:

- [Examples/D2/](Examples/D2/)
- [Examples/D3/](Examples/D3/)

Roughly:

- `Examples/D2/` contains representative distance-2 examples corresponding to the catalogue side of the paper,
- `Examples/D3/` contains exact BD16 distance-3 examples and no-go formalizations.

### 6. Supplemental notes and historical working material

Supporting derivations and explanatory notes are grouped in:

- [notes/](notes/)

In particular:

- [notes/distance3_bd16/](notes/distance3_bd16/) contains the BD16 working note,
- [notes/lambda_families/](notes/lambda_families/) contains the lambda-family and LP derivation notes,
- [notes/wolfram_audit/](notes/wolfram_audit/) contains the Wolfram cross-check materials,
- [notes/lean_explanations/](notes/lean_explanations/) contains an explanatory Lean note.

Presentation files are in:

- [slides/](slides/)

Older or superseded materials retained only for provenance are in:

- [archive/](archive/)

The `archive/aristotle/` subdirectory specifically contains Aristotle-generated internal artifacts that are not part of the maintained formalization; the maintained no-go results live under [Examples/D3/NoGo/](Examples/D3/NoGo/).

## Top-Level Layout

```text
.
├── paper/
├── search/
├── SS/
├── Examples/
├── notes/
├── slides/
└── archive/
```

## Quick Reading Path

If you want the shortest route from the paper to the repository contents:

1. Use [search/distance2_catalogue/](search/distance2_catalogue/) for the distance-2 search and certified catalogue.
2. Use [search/general_solutions/](search/general_solutions/) for analytical extraction from catalogue hits.
3. Use [SS/](SS/) and [Examples/](Examples/) for the Lean formalization.
4. Use [notes/](notes/) only for supporting derivations and cross-checks.

## Lean Build

To check the Lean development:

```bash
lake build
```

On a fresh machine, the first build downloads `mathlib` into `.lake/`.
