import Mathlib.Tactic

import SS.ResidueShiftScreen
import SS.FamilyI.Common

/-!
# Analytical Family I (SS + screen proofs)

This file proves the subset-sum support conditions and the residue-shift screen
for Family I.
-/

namespace SS
namespace FamilyI

open scoped BigOperators

/-- Weight of an `extendLast` bitstring built from a prefix subset. -/
lemma weight_extendLast_bsOfFinset
    (n m : ℕ) [NeZero m] (t : Finset (Fin n)) (b : Bool) :
    weight (m := m) (aFamilyI n m) (extendLast (bsOfFinset (n := n) t) b)
      = (t.card : ZMod m) + (if b then ((m - n : ℕ) : ZMod m) else 0) := by
  classical
  -- Split the weight sum into prefix + last.
  simp [weight, aFamilyI, Fin.sum_univ_castSucc, extendLast, bsOfFinset, Fin.castSucc_ne_last,
    Fin.lastCases, bit]

/-- Weight of the all-zero string is `0`. -/
lemma weight_zeroString (n m : ℕ) [NeZero m] :
    weight (m := m) (aFamilyI n m) (zeroString (n + 1)) = 0 := by
  simp [weight, zeroString, aFamilyI, bit]

/-- Weight of the all-one string is `0` for Family I (since the total weight sum is `m`).

This requires the side-condition `n ≤ m` so that the last weight really is `m - n`.
-/
lemma weight_oneString (n m : ℕ) [NeZero m] (hnm : n ≤ m) :
    weight (m := m) (aFamilyI n m) (oneString (n + 1)) = 0 := by
  classical
  -- `bit true = 1`, so `weight` is just the sum of weights.
  simp [weight, oneString, aFamilyI, Fin.sum_univ_castSucc, Fin.castSucc_ne_last, bit]
  -- Reduce to the fact that the total weight sum is `m`.
  calc
    (↑n + ↑(m - n) : ZMod m) = (↑(n + (m - n)) : ZMod m) := by
      simp [Nat.cast_add]
    _ = (↑m : ZMod m) := by
      have hsum : n + (m - n) = m := by
        simpa [Nat.add_comm] using (Nat.sub_add_cancel hnm)
      simp [hsum]
    _ = 0 := by
      simp

/-- SS condition for `C0 = {0^(n+1), 1^(n+1)}`. -/
lemma SS_supp0 (n m : ℕ) [NeZero m] (hnm : n ≤ m) :
    SSConditionSupport' (m := m) (aFamilyI n m) 0 (supp0 n) := by
  intro x hx
  simp [supp0] at hx
  rcases hx with rfl | rfl
  · simpa [zeroString] using (weight_zeroString (n := n) (m := m))
  · simpa using (weight_oneString (n := n) (m := m) hnm)

/-- SS condition for the `A_s` slice. -/
lemma SS_As (n m s : ℕ) [NeZero m] :
    SSConditionSupport' (m := m) (aFamilyI n m) (s : ZMod m) (As n s) := by
  classical
  intro x hx
  rcases Finset.mem_image.1 hx with ⟨t, ht, rfl⟩
  have htcard : t.card = s := (Finset.mem_powersetCard.1 ht).2
  -- Use the weight formula with `b=false`.
  simpa [htcard] using (weight_extendLast_bsOfFinset (n := n) (m := m) t false)

/-- SS condition for the `B_t` slice, with `t = n + s - m`.

