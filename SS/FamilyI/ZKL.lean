import Mathlib.Tactic

import SS.FamilyI.Prob

/-!
# Analytical Family I (Z-type KL)

This file computes Z-expectations for the Family-I distributions and proves `ZTypeKL'`.
-/

namespace SS
namespace FamilyI

open scoped BigOperators

/-- zSign value at all-zero string. -/
lemma zSign_zeroString (n : ℕ) (i : Fin (n + 1)) :
    zSign (zeroString (n + 1)) i = 1 := by
  simp [zSign, zeroString]

/-- zSign value at all-one string. -/
lemma zSign_oneString (n : ℕ) (i : Fin (n + 1)) :
    zSign (oneString (n + 1)) i = -1 := by
  simp [zSign, oneString]

/-- All strings in As have last bit false. -/
lemma As_last_false (n s : ℕ) (x : BitString (n + 1)) (hx : x ∈ As n s) :
    x (Fin.last n) = false := by
  rcases Finset.mem_image.1 hx with ⟨t, _, rfl⟩
  simp [extendLast]

/-- All strings in Bt have last bit true. -/
lemma Bt_last_true (n t : ℕ) (x : BitString (n + 1)) (hx : x ∈ Bt n t) :
    x (Fin.last n) = true := by
  rcases Finset.mem_image.1 hx with ⟨u, _, rfl⟩
  simp [extendLast]

/-- zSign at the last bit for strings in As is 1. -/
lemma zSign_As_last (n s : ℕ) (x : BitString (n + 1)) (hx : x ∈ As n s) :
    zSign x (Fin.last n) = 1 := by
  have h := As_last_false n s x hx
  simp [zSign, h]

/-- zSign at the last bit for strings in Bt is -1. -/
lemma zSign_Bt_last (n t : ℕ) (x : BitString (n + 1)) (hx : x ∈ Bt n t) :
    zSign x (Fin.last n) = -1 := by
  have h := Bt_last_true n t x hx
  simp [zSign, h]

/-- Z-expectation contribution from As at a prefix position j.castSucc. -/
lemma zExpectation_As_castSucc (n m s : ℕ) [NeZero m] (j : Fin n)
    (hn : 0 < n) (hsn : s ≤ n) :
    ∑ x ∈ As n s, prob1 n m s x * zSign x j.castSucc =
      ((m - s : ℚ) / m) * (1 - 2 * s / n) := by
  classical
  -- `prob1` is constant on `As`.
  have hconst : ∀ x ∈ As n s, prob1 n m s x = ((m - s : ℚ) / m) / (Nat.choose n s) := by
    intro x hx
    simpa using prob1_As n m s x hx

  have hrewrite :
      (∑ x ∈ As n s, prob1 n m s x * zSign x j.castSucc)
        = ∑ x ∈ As n s, (((m - s : ℚ) / m) / (Nat.choose n s)) * zSign x j.castSucc := by
    refine Finset.sum_congr rfl ?_
    intro x hx
    simp [hconst x hx]

  -- Now apply the generic uniform-slice expectation lemma.
  rw [hrewrite]
  simpa [As, mul_assoc] using
    (zExpectation_slice_castSucc (n := n) (k := s) (bLast := false) (j := j)
      (mass := ((m - s : ℚ) / m)) hn hsn)

