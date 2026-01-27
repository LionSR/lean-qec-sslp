import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

import SS.Verify
import SS.LambdaV2.Common

/-!
# LambdaV2, Family C

This file formalizes **Family C** from `lambdav2.tex`.

Parameters:
* `n = 5` qubits
* `m = 6`
* weights `w = (3,3,1,1,1)`
* residues `(S0,S1) = (0,4)`

Each logical state has support size 4 and depends on a parameter `lam ∈ [0,1]`.
-/

namespace SS
namespace LambdaV2
namespace FamilyC

open scoped BigOperators
open Verify

abbrev n : ℕ := 5
abbrev m : ℕ := 6
abbrev K : ℕ := 2

local instance : NeZero (m : ℕ) := ⟨by decide⟩
local instance : DecidableEq (BitString n) := by infer_instance

/-- weights `w = (3,3,1,1,1)` in `ZMod 6` -/
def a : Fin n → ZMod m := ![(3 : ZMod m), 3, 1, 1, 1]

/-- residues `(S0,S1) = (0,4)` in `ZMod 6` -/
def S : Fin K → ZMod m := ![(0 : ZMod m), 4]

/-! ## Basis strings -/

def x00000 : BitString n := ![false,false,false,false,false]

def x01111 : BitString n := ![false,true,true,true,true]

def x10111 : BitString n := ![true,false,true,true,true]

def x11000 : BitString n := ![true,true,false,false,false]


def x01001 : BitString n := ![false,true,false,false,true]

def x01100 : BitString n := ![false,true,true,false,false]

def x10010 : BitString n := ![true,false,false,true,false]

def x10100 : BitString n := ![true,false,true,false,false]

/-- Support `C0 ⊆ C_0(w)` -/
def C0 : Finset (BitString n) := {x00000, x01111, x10111, x11000}

/-- Support `C4 ⊆ C_4(w)` -/
def C4 : Finset (BitString n) := {x01001, x01100, x10010, x10100}

/-- Probabilities on `C0`, parameterized by `lam`. -/
def prob0 (lam : ℚ) : BitString n → ℚ :=
  probFour x00000 x01111 x10111 x11000 ((1 : ℚ) / 3) (lam / 3) ((1 - lam) / 3) ((1 : ℚ) / 3)

/-- Probabilities on `C4`, parameterized by `lam`. -/
def prob1 (lam : ℚ) : BitString n → ℚ :=
  probFour x01001 x01100 x10010 x10100 ((1 : ℚ) / 3) (lam / 3) ((1 : ℚ) / 3) ((1 - lam) / 3)

/-- Target Z expectations (matching the boxed formula in `lambdav2.tex`). -/
def targetZ (lam : ℚ) : Fin n → ℚ :=
  ![(2 * lam - 1) / 3, (1 - 2 * lam) / 3, (1 : ℚ) / 3, (1 : ℚ) / 3, (1 : ℚ) / 3]

/-- Bundle the Family-C data as an `ExampleData` value (parameterized by `lam`). -/
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
  have h12 : x00000 ≠ x01111 := by decide
  have h13 : x00000 ≠ x10111 := by decide
  have h14 : x00000 ≠ x11000 := by decide
  have h23 : x01111 ≠ x10111 := by decide
  have h24 : x01111 ≠ x11000 := by decide
  have h34 : x10111 ≠ x11000 := by decide

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
      x00000 x01111 x10111 x11000 ((1 : ℚ) / 3) (lam / 3) ((1 - lam) / 3) ((1 : ℚ) / 3)
      h12 h13 h14 h23 h24 h34 hp1 hp2 hp3 hp4 hsum)