We assume `n ≤ m` and `m ≤ n + s` so that `t + (m-n) = s` as naturals.
-/
lemma SS_Bt (n m s : ℕ) [NeZero m]
    (hnm : n ≤ m) (hmns : m ≤ n + s) :
    SSConditionSupport' (m := m) (aFamilyI n m) (s : ZMod m) (Bt n (n + s - m)) := by
  classical
  intro x hx
  rcases Finset.mem_image.1 hx with ⟨t, ht, rfl⟩
  have htcard : t.card = n + s - m := (Finset.mem_powersetCard.1 ht).2
  -- First compute the weight from the general formula.
  have hw := weight_extendLast_bsOfFinset (n := n) (m := m) t true
  -- Rewrite using the specific cardinality.
  have hw' :
      weight (m := m) (aFamilyI n m) (extendLast (bsOfFinset (n := n) t) true)
        = ((n + s - m : ℕ) : ZMod m) + ((m - n : ℕ) : ZMod m) := by
    simpa [htcard] using hw
  -- Convert the Nat identity `(n+s-m) + (m-n) = s` into `ZMod`.
  have hNat : (n + s - m) + (m - n) = s := by
    -- Add `n` to both sides and cancel.
    apply Nat.add_right_cancel
    calc
      (n + s - m) + (m - n) + n
          = (n + s - m) + ((m - n) + n) := by
              simp [Nat.add_assoc]
      _ = (n + s - m) + m := by
              simpa [Nat.add_assoc] using
                congrArg (fun k => (n + s - m) + k) (Nat.sub_add_cancel hnm)
      _ = n + s := by
              simpa [Nat.add_assoc] using Nat.sub_add_cancel hmns
      _ = s + n := by
              simp [Nat.add_comm]
  have hZ : ((n + s - m : ℕ) : ZMod m) + ((m - n : ℕ) : ZMod m) = (s : ZMod m) := by
    -- cast the Nat equality
    simpa [Nat.cast_add] using congrArg (fun k : ℕ => (k : ZMod m)) hNat
  -- Finish.
  simp [hw', hZ]

/-- SS condition for the Family-I support `A_s ∪ B_t`. -/
lemma SS_supp1 (n m s : ℕ) [NeZero m]
    (hnm : n ≤ m) (hmns : m ≤ n + s) :
    SSConditionSupport' (m := m) (aFamilyI n m) (s : ZMod m) (supp1 n m s) := by
  intro x hx
  have hx' : x ∈ As n s ∨ x ∈ Bt n (n + s - m) := by
    simpa [supp1] using (Finset.mem_union.1 hx)
  rcases hx' with hxA | hxB
  · exact SS_As (n := n) (m := m) (s := s) hxA
  · exact SS_Bt (n := n) (m := m) (s := s) hnm hmns hxB

/-- Residue-shift screen for Family I (forbidden residues as in CDQC.tex, Methods line 686).

This is exactly the screen condition `S_j - S_k ≢ ±w_i (mod m)` for the two residues `0,s`
and the weights `1` (prefix) and `m-n` (last).
-/
lemma residueShiftScreen_familyI (n m s : ℕ) [NeZero m]
    (hs_ne1 : (s : ZMod m) ≠ (1 : ZMod m))
    (hs_neNeg1 : (s : ZMod m) ≠ (-1 : ZMod m))
    (hs_neLast : (s : ZMod m) ≠ ((m - n : ℕ) : ZMod m))
    (hs_neNegLast : (s : ZMod m) ≠ -((m - n : ℕ) : ZMod m)) :
    ResidueShiftScreen (m := m) (aFamilyI n m) (SFamilyI (m := m) s) := by
  intro i j k hjk
  fin_cases j <;> fin_cases k
  · cases hjk rfl
  · -- j = 0, k = 1: difference is `-s`
    by_cases hi : i = Fin.last n
    · subst hi
      constructor
      · intro h
        have h' : -(s : ZMod m) = ((m - n : ℕ) : ZMod m) := by
          simpa [SFamilyI, aFamilyI] using h
        apply hs_neNegLast
        exact (neg_eq_iff_eq_neg).1 h'
      · intro h
        have h' : -(s : ZMod m) = -((m - n : ℕ) : ZMod m) := by
          simpa [SFamilyI, aFamilyI] using h
        apply hs_neLast
        exact (neg_inj).1 h'
    · constructor
      · intro h
        have h' : -(s : ZMod m) = (1 : ZMod m) := by
          simpa [SFamilyI, aFamilyI, hi] using h
        apply hs_neNeg1
        exact (neg_eq_iff_eq_neg).1 h'
      · intro h
        have h' : -(s : ZMod m) = -(1 : ZMod m) := by
          simpa [SFamilyI, aFamilyI, hi] using h
        apply hs_ne1
        exact (neg_inj).1 h'
  · -- j = 1, k = 0: difference is `s`
    by_cases hi : i = Fin.last n
    · subst hi
      constructor
      · intro h
        have h' : (s : ZMod m) = ((m - n : ℕ) : ZMod m) := by
          simpa [SFamilyI, aFamilyI] using h
        exact hs_neLast h'
      · intro h
        have h' : (s : ZMod m) = -((m - n : ℕ) : ZMod m) := by
          simpa [SFamilyI, aFamilyI] using h
        exact hs_neNegLast h'
    · constructor
      · intro h
        have h' : (s : ZMod m) = (1 : ZMod m) := by
          simpa [SFamilyI, aFamilyI, hi] using h
        exact hs_ne1 h'
      · intro h
        have h' : (s : ZMod m) = -(1 : ZMod m) := by
          simpa [SFamilyI, aFamilyI, hi] using h
        exact hs_neNeg1 h'
  · cases hjk rfl

end FamilyI
end SS
