import SS

namespace Examples.D2.Ex622

open SS SS.Verify

section WorkedExample_6_2_2_FamilyI

/-!
### Data-only verification template: Family-I $((6,2,2))$ example

This instantiates the analytical Family I construction from CDQC.tex (Methods, §Family I) at

* n = 6
* m = 7
* s = 3

Weights:
  w = (1,1,1,1,1, m-(n-1)) = (1,1,1,1,1,2) in `ZMod 7`
Residues:
  (S0,S1) = (0,3)

Probabilities are the closed-form rationals from Methods (lines 670–681).

As in `Examples/D2/Ex522.lean`, this file is *data-only*.

The support condition and the residue-shift screen are discharged in the Lean kernel
by `decide`; normalization and `ZTypeKL'` use `native_decide`.  Unlike the sibling
examples, normalization is not done by an `isNormalizedProb_prob*` lemma here,
because this example's support is a `Finset.univ.filter` and its probabilities are
conditional on membership, so the `probK` combinators those lemmas are stated for do
not apply.  For the full catalogue with every conjunct discharged in the kernel, see
`search/distance2_catalogue/lean_certification/pure/`.
-/

local notation "n" => 6
local notation "m" => 7
local notation "K" => 2

local instance : NeZero (m : ℕ) := ⟨by decide⟩

/-- Family-I weights `w = (1,1,1,1,1,2)` in `ZMod 7` -/
def a622 : Fin n → ZMod m := ![(1 : ZMod m), 1, 1, 1, 1, 2]

/-- residues `(S0,S1) = (0,3)` in `ZMod 7` -/
def S622 : Fin K → ZMod m := ![(0 : ZMod m), 3]

/-- all-zero bitstring `0^6` -/
def x0 : BitString n := fun _ => false

/-- all-one bitstring `1^6` -/
def x1 : BitString n := fun _ => true

/-- support for $|0_L⟩$ (here `C0 = {0^6,1^6}`) -/
def supp0 : Finset (BitString n) := {x0, x1}

/-- support for $|1_L⟩$ as the residue class `weight = 3` (filtered from `univ`) -/
def supp1 : Finset (BitString n) :=
  Finset.univ.filter (fun s : BitString n => weight a622 s = (3 : ZMod m))

/-- last qubit index (0-based) -/
def last : Fin n := ⟨5, by decide⟩

/-- Family-I probabilities on `C0` -/
def prob0 : BitString n → ℚ :=
  fun s =>
    if s = x0 then (4 : ℚ) / 7
    else if s = x1 then (3 : ℚ) / 7
    else 0

/-- Family-I probabilities on `Cs` (here `s=3`), depending only on the last bit -/
def prob1 : BitString n → ℚ :=
  fun s =>
    if _ : s ∈ supp1 then
      if s last then (3 : ℚ) / 35 else (2 : ℚ) / 35
    else 0

/-- target Z expectation is constant `1 - 2s/m = 1/7` at every site -/
def targetZ : Fin n → ℚ := fun _ => (1 : ℚ) / 7

/-- Bundle all data for the example. -/
def ex622 : ExampleData n m K :=
  { a := a622
    S := S622
    supp := ![supp0, supp1]
    prob := ![prob0, prob1]
    targetZ := targetZ }

/-- One-line verification of the full example bundle. -/
theorem ex622_ok : ex622.OK := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · decide                -- SSConditionSupport'  (kernel)
  · decide                -- ResidueShiftScreen   (kernel)
  · native_decide         -- IsNormalizedProb
  · native_decide         -- ZTypeKL'

end WorkedExample_6_2_2_FamilyI

end Examples.D2.Ex622
