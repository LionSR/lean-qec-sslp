import SS.FamilyI.Main

/-!
# Analytical Family I (CDQC.tex)

This is the umbrella module for the **Family I** analytical construction from
`2510.20728/CDQC.tex`.

The development is split into submodules:
- `SS.FamilyI.Defs`  : data definitions (weights, supports, probabilities)
- `SS.FamilyI.Common`: small shared lemmas
- `SS.FamilyI.Support`: SS support conditions + residue-shift screen
- `SS.FamilyI.Prob`  : probability normalization
- `SS.FamilyI.ZKL`   : Z-expectations + `ZTypeKL'`
- `SS.FamilyI.Main`  : bundled `ExampleData` + `familyI_OK`
-/
