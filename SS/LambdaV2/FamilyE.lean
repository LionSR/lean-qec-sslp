import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

import SS.Verify
import SS.LambdaV2.Common

/-!
# LambdaV2, Family E

This file formalizes **Family E** from `lambdav2.tex`.

Parameters:
* `n = 5` qubits
* `m = 8`
* weights `w = (1,6,2,5,5)`
* residues `(S0,S1) = (0,4)`

Each logical state has support size 3 and depends on a parameter `lam ∈ [0,1]`.
-/

namespace SS
namespace LambdaV2
namespace FamilyE

open scoped BigOperators
open Verify

abbrev n : ℕ := 5
abbrev m : ℕ := 8
abbrev K : ℕ := 2

local instance : NeZero (m : ℕ) := ⟨by decide⟩
local instance : DecidableEq (BitString n) := by infer_instance

/-- weights `w = (1,6,2,5,5)` in `ZMod 8` -/
def a : Fin n → ZMod m := ![(1 : ZMod m), 6, 2, 5, 5]

/-- residues `(S0,S1) = (0,4)` in `ZMod 8` -/
def S : Fin K → ZMod m := ![(0 : ZMod m), 4]

/-! ## Basis strings -/

def x01011 : BitString n := ![false,true,false,true,true]

def x10110 : BitString n := ![true,false,true,true,false]

def x10101 : BitString n := ![true,false,true,false,true]


def x00111 : BitString n := ![false,false,true,true,true]

def x11010 : BitString n := ![true,true,false,true,false]

def x11001 : BitString n := ![true,true,false,false,true]

/-- Support `C0 ⊆ C_0(w)` -/
def C0 : Finset (BitString n) := {x01011, x10110, x10101}

/-- Support `C4 ⊆ C_4(w)` -/
def C4 : Finset (BitString n) := {x00111, x11010, x11001}

/-- Probabilities on `C0`, parameterized by `lam`. -/
def prob0 (lam : ℚ) : BitString n → ℚ :=
  probThree x01011 x10110 x10101 ((1 : ℚ) / 2) ((1 - lam) / 2) (lam / 2)

/-- Probabilities on `C4`, parameterized by `lam`. -/
def prob1 (lam : ℚ) : BitString n → ℚ :=
  probThree x00111 x11010 x11001 ((1 : ℚ) / 2) ((1 - lam) / 2) (lam / 2)

/-- Target Z expectations (matching the boxed formula in `lambdav2.tex`). -/
def targetZ (lam : ℚ) : Fin n → ℚ := ![0, 0, 0, lam - 1, -lam]

/-- Bundle the Family-E data as an `ExampleData` value (parameterized by `lam`). -/
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
  have h12 : x01011 ≠ x10110 := by decide
  have h13 : x01011 ≠ x10101 := by decide
  have h23 : x10110 ≠ x10101 := by decide

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
      x01011 x10110 x10101 ((1 : ℚ) / 2) ((1 - lam) / 2) (lam / 2)
      h12 h13 h23 hp1 hp2 hp3 hsum)

lemma isNormalized_prob1 (lam : ℚ) (hlam : 0 ≤ lam ∧ lam ≤ 1) :
    IsNormalizedProb (n := n) C4 (prob1 lam) := by
  have h12 : x00111 ≠ x11010 := by decide
  have h13 : x00111 ≠ x11001 := by decide
  have h23 : x11010 ≠ x11001 := by decide

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

  simpa [C4, prob1] using
    (isNormalizedProb_probThree (n := n)
      x00111 x11010 x11001 ((1 : ℚ) / 2) ((1 - lam) / 2) (lam / 2)
      h12 h13 h23 hp1 hp2 hp3 hsum)

/-! ## Z-type KL (explicit computation) -/

lemma zExpectation_C0 (lam : ℚ) :
    ∀ i : Fin n, zExpectation (n := n) C0 (prob0 lam) i = targetZ lam i := by
  intro i
  have h12 : x01011 ≠ x10110 := by decide
  have h13 : x01011 ≠ x10101 := by decide
  have h23 : x10110 ≠ x10101 := by decide

  have hrew :
      zExpectation (n := n) C0 (prob0 lam) i
        = ((1 : ℚ) / 2) * zSign x01011 i
          + ((1 - lam) / 2) * zSign x10110 i
          + (lam / 2) * zSign x10101 i := by
    simpa [C0, prob0] using
      (zExpectation_probThree (n := n)
        x01011 x10110 x10101 ((1 : ℚ) / 2) ((1 - lam) / 2) (lam / 2) i h12 h13 h23)

  rw [hrew]
  fin_cases i <;> simp [targetZ, zSign, x01011, x10110, x10101] <;> ring

lemma zExpectation_C4 (lam : ℚ) :
    ∀ i : Fin n, zExpectation (n := n) C4 (prob1 lam) i = targetZ lam i := by
  intro i
  have h12 : x00111 ≠ x11010 := by decide
  have h13 : x00111 ≠ x11001 := by decide
  have h23 : x11010 ≠ x11001 := by decide

  have hrew :
      zExpectation (n := n) C4 (prob1 lam) i
        = ((1 : ℚ) / 2) * zSign x00111 i
          + ((1 - lam) / 2) * zSign x11010 i
          + (lam / 2) * zSign x11001 i := by
    simpa [C4, prob1] using
      (zExpectation_probThree (n := n)
        x00111 x11010 x11001 ((1 : ℚ) / 2) ((1 - lam) / 2) (lam / 2) i h12 h13 h23)

  rw [hrew]
  fin_cases i <;> simp [targetZ, zSign, x00111, x11010, x11001] <;> ring

lemma zTypeKL' (lam : ℚ) : ZTypeKL' (n := n) K (![C0, C4]) (![prob0 lam, prob1 lam]) (targetZ lam) := by
  intro j i
  fin_cases j
  · simpa using zExpectation_C0 (lam := lam) i
  · simpa using zExpectation_C4 (lam := lam) i

/-- Full bundled verification goal for Family E. -/
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

lemma SigmaZ_eq_poly (lam : ℚ) : SigmaZ lam = 2 * (lam * lam) - 2 * lam + 1 := by
  simp [SigmaZ, LambdaV2.SigmaZ, targetZ, Fin.sum_univ_five]
  ring

/-- Range statement: over `lam ∈ [0,1]`, `SigmaZ(lam) ∈ [1/2,1]`. -/
theorem SigmaZ_range {lam : ℚ} (hlam : 0 ≤ lam ∧ lam ≤ 1) :
    (1 : ℚ) / 2 ≤ SigmaZ lam ∧ SigmaZ lam ≤ 1 := by
  rw [SigmaZ_eq_poly]
  exact SigmaZ_typeI_range hlam

end FamilyE
end LambdaV2
end SS
