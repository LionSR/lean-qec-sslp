import Mathlib
import SS.HilbertKL
import SS.Basic

/-!
# Family II: even-parity subset-sum codes

The manuscript's Family II restricts supports to the even-parity subcode.  Every
single-qubit `X` or `Y` error then maps a basis state to an odd-parity string,
which lies outside the support of every logical state, so all off-diagonal
matrix elements vanish for combinatorial reasons.  The `Z` constraints hold as
soon as each support is column-balanced.

The theorem below is stated for arbitrary amplitudes that are constant on each
support and normalized, which covers the uniform superpositions of the
manuscript without introducing square roots.

No `sorry`.
-/

namespace SS
namespace FamilyII

variable {n m : ℕ} [NeZero m]

/-- The even-parity subset-sum class `C⁺_b(w)`. -/
def evenClass (w : Fin n → ZMod m) (b : ZMod m) : Finset (BitString n) :=
  Finset.univ.filter (fun σ => hammingWt σ % 2 = 0 ∧ weight (m := m) w σ = b)

/-- A logical state: the given amplitude on its class, zero elsewhere. -/
noncomputable def state (w : Fin n → ZMod m) (b : ZMod m) (a : ℂ) : State n ℂ :=
  fun σ => if σ ∈ evenClass (m := m) w b then a else 0

@[simp] lemma mem_evenClass {w : Fin n → ZMod m} {b : ZMod m} {σ : BitString n} :
    σ ∈ evenClass (m := m) w b ↔ hammingWt σ % 2 = 0 ∧ weight (m := m) w σ = b := by
  simp [evenClass]

/-! ## Flipping one bit changes the parity -/

private lemma flip_apply (σ : BitString n) (i j : Fin n) :
    bxor σ (stdBasis i) j = if j = i then !(σ j) else σ j := by
  by_cases h : j = i
  · subst h; simp [bxor, stdBasis]
  · have hb : (j == i) = false := by simpa using h
    simp [bxor, stdBasis, hb, h]

private lemma filter_flip_true (σ : BitString n) (i : Fin n) (hi : σ i = true) :
    (Finset.univ.filter (fun j => bxor σ (stdBasis i) j = true))
      = (Finset.univ.filter (fun j => σ j = true)).erase i := by
  ext j
  by_cases h : j = i <;> simp [flip_apply, h, hi]

private lemma filter_flip_false (σ : BitString n) (i : Fin n) (hi : σ i = false) :
    (Finset.univ.filter (fun j => bxor σ (stdBasis i) j = true))
      = insert i (Finset.univ.filter (fun j => σ j = true)) := by
  ext j
  by_cases h : j = i <;> simp [flip_apply, h, hi]

