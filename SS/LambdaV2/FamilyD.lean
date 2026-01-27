import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

import SS.Verify
import SS.LambdaV2.Common

/-!
# LambdaV2, Family D

This file formalizes **Family D** from `lambdav2.tex`.

Parameters:
* `n = 5` qubits
* `m = 6`
* weights `w = (3,1,3,5,5)`
* residues `(S0,S1) = (0,4)`

Each logical state has support size 4 and depends on a parameter `lam ∈ [0,1]`.
-/

namespace SS
namespace LambdaV2
namespace FamilyD

open scoped BigOperators
open Verify

abbrev n : ℕ := 5
abbrev m : ℕ := 6
abbrev K : ℕ := 2

local instance : NeZero (m : ℕ) := ⟨by decide⟩
local instance : DecidableEq (BitString n) := by infer_instance

/-- weights `w = (3,1,3,5,5)` in `ZMod 6` -/
def a : Fin n → ZMod m := ![(3 : ZMod m), 1, 3, 5, 5]

/-- residues `(S0,S1) = (0,4)` in `ZMod 6` -/
def S : Fin K → ZMod m := ![(0 : ZMod m), 4]

/-! ## Basis strings -/

def x00000 : BitString n := ![false,false,false,false,false]

def x01001 : BitString n := ![false,true,false,false,true]

def x11101 : BitString n := ![true,true,true,false,true]

def x11110 : BitString n := ![true,true,true,true,false]


def x00011 : BitString n := ![false,false,false,true,true]

def x01100 : BitString n := ![false,true,true,false,false]

def x10111 : BitString n := ![true,false,true,true,true]

def x11000 : BitString n := ![true,true,false,false,false]

/-- Support `C0 ⊆ C_0(w)` -/
def C0 : Finset (BitString n) := {x00000, x01001, x11101, x11110}

/-- Support `C4 ⊆ C_4(w)` -/
def C4 : Finset (BitString n) := {x00011, x01100, x10111, x11000}

/-- Probabilities on `C0`, parameterized by `lam`. -/
def prob0 (lam : ℚ) : BitString n → ℚ :=
  probFour x00000 x01001 x11101 x11110 ((1 : ℚ) / 3) (lam / 3) ((1 - lam) / 3) ((1 : ℚ) / 3)

/-- Probabilities on `C4`, parameterized by `lam`. -/
def prob1 (lam : ℚ) : BitString n → ℚ :=
  probFour x00011 x01100 x10111 x11000 (lam / 3) ((1 : ℚ) / 3) ((1 - lam) / 3) ((1 : ℚ) / 3)

/-- Target Z expectations (matching the boxed formula in `lambdav2.tex`). -/
def targetZ (lam : ℚ) : Fin n → ℚ :=
  ![(2 * lam - 1) / 3, (-1 : ℚ) / 3, (2 * lam - 1) / 3, (1 : ℚ) / 3, (1 : ℚ) / 3]

/-- Bundle the Family-D data as an `ExampleData` value (parameterized by `lam`). -/
def ex (lam : ℚ) : ExampleData n m K :=
  { a := a
    S := S
    supp := ![C0, C4]
    prob := ![prob0 lam, prob1 lam]
    targetZ := targetZ lam }

/-! ## SS conditions and screen (purely finite, discharged by computation) -/

lemma SS_C0 : SSConditionSupport' (m := m) a (S 0) C0 := by
  native_decide

lemma SS_C4 : SSConditionSupport' (m := m) a (S 1) C4 := by
  native_decide

lemma screen : ResidueShiftScreen (m := m) a S := by
  native_decide

/-! ## Probability normalization -/

