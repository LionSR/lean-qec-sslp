import Mathlib
import SS.Pauli
import SS.FullKL
import SS.DiagonalAction

/-!
# Hilbert-space semantics for Knill--Laflamme conditions

This module supplies the **semantic layer** that was previously missing: the
combinatorial certificates in `SS.Verify` (distance 2) and `SS.FullKLEval`
(distance 3) are checks on finite data, and this file defines what those checks
*mean* in terms of actual quantum states and Pauli operators, so that the
certificates can be connected to the genuine Knill--Laflamme (KL) conditions.

## Contents

* `State n ℂ` --- a (not necessarily normalized) vector in the `2^n`-dimensional
  space, represented as a function `BitString n → ℂ`.
* `innerC` --- the Hermitian inner product `⟪ψ, φ⟫ = ∑ₛ conj(ψ s) · φ s`.
* `pauliAct` --- the action of a Pauli operator `P(x,z) = i^{#Y} Xˣ Z^z`, via
  `P(x,z)|s⟩ = i^{#Y} (-1)^{z·s} |s ⊕ x⟩`.
* `KLCondition` / `Detects` --- the Knill--Laflamme conditions and error detection.
* `innerC_pauliAct` --- **the shared bridge lemma**: the matrix element equals a
  finite sum over bitstrings, in exactly the form computed by
  `SS.FullKLEval.diagMatElt` and `Examples.D3.NoGo.diagMatElt`.
* `innerC_pauliAct_support` --- the same sum restricted to the support
  intersection `S_k ∩ (S_j ⊕ x)`, matching `SS.diagIntersection`.

Because `innerC_pauliAct_support` is an *equality*, it serves both directions:

* distance-2 / distance-3 **certificates** use it left-to-right
  (support sums vanish ⟹ KL holds);
* the **no-go** proofs use it right-to-left
  (KL holds ⟹ those support sums vanish).
-/

namespace SS

open scoped BigOperators ComplexConjugate

noncomputable section

variable {n : ℕ}

/-! ## States and the inner product

We reuse the existing `SS.State n 𝕜 = BitString n → 𝕜` from `SS.DiagonalAction`,
instantiated at `𝕜 = ℂ`, rather than introducing a parallel notion. -/

/-- Multiply by `(-1)` when the boolean is `true`. -/
def signC (b : Bool) (t : ℂ) : ℂ := if b then -t else t

@[simp] lemma signC_true (t : ℂ) : signC true t = -t := by simp [signC]
@[simp] lemma signC_false (t : ℂ) : signC false t = t := by simp [signC]

/-- Hermitian inner product `⟪ψ, φ⟫ = ∑ₛ conj(ψ s) · φ s` (conjugate-linear in the
first argument). -/
def innerC (ψ φ : State n ℂ) : ℂ := ∑ s, star (ψ s) * φ s

/-! ## Pauli operators acting on states -/

/-- Action of the Pauli operator `P(x,z) = i^{#Y} Xˣ Z^z` on a state.

On basis vectors `P(x,z)|s⟩ = i^{#Y} (-1)^{z·s} |s ⊕ x⟩`, so the coefficient of
the output at `t` is read off from the input at `t ⊕ x`. -/
def pauliAct (P : PauliString n) (φ : State n ℂ) : State n ℂ :=
  fun t => (Complex.I ^ P.numY) * signC (bdot P.z (bxor t P.x)) (φ (bxor t P.x))

/-! ## The Knill--Laflamme conditions -/

/-- The KL condition for a single Pauli `P` and a family of `K` logical states:
`⟪ψⱼ, P ψₖ⟫ = c_P · δⱼₖ` for a scalar `c_P` independent of `j, k`. -/
def KLCondition {K : ℕ} (ψ : Fin K → State n ℂ) (P : PauliString n) : Prop :=
  ∃ c : ℂ, ∀ j k : Fin K, innerC (ψ j) (pauliAct P (ψ k)) = if j = k then c else 0