/-- Flipping one bit changes the Hamming weight by exactly one, hence its parity. -/
lemma hammingWt_flip (σ : BitString n) (i : Fin n) :
    hammingWt (bxor σ (stdBasis i)) % 2 ≠ hammingWt σ % 2 := by
  by_cases hi : σ i = true
  · have hmem : i ∈ Finset.univ.filter (fun j => σ j = true) := by simp [hi]
    have : hammingWt (bxor σ (stdBasis i)) = hammingWt σ - 1 := by
      simp only [hammingWt, filter_flip_true σ i hi]
      exact Finset.card_erase_of_mem hmem
    have hpos : 0 < hammingWt σ := by
      simpa [hammingWt] using Finset.card_pos.mpr ⟨i, hmem⟩
    omega
  · have hi' : σ i = false := by simpa using hi
    have hmem : i ∉ Finset.univ.filter (fun j => σ j = true) := by simp [hi']
    have : hammingWt (bxor σ (stdBasis i)) = hammingWt σ + 1 := by
      simp only [hammingWt, filter_flip_false σ i hi']
      exact Finset.card_insert_of_notMem hmem
    omega

/-! ## Consequences for the supports -/

/-- A one-bit flip leaves every even-parity class. -/
lemma flip_notMem (w : Fin n → ZMod m) (b : ZMod m) (σ : BitString n) (i : Fin n)
    (hσ : σ ∈ evenClass (m := m) w b) :
    bxor σ (stdBasis i) ∉ evenClass (m := m) w b' := by
  intro h
  rw [mem_evenClass] at hσ h
  exact hammingWt_flip σ i (by rw [h.1, hσ.1])

/-- Classes with different residues are disjoint. -/
lemma evenClass_disjoint (w : Fin n → ZMod m) {b b' : ZMod m} (hbb : b ≠ b')
    {σ : BitString n} (h : σ ∈ evenClass (m := m) w b) :
    σ ∉ evenClass (m := m) w b' := by
  intro h'
  rw [mem_evenClass] at h h'
  exact hbb (h.2 ▸ h'.2 ▸ rfl)

/-! ## The Knill--Laflamme conditions -/

/-- With a nonzero `x`-part of weight one, every matrix element vanishes: the flip
takes each support string out of every class. -/
lemma innerC_of_flip (w : Fin n → ZMod m) (b b' : ZMod m) (a a' : ℂ) (P : PauliString n)
    (i : Fin n) (hx : P.x = stdBasis i) :
    innerC (state (m := m) w b a) (pauliAct P (state (m := m) w b' a')) = 0 := by
  rw [innerC]
  refine Finset.sum_eq_zero (fun t _ => ?_)
  by_cases h : t ∈ evenClass (m := m) w b
  · have : bxor t P.x ∉ evenClass (m := m) w b' := by
      rw [hx]; exact flip_notMem (m := m) w b t i h
    simp [pauliAct, state, this, signC]
  · simp [state, h]

/-- With `x = 0` and distinct residues the classes are disjoint, so the matrix
element vanishes. -/
lemma innerC_diag_off (w : Fin n → ZMod m) {b b' : ZMod m} (hbb : b ≠ b') (a a' : ℂ)
    (P : PauliString n) (hx : P.x = fun _ => false) :
    innerC (state (m := m) w b a) (pauliAct P (state (m := m) w b' a')) = 0 := by
  rw [innerC]
  refine Finset.sum_eq_zero (fun t _ => ?_)
  by_cases h : t ∈ evenClass (m := m) w b
  · have h' : t ∉ evenClass (m := m) w b' := evenClass_disjoint (m := m) w hbb h
    have hb : bxor t P.x = t := by rw [hx]; funext j; simp [bxor]
    simp [pauliAct, state, hb, h', signC]
  · simp [state, h]

/-- The diagonal matrix element as a signed count over the class. -/
lemma innerC_diag (w : Fin n → ZMod m) (b : ZMod m) (a : ℂ) (P : PauliString n)
    (hx : P.x = fun _ => false) :
    innerC (state (m := m) w b a) (pauliAct P (state (m := m) w b a))
      = (star a * a) * ∑ t ∈ evenClass (m := m) w b, (if bdot P.z t then (-1 : ℂ) else 1) := by
  have hb : ∀ t : BitString n, bxor t P.x = t := by
    intro t; rw [hx]; funext j; simp [bxor]
  have hy : P.numY = 0 := by
    simp [PauliString.numY, hx]
  have hzero : ∀ t ∈ (Finset.univ : Finset (BitString n)), t ∉ evenClass (m := m) w b →
      star (state (m := m) w b a t) * (pauliAct P (state (m := m) w b a) t) = 0 := by
    intro t _ ht; simp [state, ht]
  rw [innerC, ← Finset.sum_subset (Finset.subset_univ (evenClass (m := m) w b)) hzero,
    Finset.mul_sum]
  refine Finset.sum_congr rfl (fun t ht => ?_)
  simp only [pauliAct, state, if_pos ht, hb, hy, pow_zero, one_mul, signC]
  by_cases h : bdot P.z t <;> simp [h] <;> ring

private lemma bdot_stdBasis (i : Fin n) (s : BitString n) : bdot (stdBasis i) s = s i := by
  classical
  simp only [bdot, stdBasis]
  have : (Finset.univ.filter (fun j => ((j == i) && s j) = true)) = if s i then {i} else ∅ := by
    ext j
    by_cases h : j = i <;> by_cases hs : s i <;> simp [h, hs]
  rw [this]
  cases h : s i <;> simp

/-- Column balance makes the signed count vanish. -/
lemma signed_count_zero (w : Fin n → ZMod m) (b : ZMod m) (i : Fin n)
    (hbal : 2 * ((evenClass (m := m) w b).filter (fun σ => σ i = true)).card
              = (evenClass (m := m) w b).card) :
    ∑ t ∈ evenClass (m := m) w b, (if bdot (stdBasis i) t then (-1 : ℂ) else 1) = 0 := by
  classical
  simp only [bdot_stdBasis]
  rw [Finset.sum_ite, Finset.sum_const, Finset.sum_const, nsmul_eq_mul, nsmul_eq_mul]
  have h1 : ((evenClass (m := m) w b).filter (fun t => t i = true)).card
      + ((evenClass (m := m) w b).filter (fun t => ¬ t i = true)).card
      = (evenClass (m := m) w b).card := Finset.filter_card_add_filter_neg_card_eq_card _
  have h2 := hbal
  have : ((evenClass (m := m) w b).filter (fun t => ¬ t i = true)).card
       = ((evenClass (m := m) w b).filter (fun t => t i = true)).card := by omega
  simp only [Finset.filter_congr_decidable] at *
  rw [this]
  ring

/-- With no `z`-part the signed count is the size of the class. -/
lemma signed_count_id (w : Fin n → ZMod m) (b : ZMod m) :
    ∑ t ∈ evenClass (m := m) w b, (if bdot (fun _ => false) t then (-1 : ℂ) else 1)
      = ((evenClass (m := m) w b).card : ℂ) := by
  have : ∀ t : BitString n, bdot (fun _ => false) t = false := by
    intro t; simp [bdot]
  simp [this]

private lemma eq_stdBasis_of_card_le_one (v : BitString n)
    (h : (Finset.univ.filter (fun i => v i = true)).card ≤ 1)
    (hne : v ≠ fun _ => false) : ∃ i, v = stdBasis i := by
  classical
  obtain ⟨i, hi⟩ : ∃ i, v i = true := by
    by_contra hc
    push_neg at hc
    exact hne (funext fun j => by simpa using hc j)
  refine ⟨i, funext fun j => ?_⟩
  by_cases hji : j = i
  · subst hji; simp [stdBasis, hi]
  · have hj : v j = false := by
      by_contra hjt
      have hjv : v j = true := by simpa using hjt
      have h1 : j ∈ Finset.univ.filter (fun k => v k = true) := by simp [hjv]
      have h2 : i ∈ Finset.univ.filter (fun k => v k = true) := by simp [hi]
      exact hji (Finset.card_le_one.mp h j h1 i h2)
    simp [stdBasis, hji, hj]

private lemma x_card_le (P : PauliString n) (h : P.wt ≤ 1) :
    (Finset.univ.filter (fun i => P.x i = true)).card ≤ 1 := by
  refine le_trans (Finset.card_le_card ?_) h
  intro i hi; simp at hi ⊢; simp [hi]

private lemma z_card_le (P : PauliString n) (h : P.wt ≤ 1) :
    (Finset.univ.filter (fun i => P.z i = true)).card ≤ 1 := by
  refine le_trans (Finset.card_le_card ?_) h
  intro i hi; simp at hi ⊢; simp [hi]

/-- **Family II satisfies the weight-one Knill--Laflamme conditions.** -/
theorem detects (w : Fin n → ZMod m) {K : ℕ} (S : Fin K → ZMod m)
    (hS : Function.Injective S) (a : Fin K → ℂ)
    (hnorm : ∀ k, (star (a k) * a k) * ((evenClass (m := m) w (S k)).card : ℂ) = 1)
    (hbal : ∀ k i, 2 * ((evenClass (m := m) w (S k)).filter (fun σ => σ i = true)).card
                    = (evenClass (m := m) w (S k)).card) :
    Detects (fun k => state (m := m) w (S k) (a k)) 1 := by
  classical
  intro P hP
  by_cases hx : P.x = fun _ => false
  · by_cases hz : P.z = fun _ => false
    · refine ⟨1, fun j k => ?_⟩
      rcases eq_or_ne j k with h | h
      · subst h
        rw [innerC_diag (m := m) w (S j) (a j) P hx, hz, signed_count_id, hnorm j]
        simp
      · rw [innerC_diag_off (m := m) w (fun hc => h (hS hc)) (a j) (a k) P hx]
        simp [h]
    · obtain ⟨i, hi⟩ := eq_stdBasis_of_card_le_one P.z (z_card_le P hP) hz
      refine ⟨0, fun j k => ?_⟩
      rcases eq_or_ne j k with h | h
      · subst h
        rw [innerC_diag (m := m) w (S j) (a j) P hx, hi, signed_count_zero (m := m) w _ i (hbal j i)]
        simp
      · rw [innerC_diag_off (m := m) w (fun hc => h (hS hc)) (a j) (a k) P hx]
        simp [h]
  · obtain ⟨i, hi⟩ := eq_stdBasis_of_card_le_one P.x (x_card_le P hP) hx
    refine ⟨0, fun j k => ?_⟩
    rw [innerC_of_flip (m := m) w (S j) (S k) (a j) (a k) P i hi]
    simp [eq_comm]

end FamilyII
end SS
