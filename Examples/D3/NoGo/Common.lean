import Mathlib

import SS.FullKL

/-!
# Common helpers for analytic no-go proofs (distance 3)

This module factors shared infrastructure used by the analytic no-go
formalizations under `Examples/D3/NoGo/`.

In particular, we define Complex-valued versions of the Knill--Laflamme
matrix-element sums (restricted to the appropriate support intersections),
*dropping global nonzero prefactors* (powers of `i` and `(-1)`), since our
no-go arguments only use the vanishing conditions.

No `sorry`.
-/

namespace Examples.D3.NoGo

noncomputable section

open SS
open scoped BigOperators
open scoped ComplexConjugate

/-- Multiply by the sign `(-1)` if the boolean is `true`. -/
def signMul (b : Bool) (t : ℂ) : ℂ :=
  if b then -t else t

@[simp] lemma signMul_true (t : ℂ) : signMul true t = -t := by simp [signMul]
@[simp] lemma signMul_false (t : ℂ) : signMul false t = t := by simp [signMul]

/-- One term of the diagonal matrix element:
`(-1)^{z·s} · conj(c_{s⊕x}) · c_s`.

(We omit the global prefactor `i^{x·z}`.) -/
def diagTerm {n : ℕ} (c : SS.BitString n → ℂ) (x z s : SS.BitString n) : ℂ :=
  signMul (SS.bdot z s) (star (c (SS.bxor s x)) * c s)

/-- Diagonal matrix element sum over the intersection `S₀ ∩ (S₀ ⊕ x)`.

(We omit the global prefactor `i^{x·z}`.) -/
def diagMatElt {n : ℕ} (S₀ : Finset (SS.BitString n)) (c : SS.BitString n → ℂ)
    (x z : SS.BitString n) : ℂ :=
  ∑ s in SS.diagIntersection S₀ x, diagTerm c x z s

/-- One term of the off-diagonal matrix element:
`(-1)^{z·s} · conj(c_{s⊕Δ(x)}) · c_s`.

(We omit the global prefactor `i^{x·z}·(-1)^{z·x}`.) -/
def offdiagTerm {n : ℕ} (c : SS.BitString n → ℂ) (x z s : SS.BitString n) : ℂ :=
  signMul (SS.bdot z s) (star (c (SS.bxor s (SS.delta x))) * c s)

/-- Off-diagonal matrix element sum over the intersection `S₀ ∩ (S₀ ⊕ Δ(x))`.

(We omit the global prefactor `i^{x·z}·(-1)^{z·x}`.) -/
def offdiagMatElt {n : ℕ} (S₀ : Finset (SS.BitString n)) (c : SS.BitString n → ℂ)
    (x z : SS.BitString n) : ℂ :=
  ∑ s in SS.offdiagIntersection S₀ x, offdiagTerm c x z s

/-- Self-product as a real scalar: `conj z * z = ‖z‖^2`. -/
@[simp] lemma star_mul_self (z : ℂ) : star z * z = (Complex.normSq z : ℂ) := by
  simpa [Complex.star_def] using (Complex.normSq_eq_conj_mul_self (z := z)).symm

end

end Examples.D3.NoGo
