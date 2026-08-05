# Provenance

What the workflow was given, what it produced, and which model did which part.

## The seed

[`seed_522.tex`](seed_522.tex) is the initial input to the project: a worked
$((5,2,2))$ subset-sum derivation — weights $\mathbf w=(1,1,2,2,2)$, modulus $m=7$,
residues $(S_0,S_1)=(0,4)$ — written by hand by one of the authors and given to
GPT-5 as the starting point. **At that stage there was no agent framework**: a human
posed this document directly to the model. There are consequently no agent
configuration files for it, because there was nothing yet to configure.

It is not a paraphrase or a reconstruction. The same derivation is reproduced in
full as Sec. 2.3 of [arXiv:2510.20728v1](https://arxiv.org/abs/2510.20728v1)
(23 October 2025), which is a public, timestamped record independent of this
repository.

The same code is what [`Examples/D2/Ex522.lean`](../Examples/D2/Ex522.lean)
certifies. The correspondence is exact:

| | `seed_522.tex` | `Examples/D2/Ex522.lean` |
|---|---|---|
| support of $\lvert 0_L\rangle$ | `00000, 01111, 10111` | `{x00000, x01111, x10111}` |
| probabilities | $3/7,\,2/7,\,2/7$ | `probThree … (3/7) (2/7) (2/7)` |
| support of $\lvert 1_L\rangle$ | `00011, 00101, 00110, 11001` | `{x00011, x00101, x00110, x11001}` |
| probabilities | $1/7,\,1/7,\,3/7,\,2/7$ | `probFour … (1/7) (1/7) (3/7) (2/7)` |
| $\langle Z_i\rangle$ | $3/7$ ($i=1,2$), $-1/7$ ($i=3,4,5$) | `![3/7, 3/7, -1/7, -1/7, -1/7]` |

So one example runs the whole length of the project: a human-written seed, the
model's analysis, and a machine-checked certificate whose four proof branches can be
read side by side with it.

## Stages and models

| Stage | Model | Form | Record |
|---|---|---|---|
| Distance-2 seed | GPT-5.0 | human posing a worked example directly; no agent | `seed_522.tex`; arXiv:2510.20728v1 §2.3 |
| Distance-2 search and synthesis | GPT-5.0 | TeXRA | *(not retained)* |
| Distance-3 and Lean formalization | GPT-5.2 | TeXRA, staged agents reporting per stage | *(not retained)* |

Cells marked *(not retained)* are empty because the sessions were never exported;
they are left empty rather than reconstructed after the fact.
Lean entered the workflow only at the GPT-5.2 stage.

## TeXRA

[TeXRA](https://texra.ai) is the VS Code interface through which the models were
used. It is **not** imported by, and is not a runtime dependency of, the Python and
Lean artifacts in this repository, which is why its name does not appear anywhere in
the code: none of the checks reported in the paper needs TeXRA — or a commercial
model — in order to run. Everything under `search/` and `SS/` is reproducible with
`python` and `lake` alone; see [`CHANGES.md`](../CHANGES.md) §4 and
[`VERIFICATION.md`](../search/distance2_catalogue/lean_certification/VERIFICATION.md).