/-- Z-expectation contribution from Bt at a prefix position j.castSucc. -/
lemma zExpectation_Bt_castSucc (n m s : ℕ) [NeZero m] (j : Fin n)
    (hn : 0 < n) (ht_le : n + s - m ≤ n) :
    ∑ x ∈ Bt n (n + s - m), prob1 n m s x * zSign x j.castSucc =
      ((s : ℚ) / m) * (1 - 2 * ((n + s - m : ℕ) : ℚ) / n) := by
  classical
  -- `prob1` is constant on `Bt` (and `As`/`Bt` are disjoint by the last bit).
  have hdisj : Disjoint (As n s) (Bt n (n + s - m)) := disjoint_As_Bt n s (n + s - m)
  have hconst : ∀ x ∈ Bt n (n + s - m),
      prob1 n m s x = ((s : ℚ) / m) / (Nat.choose n (n + s - m)) := by
    intro x hx
    have hxA : x ∉ As n s := Finset.disjoint_right.1 hdisj hx
    simpa using prob1_Bt n m s x hxA hx

  have hrewrite :
      (∑ x ∈ Bt n (n + s - m), prob1 n m s x * zSign x j.castSucc)
        = ∑ x ∈ Bt n (n + s - m),
            (((s : ℚ) / m) / (Nat.choose n (n + s - m))) * zSign x j.castSucc := by
    refine Finset.sum_congr rfl ?_
    intro x hx
    simp [hconst x hx]

  -- Apply the generic uniform-slice expectation lemma.
  rw [hrewrite]
  -- Avoid `simp` rewriting `↑(n+s-m)` into `↑n+↑s-↑m` (which would require extra hypotheses).
  rw [Bt]
  simpa [mul_assoc] using
    (zExpectation_slice_castSucc (n := n) (k := n + s - m) (bLast := true) (j := j)
      (mass := ((s : ℚ) / m)) hn ht_le)

/-- Z-expectation on supp1 at the last bit equals the target. -/
lemma zExpectation_supp1_last (n m s : ℕ) [NeZero m]
    (_hs : s ≤ m) (_hsn : s ≤ n) (_hmns : m ≤ n + s)
    (hposAs : Nat.choose n s ≠ 0) (hposBt : Nat.choose n (n + s - m) ≠ 0) :
    zExpectation (supp1 n m s) (prob1 n m s) (Fin.last n) = (1 : ℚ) - (2 * (s : ℚ)) / m := by
  classical
  have hdisj : Disjoint (As n s) (Bt n (n + s - m)) := disjoint_As_Bt n s (n + s - m)

  -- Split the sum over `As ∪ Bt`.
  have hsum :
      ∑ x ∈ supp1 n m s, prob1 n m s x * zSign x (Fin.last n) =
        ∑ x ∈ As n s, prob1 n m s x * zSign x (Fin.last n) +
          ∑ x ∈ Bt n (n + s - m), prob1 n m s x * zSign x (Fin.last n) := by
    simpa [supp1] using (Finset.sum_union hdisj)

  rw [zExpectation, hsum]

  -- Evaluate each piece.
  have hAs :
      ∑ x ∈ As n s, prob1 n m s x * zSign x (Fin.last n) = (m - s : ℚ) / m := by
    calc
      ∑ x ∈ As n s, prob1 n m s x * zSign x (Fin.last n)
          = ∑ x ∈ As n s, prob1 n m s x := by
              refine Finset.sum_congr rfl ?_
              intro x hx
              simp [zSign_As_last n s x hx]
      _ = (m - s : ℚ) / m := sum_prob1_As (n := n) (m := m) (s := s) hposAs

  have hBt :
      ∑ x ∈ Bt n (n + s - m), prob1 n m s x * zSign x (Fin.last n) = -((s : ℚ) / m) := by
    calc
      ∑ x ∈ Bt n (n + s - m), prob1 n m s x * zSign x (Fin.last n)
          = ∑ x ∈ Bt n (n + s - m), -(prob1 n m s x) := by
              refine Finset.sum_congr rfl ?_
              intro x hx
              simp [zSign_Bt_last n (n + s - m) x hx]
      _ = -(∑ x ∈ Bt n (n + s - m), prob1 n m s x) := by
              simp [Finset.sum_neg_distrib]
      _ = -((s : ℚ) / m) := by
              simp [sum_prob1_Bt (n := n) (m := m) (s := s) hposBt]

  -- Combine.
  rw [hAs, hBt]
  have hm : (m : ℚ) ≠ 0 := Nat.cast_ne_zero.2 (NeZero.ne m)
  field_simp [hm]
  ring

