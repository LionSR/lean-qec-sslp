import SS

namespace Examples.D2.Ex422

open SS SS.Verify

section Example_4_2_2

/-!
### Data-only verification template: a canonical $((4,2,2))$ instance

This example corresponds to the simplest $m=4$ / $w=(1,1,1,1)$ / residues $(0,2)$ case
appearing in the SSLP catalogue.

We verify the standard distance-2 bundle `ExampleData.OK`:
- SS support condition for each logical state
- residue-shift screen
- probability normalization
- Z-type KL equalities (via an explicit target function)

The support condition and the residue-shift screen are discharged in the Lean
kernel by `decide`, and normalization by an explicit `isNormalizedProb_prob*`
lemma; only the `ZTypeKL'` conjunct still uses `native_decide` (which is why
`Lean.ofReduceBool` and `Lean.trustCompiler` still appear in `#print axioms`).
For the same codes with every conjunct in the kernel, see
`search/distance2_catalogue/lean_certification/pure/`.
-/

local notation "n" => 4
local notation "m" => 4
local notation "K" => 2

local instance : NeZero (m : ℕ) := ⟨by decide⟩

/-- weights `w = (1,1,1,1)` in `ZMod 4` -/
def a422 : Fin n → ZMod m := ![(1 : ZMod m), 1, 1, 1]

/-- residues `(S0,S1) = (0,2)` in `ZMod 4` -/
def S422 : Fin K → ZMod m := ![(0 : ZMod m), 2]

/-! basis strings as `Fin 4 → Bool` (0-based indexing) -/
def x0000 : BitString n := ![false, false, false, false]
def x1111 : BitString n := ![true, true, true, true]
def x0110 : BitString n := ![false, true, true, false]
def x1001 : BitString n := ![true, false, false, true]

/-- support of $|0_L⟩$ -/
def supp0 : Finset (BitString n) := {x0000, x1111}

/-- support of $|1_L⟩$ -/
def supp1 : Finset (BitString n) := {x0110, x1001}

/-- probabilities for the canonical $|0_L⟩$ (uniform) -/
def prob0 : BitString n → ℚ :=
  probTwo x0000 x1111 (1/2) (1/2)

/-- probabilities for the canonical $|1_L⟩$ (uniform) -/
def prob1 : BitString n → ℚ :=
  probTwo x0110 x1001 (1/2) (1/2)

/-- target Z expectations (all zero). -/
def targetZ : Fin n → ℚ := ![0, 0, 0, 0]

/-- Bundle all data for the example. -/
def ex422 : ExampleData n m K :=
  { a := a422
    S := S422
    supp := ![supp0, supp1]
    prob := ![prob0, prob1]
    targetZ := targetZ }

/-- One-line verification of the full example bundle. -/
theorem ex422_ok : ex422.OK := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · decide                -- SSConditionSupport'  (kernel)
  · decide                -- ResidueShiftScreen   (kernel)
  · -- IsNormalizedProb  (kernel, via explicit lemma)
    intro k
    fin_cases k
    · exact isNormalizedProb_probTwo x0000 x1111 _ _
        (by decide) (by norm_num) (by norm_num) (by norm_num)
    · exact isNormalizedProb_probTwo x0110 x1001 _ _
        (by decide) (by norm_num) (by norm_num) (by norm_num)
  · native_decide         -- ZTypeKL'

end Example_4_2_2

end Examples.D2.Ex422
