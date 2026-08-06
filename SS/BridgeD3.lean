import SS.QSqrt235iC
import SS.FullKLEval
import SS.HilbertKL

/-!
# Bridge: distance-3 certificates and the Knill--Laflamme matrix elements

`SS.FullKLEval` evaluates the distance-3 Knill--Laflamme constraints as exact sums
in the number field `ℚ(√2,√3,√5,i)`.  This module proves that those sums *are* the
Knill--Laflamme matrix elements of the corresponding complex states, by combining

* the embedding `QSqrt235i.toC` and its ring-homomorphism properties
  (`SS/QSqrt235iC.lean`), and
* the shared bridge lemma `innerC_pauliAct_support` (`SS/HilbertKL.lean`).

The identification is an *equality*, so it serves both the constructive certificates
(the evaluated sum vanishes ⟹ the KL matrix element vanishes) and the no-go proofs
(the KL matrix element vanishes ⟹ the evaluated sum vanishes).
-/

namespace SS

open scoped BigOperators

noncomputable section

variable {n : ℕ}

/-! ## Zero and sums -/

@[simp] lemma QSqrt23i.toC_zero : QSqrt23i.toC 0 = 0 := by
  apply Complex.ext <;>
    simp [QSqrt23i.toC, QSqrt23i.reC, QSqrt23i.imC, rp,
      show (0 : QSqrt23i) = QSqrt23i.zero from rfl, QSqrt23i.zero]

@[simp] lemma QSqrt235i.toC_zero : QSqrt235i.toC QSqrt235i.zero = 0 := by
  simp [QSqrt235i.toC, show QSqrt235i.zero = ⟨0, 0⟩ from rfl]

/-- `toC` turns the certificate's `foldSum` into an ordinary complex `Finset.sum`. -/
lemma toC_foldSum (S : Finset (BitString n)) (f : BitString n → QSqrt235i) :
    QSqrt235i.toC (foldSum S f) = ∑ s ∈ S, QSqrt235i.toC (f s) := by
  classical
  unfold foldSum
  induction S using Finset.induction_on with
  | empty => simp
  | insert a s ha ih =>
      rw [Finset.fold_insert ha, Finset.sum_insert ha, ← ih]
      exact QSqrt235i.toC_add _ _

/-! ## The certificate's summand is the Hilbert-space summand -/

/-- The complex state obtained from exact amplitudes. -/
def cToState (c : BitString n → QSqrt235i) : State n ℂ := fun s => QSqrt235i.toC (c s)

lemma toC_diagTerm (c : BitString n → QSqrt235i) (x z s : BitString n) :
    QSqrt235i.toC (diagTerm c x z s)
      = signC (bdot z s) (star (cToState c (bxor s x)) * cToState c s) := by
  unfold diagTerm cToState
  rw [QSqrt235i.toC_signMul, QSqrt235i.toC_mul, QSqrt235i.toC_conj]

/-- **The evaluated diagonal matrix element is the genuine one.**  Combining this
with `innerC_pauliAct_support` identifies `diagMatElt` with
`⟨ψ|P(x,z)|ψ⟩` up to the nonzero prefactor `i^{#Y}`. -/
lemma toC_diagMatElt (S₀ : Finset (BitString n)) (c : BitString n → QSqrt235i)
    (x z : BitString n) :
    QSqrt235i.toC (diagMatElt S₀ c x z)
      = ∑ s ∈ S₀.filter (fun s => bxor s x ∈ S₀),
          signC (bdot z s) (star (cToState c (bxor s x)) * cToState c s) := by
  unfold diagMatElt diagIntersection
  rw [toC_foldSum]
  exact Finset.sum_congr rfl (fun s _ => toC_diagTerm c x z s)