/-- Z-expectation on supp0 equals the target. -/
lemma zExpectation_supp0 (n m s : ℕ) [NeZero m] (i : Fin (n + 1)) :
    zExpectation (supp0 n) (prob0 n m s) i = (1 : ℚ) - (2 * (s : ℚ)) / m := by
  classical
  have hne : zeroString (n + 1) ≠ oneString (n + 1) := zeroString_ne_oneString n
  have hnotin : zeroString (n + 1) ∉ ({oneString (n + 1)} : Finset _) := by
    simp [Finset.mem_singleton, hne]
  calc
    zExpectation (supp0 n) (prob0 n m s) i
        = ∑ x ∈ supp0 n, prob0 n m s x * zSign x i := rfl
    _ = prob0 n m s (zeroString (n + 1)) * zSign (zeroString (n + 1)) i
        + prob0 n m s (oneString (n + 1)) * zSign (oneString (n + 1)) i := by
          simp [supp0, Finset.sum_insert hnotin]
    _ = ((1 : ℚ) - (s : ℚ) / m) * 1 + ((s : ℚ) / m) * (-1) := by
          rw [prob0_zeroString, prob0_oneString, zSign_zeroString, zSign_oneString]
          simp
    _ = (1 : ℚ) - (2 * (s : ℚ)) / m := by ring

/-- Z-expectation on supp0 equals targetZ. -/
lemma ZTypeKL'_supp0 (n m s : ℕ) [NeZero m] :
    ∀ i : Fin (n + 1), zExpectation (supp0 n) (prob0 n m s) i = targetZ n m s i := by
  intro i
  simp [targetZ, zExpectation_supp0]

/-- The Z-type KL condition for supp1. -/
lemma ZTypeKL'_supp1 (n m s : ℕ) [NeZero m]
    (hs : s ≤ m) (hsn : s ≤ n) (hmns : m ≤ n + s)
    (hposAs : Nat.choose n s ≠ 0) (hposBt : Nat.choose n (n + s - m) ≠ 0) :
    ∀ i : Fin (n + 1), zExpectation (supp1 n m s) (prob1 n m s) i = targetZ n m s i := by
  intro i
  simp only [targetZ]
  -- Case split on whether i is the last position
  by_cases hi : i = Fin.last n
  · -- Last position
    rw [hi]
    exact zExpectation_supp1_last n m s hs hsn hmns hposAs hposBt
  · -- First n positions
    rcases Fin.eq_castSucc_of_ne_last (x := i) hi with ⟨j, rfl⟩
    have hn : 0 < n := Fin.pos j

    have hdisj : Disjoint (As n s) (Bt n (n + s - m)) := disjoint_As_Bt n s (n + s - m)
    have hsum :
        ∑ x ∈ supp1 n m s, prob1 n m s x * zSign x j.castSucc =
          ∑ x ∈ As n s, prob1 n m s x * zSign x j.castSucc +
            ∑ x ∈ Bt n (n + s - m), prob1 n m s x * zSign x j.castSucc := by
      simpa [supp1] using (Finset.sum_union hdisj)

    rw [zExpectation, hsum]

    have ht_le : n + s - m ≤ n := by
      -- since `s ≤ m`, subtracting `m` is no larger than subtracting `s`.
      simpa [Nat.add_sub_cancel_right] using (Nat.sub_le_sub_left hs (n + s))

    rw [
      zExpectation_As_castSucc (n := n) (m := m) (s := s) (j := j) hn hsn,
      zExpectation_Bt_castSucc (n := n) (m := m) (s := s) (j := j) hn ht_le]

    -- Pure algebra.
    have hm0 : (m : ℚ) ≠ 0 := Nat.cast_ne_zero.2 (NeZero.ne m)
    have hn0 : (n : ℚ) ≠ 0 := Nat.cast_ne_zero.2 (Nat.pos_iff_ne_zero.1 hn)

    have hcast : (↑(n + s - m) : ℚ) = (n : ℚ) + s - m := by
      simpa [Nat.cast_add] using (Nat.cast_sub (R := ℚ) hmns)

    rw [hcast]
    field_simp [hm0, hn0]
    ring

end FamilyI
end SS
