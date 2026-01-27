import Mathlib.Tactic

import SS.FamilyI.Common

/-!
# Analytical Family I (probabilities)

This file proves probability-normalization for the closed-form distributions used in Family I.
-/

namespace SS
namespace FamilyI

open scoped BigOperators

/-- `prob0` value at the zero string. -/
lemma prob0_zeroString (n m s : ℕ) :
    prob0 n m s (zeroString (n + 1)) = (1 : ℚ) - (s : ℚ) / m := by
  simp [prob0]

/-- `prob0` value at the one string. -/
lemma prob0_oneString (n m s : ℕ) :
    prob0 n m s (oneString (n + 1)) = (s : ℚ) / m := by
  have h : oneString (n + 1) ≠ zeroString (n + 1) := (zeroString_ne_oneString n).symm
  simp [prob0, h]

/-- `prob0` value outside the support is `0`. -/
lemma prob0_outside (n m s : ℕ) (x : BitString (n + 1))
    (hx0 : x ≠ zeroString (n + 1)) (hx1 : x ≠ oneString (n + 1)) :
    prob0 n m s x = 0 := by
  simp [prob0, hx0, hx1]

/-- `prob0` is a normalized probability distribution on `supp0`. -/
lemma isNormalized_prob0 (n m s : ℕ) [NeZero m] (hs : s ≤ m) :
    IsNormalizedProb (n := n + 1) (supp0 n) (prob0 n m s) := by
  classical
  refine ⟨?_, ?_, ?_⟩
  · -- outside support is zero
    intro x hx
    have hx0 : x ≠ zeroString (n + 1) := fun h => hx (by simp [supp0, h])
    have hx1 : x ≠ oneString (n + 1) := fun h => hx (by simp [supp0, h])
    exact prob0_outside n m s x hx0 hx1
  · -- nonnegative on support
    intro x hx
    simp only [supp0, Finset.mem_insert, Finset.mem_singleton] at hx
    rcases hx with rfl | rfl
    · -- `1 - s/m ≥ 0`
      rw [prob0_zeroString]
      have hmpos : (0 : ℚ) < m := Nat.cast_pos.2 (Nat.pos_of_ne_zero (NeZero.ne m))
      have hsm : (s : ℚ) ≤ m := Nat.cast_le.2 hs
      have hle : (s : ℚ) / m ≤ 1 := (div_le_one hmpos).2 hsm
      linarith
    · -- `s/m ≥ 0`
      rw [prob0_oneString]
      exact div_nonneg (Nat.cast_nonneg s) (Nat.cast_nonneg m)
  · -- sum to 1
    have hne : zeroString (n + 1) ≠ oneString (n + 1) := zeroString_ne_oneString (n := n)
    have hnotin : zeroString (n + 1) ∉ ({oneString (n + 1)} : Finset _) := by
      simp [Finset.mem_singleton, hne]
    calc
      ∑ x ∈ supp0 n, prob0 n m s x
          = prob0 n m s (zeroString (n + 1)) + prob0 n m s (oneString (n + 1)) := by
              simp [supp0, Finset.sum_insert hnotin]
      _ = ((1 : ℚ) - (s : ℚ) / m) + ((s : ℚ) / m) := by
            rw [prob0_zeroString, prob0_oneString]
      _ = 1 := by ring

/-- `prob1` value on `As`. -/
lemma prob1_As (n m s : ℕ) (x : BitString (n + 1)) (hxA : x ∈ As n s) :
    prob1 n m s x = ((m - s : ℚ) / m) / (Nat.choose n s) := by
  simp [prob1, hxA]

/-- `prob1` value on `Bt` (assuming `x ∉ As`). -/
lemma prob1_Bt (n m s : ℕ) (x : BitString (n + 1))
    (hxA : x ∉ As n s) (hxB : x ∈ Bt n (n + s - m)) :
    prob1 n m s x = ((s : ℚ) / m) / (Nat.choose n (n + s - m)) := by
  simp [prob1, hxA, hxB]

/-- `prob1` value on `Bt` (no extra assumptions; disjointness is by last bit). -/
lemma prob1_Bt_of_mem (n m s : ℕ) (x : BitString (n + 1)) (hxB : x ∈ Bt n (n + s - m)) :
    prob1 n m s x = ((s : ℚ) / m) / (Nat.choose n (n + s - m)) := by
  have hdisj : Disjoint (As n s) (Bt n (n + s - m)) := disjoint_As_Bt n s (n + s - m)
  have hxA : x ∉ As n s := Finset.disjoint_right.1 hdisj hxB
  exact prob1_Bt n m s x hxA hxB

/-- `prob1` value outside the support is `0`. -/
lemma prob1_outside (n m s : ℕ) (x : BitString (n + 1))
    (hxA : x ∉ As n s) (hxB : x ∉ Bt n (n + s - m)) :
    prob1 n m s x = 0 := by
  simp [prob1, hxA, hxB]

/-- Non-negativity of prob1 on As. -/
lemma prob1_As_nonneg (n m s : ℕ) [NeZero m] (hs : s ≤ m) :
    ((m - s : ℚ) / m) / (Nat.choose n s) ≥ 0 := by
  apply div_nonneg
  · apply div_nonneg
    · have : (s : ℚ) ≤ (m : ℚ) := Nat.cast_le.2 hs
      linarith
    · exact Nat.cast_nonneg (α := ℚ) m
  · exact Nat.cast_nonneg (α := ℚ) _