lemma isNormalized_prob0 (lam : ℚ) (hlam : 0 ≤ lam ∧ lam ≤ 1) :
    IsNormalizedProb (n := n) C0 (prob0 lam) := by
  have h12 : x00000 ≠ x01001 := by decide
  have h13 : x00000 ≠ x11101 := by decide
  have h14 : x00000 ≠ x11110 := by decide
  have h23 : x01001 ≠ x11101 := by decide
  have h24 : x01001 ≠ x11110 := by decide
  have h34 : x11101 ≠ x11110 := by decide

  have hp1 : 0 ≤ (1 : ℚ) / 3 := by norm_num
  have hp2 : 0 ≤ lam / 3 := by
    have h3 : 0 < (3 : ℚ) := by norm_num
    exact div_nonneg hlam.1 (le_of_lt h3)
  have hp3 : 0 ≤ (1 - lam) / 3 := by
    have hnonneg : 0 ≤ (1 - lam) := sub_nonneg.2 hlam.2
    have h3 : 0 < (3 : ℚ) := by norm_num
    exact div_nonneg hnonneg (le_of_lt h3)
  have hp4 : 0 ≤ (1 : ℚ) / 3 := by norm_num

  have hsum : (1 : ℚ) / 3 + lam / 3 + (1 - lam) / 3 + (1 : ℚ) / 3 = 1 := by
    field_simp
    ring

  simpa [C0, prob0] using
    (isNormalizedProb_probFour (n := n)
      x00000 x01001 x11101 x11110 ((1 : ℚ) / 3) (lam / 3) ((1 - lam) / 3) ((1 : ℚ) / 3)
      h12 h13 h14 h23 h24 h34 hp1 hp2 hp3 hp4 hsum)

lemma isNormalized_prob1 (lam : ℚ) (hlam : 0 ≤ lam ∧ lam ≤ 1) :
    IsNormalizedProb (n := n) C4 (prob1 lam) := by
  have h12 : x00011 ≠ x01100 := by decide
  have h13 : x00011 ≠ x10111 := by decide
  have h14 : x00011 ≠ x11000 := by decide
  have h23 : x01100 ≠ x10111 := by decide
  have h24 : x01100 ≠ x11000 := by decide
  have h34 : x10111 ≠ x11000 := by decide

  have hp1 : 0 ≤ lam / 3 := by
    have h3 : 0 < (3 : ℚ) := by norm_num
    exact div_nonneg hlam.1 (le_of_lt h3)
  have hp2 : 0 ≤ (1 : ℚ) / 3 := by norm_num
  have hp3 : 0 ≤ (1 - lam) / 3 := by
    have hnonneg : 0 ≤ (1 - lam) := sub_nonneg.2 hlam.2
    have h3 : 0 < (3 : ℚ) := by norm_num
    exact div_nonneg hnonneg (le_of_lt h3)
  have hp4 : 0 ≤ (1 : ℚ) / 3 := by norm_num

  have hsum : lam / 3 + (1 : ℚ) / 3 + (1 - lam) / 3 + (1 : ℚ) / 3 = 1 := by
    field_simp
    ring

  simpa [C4, prob1] using
    (isNormalizedProb_probFour (n := n)
      x00011 x01100 x10111 x11000 (lam / 3) ((1 : ℚ) / 3) ((1 - lam) / 3) ((1 : ℚ) / 3)
      h12 h13 h14 h23 h24 h34 hp1 hp2 hp3 hp4 hsum)

/-! ## Z-type KL (explicit computation) -/

lemma zExpectation_C0 (lam : ℚ) :
    ∀ i : Fin n, zExpectation (n := n) C0 (prob0 lam) i = targetZ lam i := by
  classical
  intro i
  fin_cases i
  all_goals
    have h0 : x00000 ∉ ({x01001, x11101, x11110} : Finset (BitString n)) := by decide
    have h1 : x01001 ∉ ({x11101, x11110} : Finset (BitString n)) := by decide
    have h2 : x11101 ∉ ({x11110} : Finset (BitString n)) := by decide

    have h01001_0 : x01001 ≠ x00000 := by decide
    have h11101_0 : x11101 ≠ x00000 := by decide
    have h11101_1 : x11101 ≠ x01001 := by decide
    have h11110_0 : x11110 ≠ x00000 := by decide
    have h11110_1 : x11110 ≠ x01001 := by decide
    have h11110_2 : x11110 ≠ x11101 := by decide

    simp [zExpectation, C0, Finset.sum_insert, Finset.sum_singleton,
      h0, h1, h2, prob0, targetZ, zSign,
      h01001_0, h11101_0, h11101_1, h11110_0, h11110_1, h11110_2,
      x00000, x01001, x11101, x11110]
    field_simp
    ring_nf

