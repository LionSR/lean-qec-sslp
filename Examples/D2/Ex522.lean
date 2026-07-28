import SS

namespace Examples.D2.Ex522

open SS SS.Verify

section WorkedExample_5_2_2

/-!
### Data-only verification template: canonical $((5,2,2))$ example

This file is intentionally written in a *data-only* style:

1. define the parameters `(n,m,K)` and the concrete data `(a,S,supp,prob,targetZ)`;
2. discharge the full verification bundle `ex.OK`.

The support condition and the residue-shift screen are discharged in the Lean
kernel by `decide`, and normalization by an explicit `isNormalizedProb_prob*`
lemma; only the `ZTypeKL'` conjunct still uses `native_decide` (which is why
`Lean.ofReduceBool` and `Lean.trustCompiler` still appear in `#print axioms`).
For the same codes with every conjunct in the kernel, see
`search/distance2_catalogue/lean_certification/pure/`.

The bundled check `ex.OK` includes:
- SS support condition for each logical state
- residue-shift screen
- probability normalization
- Z-type KL equalities (via an explicit target function)
-/

local notation "n" => 5
local notation "m" => 7
local notation "K" => 2

local instance : NeZero (m : ℕ) := ⟨by decide⟩

/-- weights `w = (1,1,2,2,2)` in `ZMod 7` -/
def a522 : Fin n → ZMod m := ![(1 : ZMod m), 1, 2, 2, 2]

/-- residues `(S0,S1) = (0,4)` in `ZMod 7` -/
def S522 : Fin K → ZMod m := ![(0 : ZMod m), 4]

/-! basis strings as `Fin 5 → Bool` (0-based indexing) -/
def x00000 : BitString n := ![false,false,false,false,false]
def x01111 : BitString n := ![false,true ,true ,true ,true ]
def x10111 : BitString n := ![true ,false,true ,true ,true ]

def x00011 : BitString n := ![false,false,false,true ,true ]
def x00101 : BitString n := ![false,false,true ,false,true ]
def x00110 : BitString n := ![false,false,true ,true ,false]
def x11001 : BitString n := ![true ,true ,false,false,true ]

/-- support of $|0_L⟩$ -/
def supp0 : Finset (BitString n) := {x00000, x01111, x10111}

/-- support of $|1_L⟩$ -/
def supp1 : Finset (BitString n) := {x00011, x00101, x00110, x11001}

/-- probabilities for the canonical $|0_L⟩$ -/
def prob0 : BitString n → ℚ :=
  probThree x00000 x01111 x10111 (3/7) (2/7) (2/7)

/-- probabilities for the canonical $|1_L⟩$ -/
def prob1 : BitString n → ℚ :=
  probFour x00011 x00101 x00110 x11001 (1/7) (1/7) (3/7) (2/7)

/-- target Z expectations: 3/7 on sites 0,1 and -1/7 on sites 2,3,4 -/
def targetZ : Fin n → ℚ :=
  ![(3 : ℚ) / 7, (3 : ℚ) / 7, (-1 : ℚ) / 7, (-1 : ℚ) / 7, (-1 : ℚ) / 7]

/-- Bundle all data for the example. -/
def ex522 : ExampleData n m K :=
  { a := a522
    S := S522
    supp := ![supp0, supp1]
    prob := ![prob0, prob1]
    targetZ := targetZ }

/-- One-line verification of the full example bundle. -/
theorem ex522_ok : ex522.OK := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · decide                -- SSConditionSupport'  (kernel)
  · decide                -- ResidueShiftScreen   (kernel)
  · -- IsNormalizedProb  (kernel, via explicit lemmas as suggested by the referee)
    intro k
    fin_cases k
    · exact isNormalizedProb_probThree x00000 x01111 x10111 _ _ _
        (by decide) (by decide) (by decide)
        (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    · exact isNormalizedProb_probFour x00011 x00101 x00110 x11001 _ _ _ _
        (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
        (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  · native_decide         -- ZTypeKL'

end WorkedExample_5_2_2

end Examples.D2.Ex522
