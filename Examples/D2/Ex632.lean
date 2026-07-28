import SS

namespace Examples.D2.Ex632

open SS SS.Verify

section CatalogueExample_6_3_2

/-!
### Data-only verification: a representative $((6,3,2))$ catalogue instance

This example is taken from `sslp_general_solutions/General_solutions_of_SSLP.tex`.

Parameters:
- `n = 6`, `m = 12`, `K = 3`
- weights `w = (1,1,1,5,5,7)` in `ZMod 12`
- residues `S = (0,6,10)` (logical order `O = 6`)

We pick a concrete rational point in the reported affine family so that all
probabilities are nonnegative.

The support condition and the residue-shift screen are discharged in the Lean
kernel by `decide`, and normalization by an explicit `isNormalizedProb_prob*`
lemma; only the `ZTypeKL'` conjunct still uses `native_decide` (which is why
`Lean.ofReduceBool` and `Lean.trustCompiler` still appear in `#print axioms`).
For the same codes with every conjunct in the kernel, see
`search/distance2_catalogue/lean_certification/pure/`.
-/

local notation "n" => 6
local notation "m" => 12
local notation "K" => 3

local instance : NeZero (m : ℕ) := ⟨by decide⟩

/-- weights `w = (1,1,1,5,5,7)` in `ZMod 12` -/
def a632 : Fin n → ZMod m := ![(1 : ZMod m), 1, 1, 5, 5, 7]

/-- residues `(S0,S1,S2) = (0,6,10)` in `ZMod 12` -/
def S632 : Fin K → ZMod m := ![(0 : ZMod m), 6, 10]

/-! basis strings as `Fin 6 → Bool` (0-based indexing) -/
def x000000 : BitString n := ![false,false,false,false,false,false]
def x000011 : BitString n := ![false,false,false,false,true ,true ]
def x000101 : BitString n := ![false,false,false,true ,false,true ]
def x011110 : BitString n := ![false,true ,true ,true ,true ,false]
def x101110 : BitString n := ![true ,false,true ,true ,true ,false]
def x110110 : BitString n := ![true ,true ,false,true ,true ,false]

def x001100 : BitString n := ![false,false,true ,true ,false,false]
def x001111 : BitString n := ![false,false,true ,true ,true ,true ]
def x010010 : BitString n := ![false,true ,false,false,true ,false]
def x010100 : BitString n := ![false,true ,false,true ,false,false]
def x010111 : BitString n := ![false,true ,false,true ,true ,true ]
def x100010 : BitString n := ![true ,false,false,false,true ,false]
def x100100 : BitString n := ![true ,false,false,true ,false,false]
def x100111 : BitString n := ![true ,false,false,true ,true ,true ]

def x000110 : BitString n := ![false,false,false,true ,true ,false]
def x111001 : BitString n := ![true ,true ,true ,false,false,true ]

/-- support of $|0_L⟩$ (residue 0) -/
def supp0 : Finset (BitString n) := {x000000, x000011, x000101, x011110, x101110, x110110}

/-- support of $|1_L⟩$ (residue 6); we omit one zero-probability basis string from the TeX family -/
def supp1 : Finset (BitString n) :=
  {x001100, x001111, x010010, x010100, x010111, x100010, x100100, x100111}

/-- support of $|2_L⟩$ (residue 10) -/
def supp2 : Finset (BitString n) := {x000110, x111001}

/-- probabilities for $|0_L⟩$ (uniform on `supp0`) -/
def prob0 : BitString n → ℚ :=
  probSix x000000 x000011 x000101 x011110 x101110 x110110 (1/6) (1/6) (1/6) (1/6) (1/6) (1/6)

/-- probabilities for $|1_L⟩$ (a concrete rational point in the affine family) -/
def prob1 : BitString n → ℚ :=
  probEight x001100 x001111 x010010 x010100 x010111 x100010 x100100 x100111
    (1/6) (1/6) (1/6) (1/12) (1/12) (1/6) (1/12) (1/12)

/-- probabilities for $|2_L⟩$ -/
def prob2 : BitString n → ℚ :=
  probTwo x000110 x111001 (2/3) (1/3)

/-- common Z-expectation target (verified by `native_decide`) -/
def targetZ : Fin n → ℚ :=
  ![(1 : ℚ) / 3, (1 : ℚ) / 3, (1 : ℚ) / 3, (-1 : ℚ) / 3, (-1 : ℚ) / 3, (1 : ℚ) / 3]

/-- Bundle all data for the example. -/
def ex632 : ExampleData n m K :=
  { a := a632
    S := S632
    supp := ![supp0, supp1, supp2]
    prob := ![prob0, prob1, prob2]
    targetZ := targetZ }

/-- One-line verification of the full example bundle. -/
theorem ex632_ok : ex632.OK := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · decide                -- SSConditionSupport'  (kernel)
  · decide                -- ResidueShiftScreen   (kernel)
  · -- IsNormalizedProb  (kernel, via explicit lemmas)
    intro k
    fin_cases k
    · exact isNormalizedProb_probSix x000000 x000011 x000101 x011110 x101110 x110110 _ _ _ _ _ _
        (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    · exact isNormalizedProb_probEight x001100 x001111 x010010 x010100 x010111 x100010 x100100 x100111
        _ _ _ _ _ _ _ _ (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    · exact isNormalizedProb_probTwo x000110 x111001 _ _
        (by decide) (by norm_num) (by norm_num) (by norm_num)
  · native_decide         -- ZTypeKL'

end CatalogueExample_6_3_2

end Examples.D2.Ex632