/-- **Diagonal KL matrix element.**  For a state supported in `S₀` with exact
amplitudes `c`, the Knill--Laflamme matrix element of `P` equals the certificate's
evaluated sum, times the nonzero prefactor `i^{#Y}`. -/
theorem innerC_eq_diagMatElt (S₀ : Finset (BitString n)) (c : BitString n → QSqrt235i)
    (hc : ∀ s, s ∉ S₀ → c s = QSqrt235i.zero) (P : PauliString n) :
    innerC (cToState c) (pauliAct P (cToState c))
      = (Complex.I ^ P.numY) * QSqrt235i.toC (diagMatElt S₀ c P.x P.z) := by
  have hvan : ∀ s, s ∉ S₀ → cToState c s = 0 := by
    intro s hs; unfold cToState; rw [hc s hs]; simp
  rw [innerC_pauliAct_support S₀ S₀ (cToState c) (cToState c) P hvan hvan,
    toC_diagMatElt]

/-- Consequently the certificate's vanishing check is equivalent to vanishing of the
true matrix element. -/
theorem innerC_eq_zero_iff_diagMatElt (S₀ : Finset (BitString n))
    (c : BitString n → QSqrt235i) (hc : ∀ s, s ∉ S₀ → c s = QSqrt235i.zero)
    (P : PauliString n) :
    innerC (cToState c) (pauliAct P (cToState c)) = 0
      ↔ QSqrt235i.toC (diagMatElt S₀ c P.x P.z) = 0 := by
  rw [innerC_eq_diagMatElt S₀ c hc P]
  constructor
  · intro h
    exact (mul_eq_zero.mp h).resolve_left (pauliPrefactor_ne_zero P)
  · intro h; rw [h, mul_zero]

/-- The certificate's Boolean zero test suffices: if the exact evaluation reports
zero, the genuine matrix element vanishes. -/
theorem innerC_eq_zero_of_isZero (S₀ : Finset (BitString n))
    (c : BitString n → QSqrt235i) (hc : ∀ s, s ∉ S₀ → c s = QSqrt235i.zero)
    (P : PauliString n) (h : (diagMatElt S₀ c P.x P.z).isZero = true) :
    innerC (cToState c) (pauliAct P (cToState c)) = 0 :=
  (innerC_eq_zero_iff_diagMatElt S₀ c hc P).mpr
    (QSqrt235i.toC_eq_zero_of_isZero h)

/-! ## The off-diagonal element and the complementary ansatz

Under the complementary ansatz `|1_L⟩ = X^{⊗n}|0_L⟩`, the second logical state is
`ψ₁ t = ψ₀ (t ⊕ 1)`. -/

lemma bxor_ones_bxor (t x : BitString n) :
    bxor (bxor t (ones n)) x = bxor t (delta x) := by
  funext i; simp [bxor, delta, ones]

/-- The logical `|1_L⟩` of the complementary ansatz. -/
def flipState (ψ : State n ℂ) : State n ℂ := fun t => ψ (bxor t (ones n))

/-- **Off-diagonal KL matrix element.**  For `|0_L⟩` supported in `S₀` and
`|1_L⟩ = X^{⊗n}|0_L⟩`, the matrix element is the certificate's off-diagonal sum,
over the index set `offdiagIntersection S₀ x`, up to a nonzero prefactor and the
global sign `(-1)^{z·1}` that `offdiagTerm` deliberately drops. -/
lemma innerC_flip (S₀ : Finset (BitString n)) (ψ₀ : State n ℂ)
    (h0 : ∀ s, s ∉ S₀ → ψ₀ s = 0) (P : PauliString n) :
    innerC ψ₀ (pauliAct P (flipState ψ₀))
      = (Complex.I ^ P.numY) *
        ∑ t ∈ S₀.filter (fun t => bxor t (delta P.x) ∈ S₀),
          signC (bdot P.z (bxor t (ones n)))
            (star (ψ₀ (bxor t (delta P.x))) * ψ₀ t) := by
  classical
  rw [innerC_pauliAct]
  congr 1
  rw [← Equiv.sum_comp (bxorEquiv (ones n))
        (fun s => signC (bdot P.z s) (star (ψ₀ (bxor s P.x)) * flipState ψ₀ s))]
  simp only [bxorEquiv, Equiv.coe_fn_mk, flipState, bxor_bxor_cancel, bxor_ones_bxor]
  refine (Finset.sum_subset (Finset.subset_univ _) ?_).symm
  intro t _ ht
  simp only [Finset.mem_filter, not_and] at ht
  by_cases hS : t ∈ S₀
  · have : ψ₀ (bxor t (delta P.x)) = 0 := h0 _ (ht hS)
    simp [signC, this]
  · have : ψ₀ t = 0 := h0 t hS
    simp [signC, this]