/-- The code spanned by `ψ` detects every error of Pauli weight at most `w`. -/
def Detects {K : ℕ} (ψ : Fin K → State n ℂ) (w : ℕ) : Prop :=
  ∀ P : PauliString n, P.wt ≤ w → KLCondition ψ P

/-- A code of distance `d` detects all errors of weight `≤ d - 1`. -/
def HasDistance {K : ℕ} (ψ : Fin K → State n ℂ) (d : ℕ) : Prop :=
  Detects ψ (d - 1)

/-! ## Bitstring XOR as an involution

Needed to reindex the matrix-element sum. -/

@[simp] lemma bxor_bxor_cancel (t x : BitString n) : bxor (bxor t x) x = t := by
  funext i; simp [bxor]

/-- XOR by a fixed bitstring is an equivalence of `BitString n` with itself. -/
def bxorEquiv (x : BitString n) : BitString n ≃ BitString n where
  toFun t := bxor t x
  invFun t := bxor t x
  left_inv t := bxor_bxor_cancel t x
  right_inv t := bxor_bxor_cancel t x

/-! ## The shared bridge lemma -/

/-- **Bridge lemma.** The KL matrix element of a Pauli operator equals the finite
sum computed by the combinatorial certificates:

`⟪ψ, P(x,z) φ⟫ = i^{#Y} · ∑ₛ (-1)^{z·s} · conj(ψ (s ⊕ x)) · φ s`.

This is exactly the summand `SS.diagTerm` / `Examples.D3.NoGo.diagTerm`, up to the
global nonzero prefactor `i^{#Y}` that those definitions deliberately drop. -/
theorem innerC_pauliAct (ψ φ : State n ℂ) (P : PauliString n) :
    innerC ψ (pauliAct P φ)
      = (Complex.I ^ P.numY) *
          ∑ s, signC (bdot P.z s) (star (ψ (bxor s P.x)) * φ s) := by
  classical
  rw [innerC, Finset.mul_sum]
  -- reindex `t = s ⊕ x`, i.e. sum over `s` with `t = bxor s P.x`
  rw [← Equiv.sum_comp (bxorEquiv P.x)
        (fun t => star (ψ t) * pauliAct P φ t)]
  refine Finset.sum_congr rfl (fun s _ => ?_)
  simp only [bxorEquiv, Equiv.coe_fn_mk, pauliAct, bxor_bxor_cancel]
  cases bdot P.z s <;> simp [signC] <;> ring

/-- **Bridge lemma, support form.** When `ψ` is supported in `Sj` and `φ` in `Sk`,
the matrix element is a sum over the intersection `Sk ∩ (Sj ⊕ x)` --- precisely the
index set `SS.diagIntersection` (when `Sj = Sk`) used by the certificates. -/
theorem innerC_pauliAct_support
    (Sj Sk : Finset (BitString n)) (ψ φ : State n ℂ) (P : PauliString n)
    (hψ : ∀ s, s ∉ Sj → ψ s = 0) (hφ : ∀ s, s ∉ Sk → φ s = 0) :
    innerC ψ (pauliAct P φ)
      = (Complex.I ^ P.numY) *
          ∑ s ∈ Sk.filter (fun s => bxor s P.x ∈ Sj),
            signC (bdot P.z s) (star (ψ (bxor s P.x)) * φ s) := by
  classical
  rw [innerC_pauliAct]
  congr 1
  refine (Finset.sum_subset (Finset.subset_univ _) ?_).symm
  intro s _ hs
  simp only [Finset.mem_filter, not_and] at hs
  by_cases hk : s ∈ Sk
  · have h0 : ψ (bxor s P.x) = 0 := hψ _ (hs hk)
    simp [signC, h0]
  · have h0 : φ s = 0 := hφ _ hk
    simp [signC, h0]

/-- The prefactor `i^{#Y}` is never zero, so a matrix element vanishes iff the
support sum vanishes. This is what lets the same lemma serve the certificates and
the no-go proofs. -/
lemma pauliPrefactor_ne_zero (P : PauliString n) : (Complex.I ^ P.numY) ≠ 0 := by
  exact pow_ne_zero _ Complex.I_ne_zero

end

end SS
