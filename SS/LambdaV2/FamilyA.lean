import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

import SS.Verify
import SS.LambdaV2.Common

/-!
# LambdaV2, Family A

This file formalizes **Family A** from `lambdav2.tex`.

Parameters:
* `n = 5` qubits
* `m = 6`
* weights `w = (4,5,1,2,2)`
* residues `(S0,S1) = (0,3)`

Supports are explicit 3-element subsets of the corresponding SS residue classes.
Probabilities depend on a parameter `lam ∈ [0,1]`.

We verify:
* SS support condition for each logical state
* residue-shift screen
* probability normalization
* Z-type KL via an explicit target `⟨Z_i⟩(lam)`

We also compute `SigmaZ(lam) = ∑ᵢ ⟨Z_i⟩(lam)^2` and its range over `lam ∈ [0,1]`.
-/

namespace SS
namespace LambdaV2
namespace FamilyA

open scoped BigOperators
open Verify

abbrev n : ℕ := 5
abbrev m : ℕ := 6
abbrev K : ℕ := 2

local instance : NeZero (m : ℕ) := ⟨by decide⟩
local instance : DecidableEq (BitString n) := by infer_instance

/-- weights `w = (4,5,1,2,2)` in `ZMod 6` -/
def a : Fin n → ZMod m := ![(4 : ZMod m), 5, 1, 2, 2]

/-- residues `(S0,S1) = (0,3)` in `ZMod 6` -/
def S : Fin K → ZMod m := ![(0 : ZMod m), 3]

/-! ## Basis strings -/

def x10010 : BitString n := ![true,false,false,true,false]

def x11101 : BitString n := ![true,true,true,false,true]

def x01100 : BitString n := ![false,true,true,false,false]

def x11000 : BitString n := ![true,true,false,false,false]

def x10111 : BitString n := ![true,false,true,true,true]

def x00110 : BitString n := ![false,false,true,true,false]

/-- Support `C0 ⊆ C_0(w)` -/
def C0 : Finset (BitString n) := {x10010, x11101, x01100}

/-- Support `C3 ⊆ C_3(w)` -/
def C3 : Finset (BitString n) := {x11000, x10111, x00110}

/-- Probabilities on `C0`, parameterized by `lam`. -/
def prob0 (lam : ℚ) : BitString n → ℚ :=
  probThree x10010 x11101 x01100 ((1 : ℚ) / 2) ((1 - lam) / 2) (lam / 2)

/-- Probabilities on `C3`, parameterized by `lam`. -/
def prob1 (lam : ℚ) : BitString n → ℚ :=
  probThree x11000 x10111 x00110 ((1 : ℚ) / 2) ((1 - lam) / 2) (lam / 2)

/-- Target Z expectations (matching the boxed formula in `lambdav2.tex`). -/
def targetZ (lam : ℚ) : Fin n → ℚ := ![lam - 1, 0, 0, 0, lam]

/-- Bundle the Family-A data as an `ExampleData` value (parameterized by `lam`). -/
def ex (lam : ℚ) : ExampleData n m K :=
  { a := a
    S := S
    supp := ![C0, C3]
    prob := ![prob0 lam, prob1 lam]
    targetZ := targetZ lam }

/-! ## SS conditions and screen (purely finite, discharged by computation) -/

lemma SS_C0 : SSConditionSupport' (m := m) a (S 0) C0 := by
  decide

lemma SS_C3 : SSConditionSupport' (m := m) a (S 1) C3 := by
  decide

lemma screen : ResidueShiftScreen (m := m) a S := by
  decide

/-! ## Probability normalization -/

lemma isNormalized_prob0 (lam : ℚ) (hlam : 0 ≤ lam ∧ lam ≤ 1) :
    IsNormalizedProb (n := n) C0 (prob0 lam) := by
  have h12 : x10010 ≠ x11101 := by decide
  have h13 : x10010 ≠ x01100 := by decide
  have h23 : x11101 ≠ x01100 := by decide

  have hp1 : 0 ≤ (1 : ℚ) / 2 := by norm_num
  have hp2 : 0 ≤ (1 - lam) / 2 := by
    have hnonneg : 0 ≤ (1 - lam) := sub_nonneg.2 hlam.2
    have h2 : 0 < (2 : ℚ) := by norm_num
    exact div_nonneg hnonneg (le_of_lt h2)
  have hp3 : 0 ≤ lam / 2 := by
    have h2 : 0 < (2 : ℚ) := by norm_num
    exact div_nonneg hlam.1 (le_of_lt h2)

  have hsum : (1 : ℚ) / 2 + (1 - lam) / 2 + lam / 2 = 1 := by
    field_simp
    ring

  simpa [C0, prob0] using
    (isNormalizedProb_probThree (n := n)
      x10010 x11101 x01100 ((1 : ℚ) / 2) ((1 - lam) / 2) (lam / 2)
      h12 h13 h23 hp1 hp2 hp3 hsum)

