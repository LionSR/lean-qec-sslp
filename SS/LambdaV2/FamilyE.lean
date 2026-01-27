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
  fun x =>
    if x = x01011 then (1 : ℚ) / 2
    else if x = x10110 then (1 - lam) / 2
    else if x = x10101 then lam / 2
    else 0

/-- Probabilities on `C4`, parameterized by `lam`. -/
def prob1 (lam : ℚ) : BitString n → ℚ :=
  fun x =>
    if x = x00111 then (1 : ℚ) / 2
    else if x = x11010 then (1 - lam) / 2
    else if x = x11001 then lam / 2
    else 0

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
  classical
  refine ⟨?_, ?_, ?_⟩
  · intro x hx
    have hx0 : x ≠ x01011 := by intro h; apply hx; simp [C0, h]
    have hx1 : x ≠ x10110 := by intro h; apply hx; simp [C0, h]
    have hx2 : x ≠ x10101 := by intro h; apply hx; simp [C0, h]
    simp [prob0, hx0, hx1, hx2]
  · intro x hx
    have hx' : x = x01011 ∨ x = x10110 ∨ x = x10101 := by
      simpa [C0] using hx
    rcases hx' with rfl | rfl | rfl
    · norm_num [prob0]
    ·
      have hnonneg : 0 ≤ (1 - lam) := sub_nonneg.2 hlam.2
      have h2 : 0 < (2 : ℚ) := by norm_num
      have : 0 ≤ (1 - lam) / 2 := div_nonneg hnonneg (le_of_lt h2)
      simpa [prob0] using this
    ·
      have h2 : 0 < (2 : ℚ) := by norm_num
      have : 0 ≤ lam / 2 := div_nonneg hlam.1 (le_of_lt h2)
      simpa [prob0] using this
  ·
    have h0 : x01011 ∉ ({x10110, x10101} : Finset (BitString n)) := by decide
    have h1 : x10110 ∉ ({x10101} : Finset (BitString n)) := by decide
    have hsum := LambdaV2.sum_mem_three (f := prob0 lam) x01011 x10110 x10101 h0 h1
    calc
      (∑ x ∈ C0, prob0 lam x)
          = prob0 lam x01011 + prob0 lam x10110 + prob0 lam x10101 := by
              simpa [C0] using hsum
      _ = (1 : ℚ) := by
            have h10110_0 : x10110 ≠ x01011 := by decide
            have h10101_0 : x10101 ≠ x01011 := by decide
            have h10101_1 : x10101 ≠ x10110 := by decide
            simp [prob0, h10110_0, h10101_0, h10101_1]
            field_simp
            ring

lemma isNormalized_prob1 (lam : ℚ) (hlam : 0 ≤ lam ∧ lam ≤ 1) :
    IsNormalizedProb (n := n) C4 (prob1 lam) := by
  classical
  refine ⟨?_, ?_, ?_⟩
  · intro x hx
    have hx0 : x ≠ x00111 := by intro h; apply hx; simp [C4, h]
    have hx1 : x ≠ x11010 := by intro h; apply hx; simp [C4, h]
    have hx2 : x ≠ x11001 := by intro h; apply hx; simp [C4, h]
    simp [prob1, hx0, hx1, hx2]
  · intro x hx
    have hx' : x = x00111 ∨ x = x11010 ∨ x = x11001 := by
      simpa [C4] using hx
    rcases hx' with rfl | rfl | rfl
    · norm_num [prob1]
    ·
      have hnonneg : 0 ≤ (1 - lam) := sub_nonneg.2 hlam.2
      have h2 : 0 < (2 : ℚ) := by norm_num
      have : 0 ≤ (1 - lam) / 2 := div_nonneg hnonneg (le_of_lt h2)
      simpa [prob1] using this
    ·
      have h2 : 0 < (2 : ℚ) := by norm_num
      have : 0 ≤ lam / 2 := div_nonneg hlam.1 (le_of_lt h2)
      simpa [prob1] using this
  ·
    have h0 : x00111 ∉ ({x11010, x11001} : Finset (BitString n)) := by decide
    have h1 : x11010 ∉ ({x11001} : Finset (BitString n)) := by decide
    have hsum := LambdaV2.sum_mem_three (f := prob1 lam) x00111 x11010 x11001 h0 h1
    calc
      (∑ x ∈ C4, prob1 lam x)
          = prob1 lam x00111 + prob1 lam x11010 + prob1 lam x11001 := by
              simpa [C4] using hsum
      _ = (1 : ℚ) := by
            have h11010_0 : x11010 ≠ x00111 := by decide
            have h11001_0 : x11001 ≠ x00111 := by decide
            have h11001_1 : x11001 ≠ x11010 := by decide
            simp [prob1, h11010_0, h11001_0, h11001_1]
            field_simp
            ring