/-- The certificate's off-diagonal sum, transported to `ℂ`, agrees with the sum in
`innerC_flip` up to the global sign `(-1)^{z·1}`. -/
lemma toC_offdiagMatElt (S₀ : Finset (BitString n)) (c : BitString n → QSqrt235i)
    (x z : BitString n) :
    QSqrt235i.toC (offdiagMatElt S₀ c x z)
      = ∑ t ∈ S₀.filter (fun t => bxor t (delta x) ∈ S₀),
          signC (bdot z t) (star (cToState c (bxor t (delta x))) * cToState c t) := by
  unfold offdiagMatElt offdiagIntersection diagIntersection
  rw [toC_foldSum]
  refine Finset.sum_congr rfl (fun s _ => ?_)
  unfold offdiagTerm cToState
  rw [QSqrt235i.toC_signMul, QSqrt235i.toC_mul, QSqrt235i.toC_conj]

/-- A global sign factors out of a finite sum. -/
lemma signC_sum {ι : Type*} (S : Finset ι) (b : Bool) (f : ι → ℂ) :
    ∑ t ∈ S, signC b (f t) = signC b (∑ t ∈ S, f t) := by
  cases b <;> simp [signC, Finset.sum_neg_distrib]

/-- `bdot` is additive over `GF(2)` in its second argument. -/
lemma bdot_bxor_right (z t u : BitString n) :
    bdot z (bxor t u) = xor (bdot z t) (bdot z u) := by
  classical
  have key : (Finset.univ.filter (fun i => z i && bxor t u i)).card % 2
      = ((Finset.univ.filter (fun i => z i && t i)).card
          + (Finset.univ.filter (fun i => z i && u i)).card) % 2 := by
    simp only [Finset.card_filter, ← Finset.sum_add_distrib]
    conv_lhs => rw [Finset.sum_nat_mod]
    conv_rhs => rw [Finset.sum_nat_mod]
    congr 1
    refine Finset.sum_congr rfl (fun i _ => ?_)
    cases z i <;> cases hti : t i <;> cases hui : u i <;> simp [bxor, hti, hui]
  unfold bdot
  rw [key]
  rcases Nat.even_or_odd (Finset.univ.filter (fun i => z i && t i)).card with h1 | h1 <;>
    rcases Nat.even_or_odd (Finset.univ.filter (fun i => z i && u i)).card with h2 | h2 <;>
    simp [Nat.even_iff, Nat.odd_iff] at h1 h2 <;>
    simp [h1, h2, Nat.add_mod]

/-- **Off-diagonal vanishing transfers.**  If the certificate's off-diagonal
evaluation is zero, the genuine matrix element `⟨0_L|P|1_L⟩` vanishes. -/
theorem innerC_flip_eq_zero_of_isZero (S₀ : Finset (BitString n))
    (c : BitString n → QSqrt235i) (hc : ∀ s, s ∉ S₀ → c s = QSqrt235i.zero)
    (P : PauliString n) (h : (offdiagMatElt S₀ c P.x P.z).isZero = true) :
    innerC (cToState c) (pauliAct P (flipState (cToState c))) = 0 := by
  classical
  have hvan : ∀ s, s ∉ S₀ → cToState c s = 0 := by
    intro s hs; unfold cToState; rw [hc s hs]; simp
  have hsum : QSqrt235i.toC (offdiagMatElt S₀ c P.x P.z) = 0 :=
    QSqrt235i.toC_eq_zero_of_isZero h
  rw [toC_offdiagMatElt] at hsum
  rw [innerC_flip S₀ (cToState c) hvan P]
  -- the two sums differ termwise by the constant sign `(-1)^{z·1}`
  have hterm : ∀ t : BitString n,
      signC (bdot P.z (bxor t (ones n)))
          (star (cToState c (bxor t (delta P.x))) * cToState c t)
        = signC (bdot P.z (ones n))
            (signC (bdot P.z t)
              (star (cToState c (bxor t (delta P.x))) * cToState c t)) := by
    intro t
    rw [show bxor t (ones n) = bxor (ones n) t by funext i; simp [bxor, Bool.xor_comm],
      bdot_bxor_right]
    cases bdot P.z (ones n) <;> cases bdot P.z t <;> simp [signC]
  rw [Finset.sum_congr rfl (fun t _ => hterm t), signC_sum, hsum]
  cases bdot P.z (ones n) <;> simp [signC]

