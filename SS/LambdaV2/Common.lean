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

/-!
## Lambda-parameter probability bounds

These lemmas help prove nonnegativity of probabilities that depend on a parameter `lam ∈ [0,1]`.
-/

section LambdaBounds

variable {lam : ℚ}

/-- `lam / k ≥ 0` when `lam ≥ 0` and `k > 0`. -/
lemma lam_div_nonneg (hlam : 0 ≤ lam) {k : ℚ} (hk : 0 < k) : 0 ≤ lam / k :=
  div_nonneg hlam (le_of_lt hk)

/-- `(1 - lam) / k ≥ 0` when `lam ≤ 1` and `k > 0`. -/
lemma one_sub_lam_div_nonneg (hlam : lam ≤ 1) {k : ℚ} (hk : 0 < k) : 0 ≤ (1 - lam) / k :=
  div_nonneg (sub_nonneg.2 hlam) (le_of_lt hk)

/-- The product `lam * (1 - lam) ≥ 0` for `lam ∈ [0,1]`. -/
lemma lam_mul_one_sub_nonneg (hlam : 0 ≤ lam ∧ lam ≤ 1) : 0 ≤ lam * (1 - lam) :=
  mul_nonneg hlam.1 (sub_nonneg.2 hlam.2)

/-- The square `(lam - 1/2)² ≥ 0`. -/
lemma lam_sub_half_sq_nonneg : 0 ≤ (lam - (1 : ℚ) / 2) * (lam - (1 : ℚ) / 2) :=
  mul_self_nonneg _

end LambdaBounds

/-!
## Generic SigmaZ range proofs

Two common polynomial forms appear across the lambda families:
* Type I: `2λ² - 2λ + 1` with range `[1/2, 1]` (Families A, E)
* Type II: `(8λ² - 8λ + 5)/9` with range `[1/3, 5/9]` (Families B, C, D)
-/

section SigmaZRange

variable {lam : ℚ}

/-- The quadratic `2λ² - 2λ + 1` has range `[1/2, 1]` over `λ ∈ [0,1]`. -/
theorem SigmaZ_typeI_range (hlam : 0 ≤ lam ∧ lam ≤ 1) :
    (1 : ℚ) / 2 ≤ 2 * (lam * lam) - 2 * lam + 1 ∧
    2 * (lam * lam) - 2 * lam + 1 ≤ 1 := by
  constructor
  -- lower bound: poly - 1/2 = 2(lam - 1/2)² ≥ 0
  · have hsq := lam_sub_half_sq_nonneg (lam := lam)
    have hdiff : 2 * (lam * lam) - 2 * lam + 1 - (1 : ℚ) / 2 =
        2 * ((lam - (1 : ℚ) / 2) * (lam - (1 : ℚ) / 2)) := by ring
    have hsub : 0 ≤ 2 * (lam * lam) - 2 * lam + 1 - (1 : ℚ) / 2 := by
      rw [hdiff]
      exact mul_nonneg (by norm_num) hsq
    linarith
  -- upper bound: 1 - poly = 2 * lam * (1 - lam) ≥ 0
  · have hprod := lam_mul_one_sub_nonneg hlam
    have hdiff : 1 - (2 * (lam * lam) - 2 * lam + 1) = 2 * (lam * (1 - lam)) := by ring
    have hsub : 0 ≤ 1 - (2 * (lam * lam) - 2 * lam + 1) := by
      rw [hdiff]
      exact mul_nonneg (by norm_num) hprod
    linarith

/-- The quadratic `(8λ² - 8λ + 5)/9` has range `[1/3, 5/9]` over `λ ∈ [0,1]`. -/
theorem SigmaZ_typeII_range (hlam : 0 ≤ lam ∧ lam ≤ 1) :
    (1 : ℚ) / 3 ≤ (8 * (lam * lam) - 8 * lam + 5) / 9 ∧
    (8 * (lam * lam) - 8 * lam + 5) / 9 ≤ (5 : ℚ) / 9 := by
  have h9pos : 0 < (9 : ℚ) := by norm_num
  constructor
  -- lower bound: poly - 1/3 = (8/9)(lam - 1/2)² ≥ 0
  · have hsq := lam_sub_half_sq_nonneg (lam := lam)
    have hdiff : (8 * (lam * lam) - 8 * lam + 5) / 9 - (1 : ℚ) / 3 =
        (8 * ((lam - (1 : ℚ) / 2) * (lam - (1 : ℚ) / 2))) / 9 := by field_simp; ring
    have hsub : 0 ≤ (8 * (lam * lam) - 8 * lam + 5) / 9 - (1 : ℚ) / 3 := by
      rw [hdiff]
      exact div_nonneg (mul_nonneg (by norm_num) hsq) (le_of_lt h9pos)
    linarith
  -- upper bound: 5/9 - poly = (8/9) * lam * (1 - lam) ≥ 0
  · have hprod := lam_mul_one_sub_nonneg hlam
    have hdiff : (5 : ℚ) / 9 - (8 * (lam * lam) - 8 * lam + 5) / 9 =
        (8 * (lam * (1 - lam))) / 9 := by field_simp; ring
    have hsub : 0 ≤ (5 : ℚ) / 9 - (8 * (lam * lam) - 8 * lam + 5) / 9 := by
      rw [hdiff]
      exact div_nonneg (mul_nonneg (by norm_num) hprod) (le_of_lt h9pos)
    linarith

end SigmaZRange

end LambdaV2

end SS