lemma isNormalized_prob1 (lam : ℚ) (hlam : 0 ≤ lam ∧ lam ≤ 1) :
    IsNormalizedProb (n := n) C3 (prob1 lam) := by
  have h12 : x11000 ≠ x10111 := by decide
  have h13 : x11000 ≠ x00110 := by decide
  have h23 : x10111 ≠ x00110 := by decide

  have hp1 : 0 ≤ (1 : ℚ) / 2 := by norm_num
  have hp2 : 0 ≤ (1 - lam) / 2 := by
    have hnonneg : 0 ≤ (1 - lam) := sub_nonneg.2 hlam.2
    have h2 : 0 < (2 : ℚ) := by norm_num
    exact div_nonneg hnonneg (le_of_lt h2)
  have hp3 : 0 ≤ lam / 2 := by
    have h2 : 0 < (2 : ℚ) := by norm_num
    exact div_nonneg hlam.1 (le_of_lt h2)

  have hsum : (1 : ℚ) / 2 + (1 - lam) / 2 + lam / 2 = 1 := by
    field_simp
    ring

  simpa [C3, prob1] using
    (isNormalizedProb_probThree (n := n)
      x11000 x10111 x00110 ((1 : ℚ) / 2) ((1 - lam) / 2) (lam / 2)
      h12 h13 h23 hp1 hp2 hp3 hsum)

/-! ## Z-type KL (explicit computation) -/

lemma zExpectation_C0 (lam : ℚ) :
    ∀ i : Fin n, zExpectation (n := n) C0 (prob0 lam) i = targetZ lam i := by
  intro i
  have h12 : x10010 ≠ x11101 := by decide
  have h13 : x10010 ≠ x01100 := by decide
  have h23 : x11101 ≠ x01100 := by decide

  have hrew :
      zExpectation (n := n) C0 (prob0 lam) i
        = ((1 : ℚ) / 2) * zSign x10010 i
          + ((1 - lam) / 2) * zSign x11101 i
          + (lam / 2) * zSign x01100 i := by
    simpa [C0, prob0] using
      (zExpectation_probThree (n := n)
        x10010 x11101 x01100 ((1 : ℚ) / 2) ((1 - lam) / 2) (lam / 2) i h12 h13 h23)

  rw [hrew]
  fin_cases i <;> simp [targetZ, zSign, x10010, x11101, x01100] <;> ring

lemma zExpectation_C3 (lam : ℚ) :
    ∀ i : Fin n, zExpectation (n := n) C3 (prob1 lam) i = targetZ lam i := by
  intro i
  have h12 : x11000 ≠ x10111 := by decide
  have h13 : x11000 ≠ x00110 := by decide
  have h23 : x10111 ≠ x00110 := by decide

  have hrew :
      zExpectation (n := n) C3 (prob1 lam) i
        = ((1 : ℚ) / 2) * zSign x11000 i
          + ((1 - lam) / 2) * zSign x10111 i
          + (lam / 2) * zSign x00110 i := by
    simpa [C3, prob1] using
      (zExpectation_probThree (n := n)
        x11000 x10111 x00110 ((1 : ℚ) / 2) ((1 - lam) / 2) (lam / 2) i h12 h13 h23)

  rw [hrew]
  fin_cases i <;> simp [targetZ, zSign, x11000, x10111, x00110] <;> ring

lemma zTypeKL' (lam : ℚ) : ZTypeKL' (n := n) K (![C0, C3]) (![prob0 lam, prob1 lam]) (targetZ lam) := by
  intro j i
  fin_cases j
  · simpa using zExpectation_C0 (lam := lam) i
  · simpa using zExpectation_C3 (lam := lam) i

/-- Full bundled verification goal for Family A. -/
theorem ex_ok (lam : ℚ) (hlam : 0 ≤ lam ∧ lam ≤ 1) : (ex lam).OK := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro k
    fin_cases k
    · simpa [ex] using SS_C0
    · simpa [ex] using SS_C3
  · simpa [ex] using screen
  · intro k
    fin_cases k
    · simpa [ex] using isNormalized_prob0 (lam := lam) hlam
    · simpa [ex] using isNormalized_prob1 (lam := lam) hlam
  · simpa [ex] using zTypeKL' (lam := lam)

/-! ## SigmaZ(lam) -/

/-- `SigmaZ(lam)` computed from the target `Z`-marginals. -/
def SigmaZ (lam : ℚ) : ℚ := LambdaV2.SigmaZ (n := n) (targetZ lam)

lemma SigmaZ_eq_poly (lam : ℚ) : SigmaZ lam = 2 * (lam * lam) - 2 * lam + 1 := by
  simp [SigmaZ, LambdaV2.SigmaZ, targetZ, Fin.sum_univ_five]
  ring

/-- Range statement: over `lam ∈ [0,1]`, `SigmaZ(lam) ∈ [1/2,1]`. -/
theorem SigmaZ_range {lam : ℚ} (hlam : 0 ≤ lam ∧ lam ≤ 1) :
    (1 : ℚ) / 2 ≤ SigmaZ lam ∧ SigmaZ lam ≤ 1 := by
  rw [SigmaZ_eq_poly]
  exact SigmaZ_typeI_range hlam

end FamilyA
end LambdaV2
end SS