/-! ## The diagonal element of `|1_L⟩`, and the automatic cases -/

lemma bxor_ones_bxor_ones (t x : BitString n) :
    bxor (bxor (bxor t (ones n)) x) (ones n) = bxor t x := by
  funext i; simp [bxor, ones]

/-- `bdot` against the all-ones string is the parity of the Hamming weight. -/
lemma bdot_ones (z : BitString n) : bdot z (ones n) = (hammingWt z % 2 == 1) := by
  unfold bdot hammingWt ones
  simp only [Bool.and_true]

/-- **The two diagonal elements are related by `(-1)^{wt(z)}`.**  Hence for even
`wt(z)` the diagonal Knill--Laflamme equality `⟨0|P|0⟩ = ⟨1|P|1⟩` is automatic, and
for odd `wt(z)` it reduces to vanishing of `⟨0|P|0⟩`. -/
lemma innerC_flip_diag (ψ₀ : State n ℂ) (P : PauliString n) :
    innerC (flipState ψ₀) (pauliAct P (flipState ψ₀))
      = signC (bdot P.z (ones n)) (innerC ψ₀ (pauliAct P ψ₀)) := by
  classical
  rw [innerC_pauliAct, innerC_pauliAct]
  rw [← Equiv.sum_comp (bxorEquiv (ones n))
        (fun s => signC (bdot P.z s)
          (star (flipState ψ₀ (bxor s P.x)) * flipState ψ₀ s))]
  simp only [bxorEquiv, Equiv.coe_fn_mk, flipState, bxor_bxor_cancel,
    bxor_ones_bxor_ones]
  have hterm : ∀ t : BitString n,
      signC (bdot P.z (bxor t (ones n))) (star (ψ₀ (bxor t P.x)) * ψ₀ t)
        = signC (bdot P.z (ones n))
            (signC (bdot P.z t) (star (ψ₀ (bxor t P.x)) * ψ₀ t)) := by
    intro t
    rw [show bxor t (ones n) = bxor (ones n) t by funext i; simp [bxor, Bool.xor_comm],
      bdot_bxor_right]
    cases bdot P.z (ones n) <;> cases bdot P.z t <;> simp [signC]
  rw [Finset.sum_congr rfl (fun t _ => hterm t), signC_sum]
  cases bdot P.z (ones n) <;> simp [signC]

/-- An empty diagonal intersection forces the diagonal matrix element to vanish. -/
lemma innerC_eq_zero_of_diagIntersection_empty (S₀ : Finset (BitString n))
    (ψ₀ : State n ℂ) (h0 : ∀ s, s ∉ S₀ → ψ₀ s = 0) (P : PauliString n)
    (he : diagIntersection S₀ P.x = ∅) :
    innerC ψ₀ (pauliAct P ψ₀) = 0 := by
  rw [innerC_pauliAct_support S₀ S₀ ψ₀ ψ₀ P h0 h0]
  unfold diagIntersection at he
  rw [he]
  simp