/-! ## Z-type KL (explicit computation) -/

lemma zExpectation_C0 (lam : ℚ) :
    ∀ i : Fin n, zExpectation (n := n) C0 (prob0 lam) i = targetZ lam i := by
  classical
  intro i
  fin_cases i
  all_goals
    have h0 : x01011 ∉ ({x10110, x10101} : Finset (BitString n)) := by decide
    have h1 : x10110 ∉ ({x10101} : Finset (BitString n)) := by decide

    have h10110_0 : x10110 ≠ x01011 := by decide
    have h10101_0 : x10101 ≠ x01011 := by decide
    have h10101_1 : x10101 ≠ x10110 := by decide

    simp [zExpectation, C0, Finset.sum_insert, Finset.sum_singleton,
      h0, h1, prob0, targetZ, zSign,
      h10110_0, h10101_0, h10101_1,
      x01011, x10110, x10101]
    field_simp
    ring_nf

lemma zExpectation_C4 (lam : ℚ) :
    ∀ i : Fin n, zExpectation (n := n) C4 (prob1 lam) i = targetZ lam i := by
  classical
  intro i
  fin_cases i
  all_goals
    have h0 : x00111 ∉ ({x11010, x11001} : Finset (BitString n)) := by decide
    have h1 : x11010 ∉ ({x11001} : Finset (BitString n)) := by decide

    have h11010_0 : x11010 ≠ x00111 := by decide
    have h11001_0 : x11001 ≠ x00111 := by decide
    have h11001_1 : x11001 ≠ x11010 := by decide

    simp [zExpectation, C4, Finset.sum_insert, Finset.sum_singleton,
      h0, h1, prob1, targetZ, zSign,
      h11010_0, h11001_0, h11001_1,
      x00111, x11010, x11001]
    field_simp
    ring_nf

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
theorem SigmaZ_range {lam : ℚ} (hlam : 0 ≤ lam ∧ lam ≤ 1) : (1 : ℚ) / 2 ≤ SigmaZ lam ∧ SigmaZ lam ≤ 1 := by
  -- identical to Family A
  have hlow : (1 : ℚ) / 2 ≤ SigmaZ lam := by
    have hsq : 0 ≤ (lam - (1 : ℚ) / 2) * (lam - (1 : ℚ) / 2) := by
      simpa using (mul_self_nonneg (lam - (1 : ℚ) / 2))
    have hshift : SigmaZ lam - (1 : ℚ) / 2 = 2 * ((lam - (1 : ℚ) / 2) * (lam - (1 : ℚ) / 2)) := by
      simp [SigmaZ_eq_poly]
      field_simp
      ring
    have hsub : 0 ≤ SigmaZ lam - (1 : ℚ) / 2 := by
      rw [hshift]
      exact mul_nonneg (by norm_num) hsq
    exact (sub_nonneg).1 hsub

  have hup : SigmaZ lam ≤ 1 := by
    have hprod : 0 ≤ lam * (1 - lam) := by
      refine mul_nonneg hlam.1 ?_
      exact sub_nonneg.2 hlam.2
    have hshift : 1 - SigmaZ lam = 2 * (lam * (1 - lam)) := by
      simp [SigmaZ_eq_poly]
      ring
    have hsub : 0 ≤ 1 - SigmaZ lam := by
      rw [hshift]
      exact mul_nonneg (by norm_num) hprod
    exact (sub_nonneg).1 hsub

  exact ⟨hlow, hup⟩

end FamilyE
end LambdaV2
end SS
