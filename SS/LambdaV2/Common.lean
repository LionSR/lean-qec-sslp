import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

namespace SS

namespace LambdaV2

open scoped BigOperators

/-- The scalar summary \(\Sigma_Z := \sum_i \langle Z_i \rangle^2\). -/
def SigmaZ {n : ℕ} (z : Fin n → ℚ) : ℚ :=
  ∑ i : Fin n, z i * z i

@[simp] lemma SigmaZ_zero {n : ℕ} : SigmaZ (n := n) (fun _ => (0 : ℚ)) = 0 := by
  simp [SigmaZ]

/-!
## Small finset-sum helpers

Most `lambdav2.tex` families have supports of size 3 or 4. These lemmas avoid repeating
`Finset.sum_insert` boilerplate.
-/

section SumHelpers

variable {α β : Type*} [DecidableEq α] [AddCommMonoid β]

/-- Expand a sum over a 3-element finset `{a,b,c}` (assuming the elements are distinct). -/
lemma sum_mem_three (f : α → β) (a b c : α)
    (ha : a ∉ ({b, c} : Finset α)) (hb : b ∉ ({c} : Finset α)) :
    (∑ x ∈ ({a, b, c} : Finset α), f x) = f a + f b + f c := by
  simp [Finset.sum_insert, Finset.sum_singleton, ha, hb, add_assoc]

/-- Expand a sum over a 4-element finset `{a,b,c,d}` (assuming the elements are distinct). -/
lemma sum_mem_four (f : α → β) (a b c d : α)
    (ha : a ∉ ({b, c, d} : Finset α))
    (hb : b ∉ ({c, d} : Finset α))
    (hc : c ∉ ({d} : Finset α)) :
    (∑ x ∈ ({a, b, c, d} : Finset α), f x) = f a + f b + f c + f d := by
  simp [Finset.sum_insert, Finset.sum_singleton, ha, hb, hc, add_assoc]

end SumHelpers

end LambdaV2

end SS