/-- An empty off-diagonal intersection forces `⟨0_L|P|1_L⟩` to vanish. -/
lemma innerC_flip_eq_zero_of_offdiagIntersection_empty (S₀ : Finset (BitString n))
    (ψ₀ : State n ℂ) (h0 : ∀ s, s ∉ S₀ → ψ₀ s = 0) (P : PauliString n)
    (he : offdiagIntersection S₀ P.x = ∅) :
    innerC ψ₀ (pauliAct P (flipState ψ₀)) = 0 := by
  rw [innerC_flip S₀ ψ₀ h0 P]
  unfold offdiagIntersection diagIntersection at he
  rw [he]
  simp

/-! ## Assembling the certificate into the Knill--Laflamme conditions -/

lemma fold_and_eq_true_iff {ι : Type*} [DecidableEq ι] (S : Finset ι) (f : ι → Bool) :
    S.fold (· && ·) true f = true ↔ ∀ x ∈ S, f x = true := by
  classical
  induction S using Finset.induction_on with
  | empty => simp
  | insert a s ha ih => simp [Finset.fold_insert ha, ih, Bool.and_eq_true]

/-- The aggregate check yields the check for each individual Pauli of weight ≤ `w`. -/
theorem klConstraintOK_of_allKLSatisfied (S₀ : Finset (BitString n))
    (c : BitString n → QSqrt235i) (w : ℕ) (h : AllKLSatisfied S₀ c w)
    (P : PauliString n) (hw : P.wt ≤ w) : klConstraintOK S₀ c P = true := by
  classical
  unfold AllKLSatisfied allKLSatisfied at h
  rw [fold_and_eq_true_iff] at h
  exact h P (by simp [hw])

/-- **Distance-3 bridge.**  If the exact certificate `allKLSatisfied` accepts, then the
two logical states of the complementary ansatz satisfy the genuine Knill--Laflamme
conditions for every Pauli of weight ≤ `w`: the off-diagonal element vanishes and the
two diagonal elements agree. -/
theorem KL_of_allKLSatisfied (S₀ : Finset (BitString n)) (c : BitString n → QSqrt235i)
    (hc : ∀ s, s ∉ S₀ → c s = QSqrt235i.zero) (w : ℕ) (h : AllKLSatisfied S₀ c w)
    (P : PauliString n) (hw : P.wt ≤ w) :
    innerC (cToState c) (pauliAct P (flipState (cToState c))) = 0
      ∧ innerC (flipState (cToState c)) (pauliAct P (flipState (cToState c)))
          = innerC (cToState c) (pauliAct P (cToState c)) := by
  classical
  have hvan : ∀ s, s ∉ S₀ → cToState c s = 0 := by
    intro s hs; unfold cToState; rw [hc s hs]; simp
  have hP := klConstraintOK_of_allKLSatisfied S₀ c w h P hw
  unfold klConstraintOK at hP
  rw [Bool.and_eq_true] at hP
  obtain ⟨hdiag, hoff⟩ := hP
  constructor
  · -- off-diagonal vanishes
    rcases Bool.or_eq_true_iff.mp hoff with hA | hZ
    · exact innerC_flip_eq_zero_of_offdiagIntersection_empty S₀ _ hvan P
        (by unfold offdiagIsAutomatic at hA; simpa using hA)
    · exact innerC_flip_eq_zero_of_isZero S₀ c hc P hZ
  · -- the two diagonal elements agree
    rw [innerC_flip_diag]
    by_cases hb : bdot P.z (ones n) = false
    · rw [hb]; simp [signC]
    · -- odd `wt(z)`: the diagonal element must vanish
      have hzero : innerC (cToState c) (pauliAct P (cToState c)) = 0 := by
        rcases Bool.or_eq_true_iff.mp hdiag with hA | hZ
        · rcases Bool.or_eq_true_iff.mp hA with hEven | hEmpty
          · exact absurd (by rw [bdot_ones]; simpa using hEven) hb
          · exact innerC_eq_zero_of_diagIntersection_empty S₀ _ hvan P
              (by simpa using hEmpty)
        · exact innerC_eq_zero_of_isZero S₀ c hc P hZ
      rw [hzero]
      cases bdot P.z (ones n) <;> simp [signC]

end

end SS