lemma zExpectation_C4 (lam : ℚ) :
    ∀ i : Fin n, zExpectation (n := n) C4 (prob1 lam) i = targetZ lam i := by
  classical
  intro i
  fin_cases i
  all_goals
    have h0 : x00011 ∉ ({x01100, x10111, x11000} : Finset (BitString n)) := by decide
    have h1 : x01100 ∉ ({x10111, x11000} : Finset (BitString n)) := by decide
    have h2 : x10111 ∉ ({x11000} : Finset (BitString n)) := by decide

    have h01100_0 : x01100 ≠ x00011 := by decide
    have h10111_0 : x10111 ≠ x00011 := by decide
    have h10111_1 : x10111 ≠ x01100 := by decide
    have h11000_0 : x11000 ≠ x00011 := by decide
    have h11000_1 : x11000 ≠ x01100 := by decide
    have h11000_2 : x11000 ≠ x10111 := by decide

    simp [zExpectation, C4, Finset.sum_insert, Finset.sum_singleton,
      h0, h1, h2, prob1, targetZ, zSign,
      h01100_0, h10111_0, h10111_1, h11000_0, h11000_1, h11000_2,
      x00011, x01100, x10111, x11000]
    field_simp
    ring_nf

lemma zTypeKL' (lam : ℚ) : ZTypeKL' (n := n) K (![C0, C4]) (![prob0 lam, prob1 lam]) (targetZ lam) := by
  intro j i
  fin_cases j
  · simpa using zExpectation_C0 (lam := lam) i
  · simpa using zExpectation_C4 (lam := lam) i

/-- Full bundled verification goal for Family D. -/
theorem ex_ok (lam : ℚ) (hlam : 0 ≤ lam ∧ lam ≤ 1) : (ex lam).OK := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro k
    fin_cases k
    · simpa [ex] using SS_C0
    · simpa [ex] using SS_C4
  · simpa [ex] using screen
  · intro k
    fin_cases k
    · simpa [ex] using isNormalized_prob0 (lam := lam) hlam
    · simpa [ex] using isNormalized_prob1 (lam := lam) hlam
  · simpa [ex] using zTypeKL' (lam := lam)

/-! ## SigmaZ(lam) -/

/-- `SigmaZ(lam)` computed from the target `Z`-marginals. -/
def SigmaZ (lam : ℚ) : ℚ := LambdaV2.SigmaZ (n := n) (targetZ lam)

lemma SigmaZ_eq_poly (lam : ℚ) : SigmaZ lam = (8 * (lam * lam) - 8 * lam + 5) / 9 := by
  simp [SigmaZ, LambdaV2.SigmaZ, targetZ, Fin.sum_univ_five]
  field_simp
  ring

/-- Range statement: over `lam ∈ [0,1]`, `SigmaZ(lam) ∈ [1/3, 5/9]`. -/
theorem SigmaZ_range {lam : ℚ} (hlam : 0 ≤ lam ∧ lam ≤ 1) : (1 : ℚ) / 3 ≤ SigmaZ lam ∧ SigmaZ lam ≤ (5 : ℚ) / 9 := by
  -- identical to Families B/C
  have hlow : (1 : ℚ) / 3 ≤ SigmaZ lam := by
    have hsq : 0 ≤ (lam - (1 : ℚ) / 2) * (lam - (1 : ℚ) / 2) := by
      simpa using (mul_self_nonneg (lam - (1 : ℚ) / 2))
    have h9pos : 0 < (9 : ℚ) := by norm_num
    have hdiff :
        SigmaZ lam - (1 : ℚ) / 3 = (8 * ((lam - (1 : ℚ) / 2) * (lam - (1 : ℚ) / 2))) / 9 := by
      simp [SigmaZ_eq_poly]
      field_simp
      ring
    have hsub : 0 ≤ SigmaZ lam - (1 : ℚ) / 3 := by
      rw [hdiff]
      refine div_nonneg (mul_nonneg (by norm_num) hsq) (le_of_lt h9pos)
    exact (sub_nonneg).1 hsub

  have hup : SigmaZ lam ≤ (5 : ℚ) / 9 := by
    have hprod : 0 ≤ lam * (1 - lam) := by
      refine mul_nonneg hlam.1 ?_
      exact sub_nonneg.2 hlam.2
    have h9pos : 0 < (9 : ℚ) := by norm_num
    have hdiff : (5 : ℚ) / 9 - SigmaZ lam = (8 * (lam * (1 - lam))) / 9 := by
      simp [SigmaZ_eq_poly]
      field_simp
      ring
    have hsub : 0 ≤ (5 : ℚ) / 9 - SigmaZ lam := by
      rw [hdiff]
      refine div_nonneg (mul_nonneg (by norm_num) hprod) (le_of_lt h9pos)
    exact (sub_nonneg).1 hsub

  exact ⟨hlow, hup⟩

end FamilyD
end LambdaV2
end SS
