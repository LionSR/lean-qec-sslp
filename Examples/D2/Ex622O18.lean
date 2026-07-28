import SS

namespace Examples.D2.Ex622O18

open SS SS.Verify

section CatalogueExample_6_2_2_Order18

/-!
### Data-only verification: a high-order $((6,2,2))$ catalogue instance (order 18)

This example is taken from `sslp_general_solutions/General_solutions_of_SSLP.tex`.

Parameters:
- `n = 6`, `m = 18`, `K = 2`
- weights `w = (1,2,3,4,5,6)` in `ZMod 18`
- residues `S = (0,11)` (logical order `O = 18`)

The support condition and the residue-shift screen are discharged in the Lean
kernel by `decide`, and normalization by an explicit `isNormalizedProb_prob*`
lemma; only the `ZTypeKL'` conjunct still uses `native_decide` (which is why
`Lean.ofReduceBool` and `Lean.trustCompiler` still appear in `#print axioms`).
For the same codes with every conjunct in the kernel, see
`search/distance2_catalogue/lean_certification/pure/`.
-/

local notation "n" => 6
local notation "m" => 18
local notation "K" => 2

local instance : NeZero (m : ℕ) := ⟨by decide⟩

/-- weights `w = (1,2,3,4,5,6)` in `ZMod 18` -/
def a622O18 : Fin n → ZMod m :=
  ![(1 : ZMod m), 2, 3, 4, 5, 6]

/-- residues `(S0,S1) = (0,11)` in `ZMod 18` -/
def S622O18 : Fin K → ZMod m := ![(0 : ZMod m), 11]

/-! basis strings as `Fin 6 → Bool` (0-based indexing) -/
def x000000 : BitString n := ![false,false,false,false,false,false]
def x001111 : BitString n := ![false,false,true ,true ,true ,true ]
def x110111 : BitString n := ![true ,true ,false,true ,true ,true ]

/-- support of $|0_L⟩$ -/
def supp0 : Finset (BitString n) := {x000000, x001111, x110111}


def x000011 : BitString n := ![false,false,false,false,true ,true ]
def x010110 : BitString n := ![false,true ,false,true ,true ,false]
def x011001 : BitString n := ![false,true ,true ,false,false,true ]
def x100101 : BitString n := ![true ,false,false,true ,false,true ]
def x111010 : BitString n := ![true ,true ,true ,false,true ,false]

/-- support of $|1_L⟩$ -/
def supp1 : Finset (BitString n) := {x000011, x010110, x011001, x100101, x111010}

/-- probabilities for $|0_L⟩$ (from the TeX catalogue) -/
def prob0 : BitString n → ℚ :=
  probThree x000000 x001111 x110111 (7/18) (1/6) (4/9)

/-- probabilities for $|1_L⟩$ (from the TeX catalogue) -/
def prob1 : BitString n → ℚ :=
  probFive x000011 x010110 x011001 x100101 x111010 (2/9) (5/18) (1/18) (1/3) (1/9)

/-- common Z-expectation target -/
def targetZ : Fin n → ℚ :=
  ![(1 : ℚ) / 9, (1 : ℚ) / 9, (2 : ℚ) / 3, (-2 : ℚ) / 9, (-2 : ℚ) / 9, (-2 : ℚ) / 9]

/-- Bundle all data for the example. -/
def ex622O18 : ExampleData n m K :=
  { a := a622O18
    S := S622O18
    supp := ![supp0, supp1]
    prob := ![prob0, prob1]
    targetZ := targetZ }

/-- One-line verification of the full example bundle. -/
theorem ex622O18_ok : ex622O18.OK := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · decide                -- SSConditionSupport'  (kernel)
  · decide                -- ResidueShiftScreen   (kernel)
  · -- IsNormalizedProb  (kernel, via explicit lemmas)
    intro k
    fin_cases k
    · exact isNormalizedProb_probThree x000000 x001111 x110111 _ _ _
        (by decide) (by decide) (by decide)
        (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    · exact isNormalizedProb_probFive x000011 x010110 x011001 x100101 x111010 _ _ _ _ _
        (by decide) (by decide) (by decide) (by decide) (by decide)
        (by decide) (by decide) (by decide) (by decide) (by decide)
        (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  · native_decide         -- ZTypeKL'

end CatalogueExample_6_2_2_Order18

end Examples.D2.Ex622O18