/-- Non-negativity of prob1 on Bt. -/
lemma prob1_Bt_nonneg (n m s : ℕ) [NeZero m] :
    ((s : ℚ) / m) / (Nat.choose n (n + s - m)) ≥ 0 := by
  apply div_nonneg
  · apply div_nonneg
    · exact Nat.cast_nonneg (α := ℚ) s
    · exact Nat.cast_nonneg (α := ℚ) m
  · exact Nat.cast_nonneg (α := ℚ) _

/-- Total probability mass on `As` for `prob1`. -/
lemma sum_prob1_As (n m s : ℕ) [NeZero m] (hposAs : Nat.choose n s ≠ 0) :
    ∑ x ∈ As n s, prob1 n m s x = (m - s : ℚ) / m := by
  classical
  have hall : ∀ x ∈ As n s, prob1 n m s x = ((m - s : ℚ) / m) / (Nat.choose n s) :=
    fun x hx => prob1_As n m s x hx
  calc
    ∑ x ∈ As n s, prob1 n m s x
        = ∑ _x ∈ As n s, ((m - s : ℚ) / m) / (Nat.choose n s) :=
            Finset.sum_congr rfl hall
    _ = (As n s).card • (((m - s : ℚ) / m) / (Nat.choose n s)) :=
            Finset.sum_const _
    _ = (Nat.choose n s : ℚ) * (((m - s : ℚ) / m) / (Nat.choose n s)) := by
            rw [card_As, nsmul_eq_mul]
    _ = (m - s : ℚ) / m := by
            field_simp [hposAs]

/-- Total probability mass on `Bt` for `prob1`. -/
lemma sum_prob1_Bt (n m s : ℕ) [NeZero m] (hposBt : Nat.choose n (n + s - m) ≠ 0) :
    ∑ x ∈ Bt n (n + s - m), prob1 n m s x = (s : ℚ) / m := by
  classical
  have hall : ∀ x ∈ Bt n (n + s - m),
      prob1 n m s x = ((s : ℚ) / m) / (Nat.choose n (n + s - m)) := by
    intro x hx
    simpa using prob1_Bt_of_mem n m s x hx
  calc
    ∑ x ∈ Bt n (n + s - m), prob1 n m s x
        = ∑ _x ∈ Bt n (n + s - m), ((s : ℚ) / m) / (Nat.choose n (n + s - m)) :=
            Finset.sum_congr rfl hall
    _ = (Bt n (n + s - m)).card • (((s : ℚ) / m) / (Nat.choose n (n + s - m))) :=
            Finset.sum_const _
    _ = (Nat.choose n (n + s - m) : ℚ) * (((s : ℚ) / m) / (Nat.choose n (n + s - m))) := by
            rw [card_Bt, nsmul_eq_mul]
    _ = (s : ℚ) / m := by
            field_simp [hposBt]

/-- `prob1` is a normalized probability distribution on `supp1`.

Assumes:
* `s ≤ m` (so `m - s ≥ 0`)
* `s ≤ n` (so `As` is non-empty)
* `n + s - m ≤ n` (so `Bt` is non-empty)
-/
lemma isNormalized_prob1 (n m s : ℕ) [NeZero m]
    (hs : s ≤ m) (_hsn : s ≤ n) (_hmns : m ≤ n + s) (hposAs : Nat.choose n s ≠ 0)
    (hposBt : Nat.choose n (n + s - m) ≠ 0) :
    IsNormalizedProb (n := n + 1) (supp1 n m s) (prob1 n m s) := by
  classical
  refine ⟨?_, ?_, ?_⟩
  · -- outside support is zero
    intro x hx
    have hxA : x ∉ As n s := fun h => hx (Finset.mem_union_left _ h)
    have hxB : x ∉ Bt n (n + s - m) := fun h => hx (Finset.mem_union_right _ h)
    exact prob1_outside n m s x hxA hxB
  · -- nonnegative on support
    intro x hx
    simp only [supp1, Finset.mem_union] at hx
    rcases hx with hxA | hxB
    · rw [prob1_As n m s x hxA]
      exact prob1_As_nonneg n m s hs
    · have hxA' : x ∉ As n s :=
        Finset.disjoint_right.1 (disjoint_As_Bt n s (n + s - m)) hxB
      rw [prob1_Bt n m s x hxA' hxB]
      exact prob1_Bt_nonneg n m s
  · -- sum to 1
    have hdisj : Disjoint (As n s) (Bt n (n + s - m)) := disjoint_As_Bt n s (n + s - m)
    have hsum :
        ∑ x ∈ supp1 n m s, prob1 n m s x =
          ∑ x ∈ As n s, prob1 n m s x + ∑ x ∈ Bt n (n + s - m), prob1 n m s x := by
      simp [supp1, Finset.sum_union, hdisj]
    rw [hsum]
    rw [sum_prob1_As (n := n) (m := m) (s := s) hposAs,
        sum_prob1_Bt (n := n) (m := m) (s := s) hposBt]
    have hm : (m : ℚ) ≠ 0 := Nat.cast_ne_zero.2 (NeZero.ne m)
    field_simp [hm]
    ring

end FamilyI
end SS
