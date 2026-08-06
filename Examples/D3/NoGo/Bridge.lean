import Examples.D3.NoGo.Common
import SS.BridgeD3

/-!
# The converse direction used by the distance-3 no-go proofs

The no-go arguments in this directory rule out solutions of explicit algebraic
systems.  To turn that into a statement about *quantum codes* one needs the
converse of the constructive bridge: any code satisfying the Knill--Laflamme
conditions must make the corresponding matrix-element sums vanish.

Because the bridge lemma `SS.innerC_pauliAct_support` is an **equality**, this
direction is available for free.  This module records it for the `ℂ`-valued sums
`Examples.D3.NoGo.diagMatElt` / `offdiagMatElt` used by the no-go files.
-/

namespace Examples.D3.NoGo

open scoped BigOperators

noncomputable section

variable {n : ℕ}

/-- The `ℂ`-valued diagonal sum used by the no-go files is the genuine matrix
element, up to the nonzero prefactor `i^{#Y}`. -/
theorem innerC_eq_diagMatElt (S₀ : Finset (SS.BitString n)) (ψ : SS.State n ℂ)
    (h0 : ∀ s, s ∉ S₀ → ψ s = 0) (P : SS.PauliString n) :
    SS.innerC ψ (SS.pauliAct P ψ)
      = Complex.I ^ P.numY * diagMatElt S₀ ψ P.x P.z := by
  rw [SS.innerC_pauliAct_support S₀ S₀ ψ ψ P h0 h0]
  unfold diagMatElt diagTerm SS.diagIntersection
  congr 1

/-- The `ℂ`-valued off-diagonal sum is the genuine `⟨0_L|P|1_L⟩`, up to a nonzero
prefactor and the global sign `(-1)^{z·1}`. -/
theorem innerC_flip_eq_offdiagMatElt (S₀ : Finset (SS.BitString n)) (ψ : SS.State n ℂ)
    (h0 : ∀ s, s ∉ S₀ → ψ s = 0) (P : SS.PauliString n) :
    SS.innerC ψ (SS.pauliAct P (SS.flipState ψ))
      = Complex.I ^ P.numY *
          SS.signC (SS.bdot P.z (SS.ones n)) (offdiagMatElt S₀ ψ P.x P.z) := by
  rw [SS.innerC_flip S₀ ψ h0 P]
  congr 1
  unfold offdiagMatElt offdiagTerm SS.offdiagIntersection SS.diagIntersection
  rw [← SS.signC_sum]
  refine Finset.sum_congr rfl (fun t _ => ?_)
  rw [show SS.bxor t (SS.ones n) = SS.bxor (SS.ones n) t by
        funext i; simp [SS.bxor, Bool.xor_comm], SS.bdot_bxor_right]
  cases SS.bdot P.z (SS.ones n) <;> cases SS.bdot P.z t <;>
    simp [signMul, SS.signC]

/-! ## Necessity: a valid code makes the no-go sums vanish -/

/-- **Converse for the diagonal sums.**  If the true matrix element vanishes, so does
the sum appearing in the no-go systems. -/
theorem diagMatElt_eq_zero_of_innerC (S₀ : Finset (SS.BitString n)) (ψ : SS.State n ℂ)
    (h0 : ∀ s, s ∉ S₀ → ψ s = 0) (P : SS.PauliString n)
    (h : SS.innerC ψ (SS.pauliAct P ψ) = 0) :
    diagMatElt S₀ ψ P.x P.z = 0 := by
  rw [innerC_eq_diagMatElt S₀ ψ h0 P] at h
  exact (mul_eq_zero.mp h).resolve_left (SS.pauliPrefactor_ne_zero P)

/-- **Converse for the off-diagonal sums.** -/
theorem offdiagMatElt_eq_zero_of_innerC (S₀ : Finset (SS.BitString n))
    (ψ : SS.State n ℂ) (h0 : ∀ s, s ∉ S₀ → ψ s = 0) (P : SS.PauliString n)
    (h : SS.innerC ψ (SS.pauliAct P (SS.flipState ψ)) = 0) :
    offdiagMatElt S₀ ψ P.x P.z = 0 := by
  rw [innerC_flip_eq_offdiagMatElt S₀ ψ h0 P] at h
  have h' := (mul_eq_zero.mp h).resolve_left (SS.pauliPrefactor_ne_zero P)
  cases hb : SS.bdot P.z (SS.ones n) <;> rw [hb] at h' <;>
    simpa [SS.signC] using h'

end

end Examples.D3.NoGo
