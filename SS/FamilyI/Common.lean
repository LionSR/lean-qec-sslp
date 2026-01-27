import SS.FamilyI.Defs

/-!
# Analytical Family I (small shared lemmas)

This file contains short helper lemmas shared across the Family I proofs.
-/

namespace SS
namespace FamilyI

open scoped BigOperators

lemma card_As (n s : ℕ) : (As n s).card = Nat.choose n s := by
  simpa [As] using (card_slice n s false)

lemma card_Bt (n t : ℕ) : (Bt n t).card = Nat.choose n t := by
  simpa [Bt] using (card_slice n t true)

lemma disjoint_As_Bt (n s t : ℕ) : Disjoint (As n s) (Bt n t) := by
  simpa [As, Bt] using (disjoint_slice_lastBit n s t)

/-- The two extremal strings `0^(n+1)` and `1^(n+1)` are distinct. -/
lemma zeroString_ne_oneString (n : ℕ) : zeroString (n + 1) ≠ oneString (n + 1) := by
  intro h
  have := congrArg (fun f => f (0 : Fin (n + 1))) h
  simp [zeroString, oneString] at this

end FamilyI
end SS
