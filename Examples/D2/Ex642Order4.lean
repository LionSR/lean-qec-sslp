import SS

namespace Examples.D2.Ex642Order4

open SS SS.Verify

section CatalogueExample_6_4_2_Order4

/-!
### Data-only verification: a $((6,4,2))$ catalogue instance (order 4)

This example is taken from `sslp_general_solutions/General_solutions_of_SSLP.tex`
(the `K=4`, `O=4` entry).

Parameters:
- `n = 6`, `m = 8`, `K = 4`
- weights `w = (1,1,1,3,3,3)` in `ZMod 8`
- residues `S = (0,2,4,6)` (logical order `O = 4`)

We pick a concrete rational point in the reported affine family that yields very sparse
supports (many probabilities become exactly `0` and are omitted from supports).

The support condition and the residue-shift screen are discharged in the Lean
kernel by `decide`, and normalization by an explicit `isNormalizedProb_prob*`
lemma; only the `ZTypeKL'` conjunct still uses `native_decide` (which is why
`Lean.ofReduceBool` and `Lean.trustCompiler` still appear in `#print axioms`).
For the same codes with every conjunct in the kernel, see
`search/distance2_catalogue/lean_certification/pure/`.
-/

local notation "n" => 6
local notation "m" => 8
local notation "K" => 4

local instance : NeZero (m : ℕ) := ⟨by decide⟩

/-- weights `w = (1,1,1,3,3,3)` in `ZMod 8` -/
def a642Order4 : Fin n → ZMod m := ![(1 : ZMod m), 1, 1, 3, 3, 3]

/-- residues `(S0,S1,S2,S3) = (0,2,4,6)` in `ZMod 8` -/
def S642Order4 : Fin K → ZMod m := ![(0 : ZMod m), 2, 4, 6]

/-! basis strings as `Fin 6 → Bool` (0-based indexing) -/
def x000000 : BitString n := ![false,false,false,false,false,false]
def x011110 : BitString n := ![false,true ,true ,true ,true ,false]
def x101101 : BitString n := ![true ,false,true ,true ,false,true ]
def x110011 : BitString n := ![true ,true ,false,false,true ,true ]

/-- support of $|0_L⟩$ (residue 0) -/
def supp0 : Finset (BitString n) := {x000000, x011110, x101101, x110011}


def x011000 : BitString n := ![false,true ,true ,false,false,false]
def x100111 : BitString n := ![true ,false,false,true ,true ,true ]

/-- support of $|1_L⟩$ (residue 2) -/
def supp1 : Finset (BitString n) := {x011000, x100111}


def x001100 : BitString n := ![false,false,true ,true ,false,false]
def x010010 : BitString n := ![false,true ,false,false,true ,false]
def x100001 : BitString n := ![true ,false,false,false,false,true ]
def x111111 : BitString n := ![true ,true ,true ,true ,true ,true ]

/-- support of $|2_L⟩$ (residue 4) -/
def supp2 : Finset (BitString n) := {x001100, x010010, x100001, x111111}


def x000110 : BitString n := ![false,false,false,true ,true ,false]
def x111001 : BitString n := ![true ,true ,true ,false,false,true ]

/-- support of $|3_L⟩$ (residue 6) -/
def supp3 : Finset (BitString n) := {x000110, x111001}

/-- probabilities for $|0_L⟩$ (uniform on `supp0`) -/
def prob0 : BitString n → ℚ :=
  probFour x000000 x011110 x101101 x110011 (1/4) (1/4) (1/4) (1/4)

/-- probabilities for $|1_L⟩$ (uniform on `supp1`) -/
def prob1 : BitString n → ℚ :=
  probTwo x011000 x100111 (1/2) (1/2)

/-- probabilities for $|2_L⟩$ (uniform on `supp2`) -/
def prob2 : BitString n → ℚ :=
  probFour x001100 x010010 x100001 x111111 (1/4) (1/4) (1/4) (1/4)

/-- probabilities for $|3_L⟩$ (uniform on `supp3`) -/
def prob3 : BitString n → ℚ :=
  probTwo x000110 x111001 (1/2) (1/2)

/-- common Z-expectation target (all zero). -/
def targetZ : Fin n → ℚ := ![0, 0, 0, 0, 0, 0]

/-- Bundle all data for the example. -/
def ex642Order4 : ExampleData n m K :=
  { a := a642Order4
    S := S642Order4
    supp := ![supp0, supp1, supp2, supp3]
    prob := ![prob0, prob1, prob2, prob3]
    targetZ := targetZ }

/-- One-line verification of the full example bundle. -/
theorem ex642Order4_ok : ex642Order4.OK := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · decide                -- SSConditionSupport'  (kernel)
  · decide                -- ResidueShiftScreen   (kernel)
  · -- IsNormalizedProb  (kernel, via explicit lemmas)
    intro k
    fin_cases k
    · exact isNormalizedProb_probFour x000000 x011110 x101101 x110011 _ _ _ _
        (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
        (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    · exact isNormalizedProb_probTwo x011000 x100111 _ _
        (by decide) (by norm_num) (by norm_num) (by norm_num)
    · exact isNormalizedProb_probFour x001100 x010010 x100001 x111111 _ _ _ _
        (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
        (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    · exact isNormalizedProb_probTwo x000110 x111001 _ _
        (by decide) (by norm_num) (by norm_num) (by norm_num)
  · native_decide         -- ZTypeKL'

end CatalogueExample_6_4_2_Order4

end Examples.D2.Ex642Order4