lemma isNormalized_prob1 (lam : ℚ) (hlam : 0 ≤ lam ∧ lam ≤ 1) :
    IsNormalizedProb (n := n) C4 (prob1 lam) := by
  have h12 : x01001 ≠ x01100 := by decide
  have h13 : x01001 ≠ x10010 := by decide
  have h14 : x01001 ≠ x10100 := by decide
  have h23 : x01100 ≠ x10010 := by decide
  have h24 : x01100 ≠ x10100 := by decide
  have h34 : x10010 ≠ x10100 := by decide

  have hp1 : 0 ≤ (1 : ℚ) / 3 := by norm_num
  have hp2 : 0 ≤ lam / 3 := by
    have h3 : 0 < (3 : ℚ) := by norm_num
    exact div_nonneg hlam.1 (le_of_lt h3)
  have hp3 : 0 ≤ (1 : ℚ) / 3 := by norm_num
  have hp4 : 0 ≤ (1 - lam) / 3 := by
    have hnonneg : 0 ≤ (1 - lam) := sub_nonneg.2 hlam.2
    have h3 : 0 < (3 : ℚ) := by norm_num
    exact div_nonneg hnonneg (le_of_lt h3)

  have hsum : (1 : ℚ) / 3 + lam / 3 + (1 : ℚ) / 3 + (1 - lam) / 3 = 1 := by
    field_simp
    ring

  simpa [C4, prob1] using
    (isNormalizedProb_probFour (n := n)
      x01001 x01100 x10010 x10100 ((1 : ℚ) / 3) (lam / 3) ((1 : ℚ) / 3) ((1 - lam) / 3)
      h12 h13 h14 h23 h24 h34 hp1 hp2 hp3 hp4 hsum)

/-! ## Z-type KL (explicit computation) -/

lemma zExpectation_C0 (lam : ℚ) :
    ∀ i : Fin n, zExpectation (n := n) C0 (prob0 lam) i = targetZ lam i := by
  intro i
  have h12 : x00000 ≠ x01111 := by decide
  have h13 : x00000 ≠ x10111 := by decide
  have h14 : x00000 ≠ x11000 := by decide
  have h23 : x01111 ≠ x10111 := by decide
  have h24 : x01111 ≠ x11000 := by decide
  have h34 : x10111 ≠ x11000 := by decide

  have hrew :
      zExpectation (n := n) C0 (prob0 lam) i
        = ((1 : ℚ) / 3) * zSign x00000 i
          + (lam / 3) * zSign x01111 i
          + ((1 - lam) / 3) * zSign x10111 i
          + ((1 : ℚ) / 3) * zSign x11000 i := by
    simpa [C0, prob0] using
      (zExpectation_probFour (n := n)
        x00000 x01111 x10111 x11000 ((1 : ℚ) / 3) (lam / 3) ((1 - lam) / 3) ((1 : ℚ) / 3) i
        h12 h13 h14 h23 h24 h34)

  rw [hrew]
  fin_cases i <;> simp [targetZ, zSign, x00000, x01111, x10111, x11000] <;> ring

lemma zExpectation_C4 (lam : ℚ) :
    ∀ i : Fin n, zExpectation (n := n) C4 (prob1 lam) i = targetZ lam i := by
  intro i
  have h12 : x01001 ≠ x01100 := by decide
  have h13 : x01001 ≠ x10010 := by decide
  have h14 : x01001 ≠ x10100 := by decide
  have h23 : x01100 ≠ x10010 := by decide
  have h24 : x01100 ≠ x10100 := by decide
  have h34 : x10010 ≠ x10100 := by decide

  have hrew :
      zExpectation (n := n) C4 (prob1 lam) i
        = ((1 : ℚ) / 3) * zSign x01001 i
          + (lam / 3) * zSign x01100 i
          + ((1 : ℚ) / 3) * zSign x10010 i
          + ((1 - lam) / 3) * zSign x10100 i := by
    simpa [C4, prob1] using
      (zExpectation_probFour (n := n)
        x01001 x01100 x10010 x10100 ((1 : ℚ) / 3) (lam / 3) ((1 : ℚ) / 3) ((1 - lam) / 3) i
        h12 h13 h14 h23 h24 h34)

  rw [hrew]
  fin_cases i <;> simp [targetZ, zSign, x01001, x01100, x10010, x10100] <;> ring

lemma zTypeKL' (lam : ℚ) : ZTypeKL' (n := n) K (![C0, C4]) (![prob0 lam, prob1 lam]) (targetZ lam) := by
  intro j i
  fin_cases j
  · simpa using zExpectation_C0 (lam := lam) i
  · simpa using zExpectation_C4 (lam := lam) i

/-- Full bundled verification goal for Family C. -/
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
theorem SigmaZ_range {lam : ℚ} (hlam : 0 ≤ lam ∧ lam ≤ 1) :
    (1 : ℚ) / 3 ≤ SigmaZ lam ∧ SigmaZ lam ≤ (5 : ℚ) / 9 := by
  rw [SigmaZ_eq_poly]
  exact SigmaZ_typeII_range hlam

end FamilyC
end LambdaV2
end SS
