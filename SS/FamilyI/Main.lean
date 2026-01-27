import SS.Verify

import SS.FamilyI.Support
import SS.FamilyI.Prob
import SS.FamilyI.ZKL

/-!
# Analytical Family I (bundled verification)

This file bundles the Family-I data into `Verify.ExampleData` and proves the final
verification theorem `familyI_OK`.
-/

namespace SS
namespace FamilyI

open Verify

/-- The full Family-I data bundle. -/
def familyI_data (n m s : ℕ) [NeZero m] : Verify.ExampleData (n + 1) m 2 where
  a := aFamilyI n m
  S := SFamilyI (m := m) s
  supp := ![supp0 n, supp1 n m s]
  prob := ![prob0 n m s, prob1 n m s]
  targetZ := targetZ n m s

/-- Family I satisfies the verification goals under appropriate side conditions. -/
theorem familyI_OK (n m s : ℕ) [NeZero m]
    (hnm : n ≤ m) (hs : s ≤ m) (hsn : s ≤ n) (hmns : m ≤ n + s)
    (hposAs : Nat.choose n s ≠ 0) (hposBt : Nat.choose n (n + s - m) ≠ 0)
    (hs_ne1 : (s : ZMod m) ≠ (1 : ZMod m))
    (hs_neNeg1 : (s : ZMod m) ≠ (-1 : ZMod m))
    (hs_neLast : (s : ZMod m) ≠ ((m - n : ℕ) : ZMod m))
    (hs_neNegLast : (s : ZMod m) ≠ -((m - n : ℕ) : ZMod m)) :
    (familyI_data n m s).OK := by
  constructor
  · -- SS condition
    intro k
    fin_cases k
    · -- k = 0: supp0
      simp [familyI_data]
      exact SS_supp0 n m hnm
    · -- k = 1: supp1
      simp [familyI_data]
      exact SS_supp1 n m s hnm hmns
  constructor
  · -- Residue shift screen
    simp [familyI_data]
    exact residueShiftScreen_familyI n m s hs_ne1 hs_neNeg1 hs_neLast hs_neNegLast
  constructor
  · -- Normalization
    intro k
    fin_cases k
    · -- k = 0
      simp [familyI_data]
      exact isNormalized_prob0 n m s hs
    · -- k = 1
      simp [familyI_data]
      exact isNormalized_prob1 n m s hs hsn hmns hposAs hposBt
  · -- Z-type KL
    intro j i
    fin_cases j
    · -- j = 0
      simp [familyI_data]
      exact ZTypeKL'_supp0 n m s i
    · -- j = 1
      simp [familyI_data]
      exact ZTypeKL'_supp1 n m s hs hsn hmns hposAs hposBt i

end FamilyI
end SS
