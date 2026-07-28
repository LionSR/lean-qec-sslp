import SS.HilbertKL
import SS.Verify

/-!
# Bridge: distance-2 certificates imply the Knill--Laflamme conditions

`SS.Verify.ExampleData.OK` is a *finite, arithmetic* certificate: subset-sum
support, residue-shift screen, probability normalization, and equality of the
`Z`-marginals.  This module proves that this certificate has the intended
**quantum-error-correction meaning**: any logical states whose squared amplitudes
are the recorded probabilities satisfy the genuine Knill--Laflamme conditions for
every Pauli error of weight at most one, i.e. the code detects all single-qubit
errors.

The main result is `OK_detects_weight1`.

## Two side conditions

Beyond `OK` itself the statement needs two hypotheses that `OK` does not imply:

* `ha : ∀ i, ex.a i ≠ 0` --- otherwise flipping qubit `i` preserves the residue
  class and the diagonal `⟨j|Xᵢ|j⟩` need not agree across logical states;
* `hS : Function.Injective ex.S` --- otherwise two logical states share a residue
  class and need not be orthogonal.

Both hold for every code in the distance-2 catalogue (verified: 0 exceptions out
of 14,116), and both are decidable, so each catalogue entry discharges them by
`decide`.

## Amplitudes

We never construct `√p`.  Instead we quantify over *any* complex amplitudes whose
squared modulus is the recorded probability (`IsAmplitudes`), which is both more
general and keeps the whole argument inside `ℚ`-arithmetic: the only place
amplitudes appear is through `conj(ψ) * ψ = p`.
-/

namespace SS

open Verify
open scoped BigOperators ComplexConjugate

variable {n m K : ℕ} [NeZero m]

/-- Complex amplitudes realizing the probabilities recorded by an `ExampleData`. -/
structure IsAmplitudes (ex : ExampleData n m K) (ψ : Fin K → State n ℂ) : Prop where
  /-- Amplitudes vanish off the recorded support. -/
  vanish : ∀ k s, s ∉ ex.supp k → ψ k s = 0
  /-- The squared modulus is the recorded probability. -/
  modsq : ∀ k s, star (ψ k s) * ψ k s = ((ex.prob k s : ℚ) : ℂ)

/-- **Non-vacuity.**  Amplitudes realizing the recorded probabilities always exist:
take the (real, nonnegative) square roots.  Without this, statements quantified
over `IsAmplitudes` could be vacuously true. -/
theorem exists_amplitudes (ex : ExampleData n m K)
    (hnorm : ∀ k, IsNormalizedProb (ex.supp k) (ex.prob k)) :
    ∃ ψ : Fin K → State n ℂ, IsAmplitudes ex ψ := by
  classical
  have hpos : ∀ k s, (0 : ℚ) ≤ ex.prob k s := by
    intro k s
    by_cases hs : s ∈ ex.supp k
    · exact (hnorm k).2.1 s hs
    · rw [(hnorm k).1 s hs]
  refine ⟨fun k s => ((Real.sqrt ((ex.prob k s : ℚ) : ℝ) : ℝ) : ℂ), ?_, ?_⟩
  · intro k s hs
    rw [(hnorm k).1 s hs]
    norm_num
  · intro k s
    rw [Complex.star_def, Complex.conj_ofReal, ← Complex.ofReal_mul,
      Real.mul_self_sqrt (by exact_mod_cast hpos k s)]
    norm_cast

/-! ## Elementary bitstring lemmas -/

/-- `bdot` against a standard basis vector reads off a single bit. -/
lemma bdot_stdBasis (i : Fin n) (s : BitString n) :
    bdot (stdBasis i) s = s i := by
  classical
  have hset : (Finset.univ.filter (fun j => (stdBasis i j) && s j))
      = Finset.filter (fun j => s j = true) {i} := by
    ext j
    simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_singleton,
      stdBasis, Bool.and_eq_true, beq_iff_eq]
  unfold bdot
  rw [hset, Finset.filter_singleton]
  cases h : s i <;> simp

/-- XOR with the all-`false` string is the identity. -/
lemma bxor_of_forall_false {x : BitString n} (hx : ∀ i, x i = false) (s : BitString n) :
    bxor s x = s := by
  funext i; simp [bxor, hx i]

/-! ## The key emptiness lemma -/

/-- **Single-bit shifts leave every residue class.**  If `aᵢ ≠ 0` and the
residue-shift screen holds, then no element of `supp k` can be moved into
`supp j` by flipping qubit `i` --- for *any* pair `j, k` (including `j = k`,
which is where `aᵢ ≠ 0` is used). -/
lemma filter_shift_eq_empty (ex : ExampleData n m K)
    (hSS : ∀ k, SSConditionSupport' (m := m) ex.a (ex.S k) (ex.supp k))
    (hscr : ResidueShiftScreen (m := m) ex.a ex.S)
    {i : Fin n} (hai : ex.a i ≠ 0) (j k : Fin K) :
    (ex.supp k).filter (fun s => bxor s (stdBasis i) ∈ ex.supp j) = ∅ := by
  classical
  rw [Finset.filter_eq_empty_iff]
  intro s hsk hsj
  have h1 : weight (m := m) ex.a s = ex.S k := hSS k hsk
  have h2 : weight (m := m) ex.a (flipBit s i) = ex.S j := by
    rw [flipBit_eq_bxor_stdBasis]; exact hSS j hsj
  have h3 := weight_flipBit_sub (m := m) ex.a s i
  rw [h1, h2] at h3
  -- h3 : ex.S j - ex.S k = if s i then -ex.a i else ex.a i
  by_cases hjk : j = k
  · subst hjk
    rw [sub_self] at h3
    cases hsi : s i <;> simp [hsi] at h3
    · exact hai h3.symm
    · exact hai h3
  · obtain ⟨hne1, hne2⟩ := hscr i j k hjk
    cases hsi : s i <;> simp [hsi] at h3
    · exact hne1 h3
    · exact hne2 h3

/-- Distinct logical states live in distinct residue classes, hence have disjoint
supports. -/
lemma supports_disjoint (ex : ExampleData n m K)
    (hSS : ∀ k, SSConditionSupport' (m := m) ex.a (ex.S k) (ex.supp k))
    (hS : Function.Injective ex.S) {j k : Fin K} (hjk : j ≠ k) :
    (ex.supp k).filter (fun s => s ∈ ex.supp j) = ∅ := by
  classical
  rw [Finset.filter_eq_empty_iff]
  intro s hsk hsj
  exact hjk (hS ((hSS j hsj).symm.trans (hSS k hsk)))

/-! ## Structure of weight-≤1 Paulis -/

/-- A bitstring that is `true` exactly at `i` is the standard basis vector. -/
lemma eq_stdBasis_of {y : BitString n} {i : Fin n} (hi : y i = true)
    (hoff : ∀ j, j ≠ i → y j = false) : y = stdBasis i := by
  funext j
  by_cases hj : j = i
  · subst hj; simp [stdBasis, hi]
  · simp [stdBasis, hoff j hj, hj]

/-- `bdot` against the all-`false` string is `false`. -/
lemma bdot_of_forall_false {z : BitString n} (hz : ∀ i, z i = false) (s : BitString n) :
    bdot z s = false := by
  classical
  have : (Finset.univ.filter (fun i => z i && s i)) = ∅ := by
    rw [Finset.filter_eq_empty_iff]; intro i _; simp [hz i]
  unfold bdot; rw [this]; simp

/-- A Pauli with trivial `X`-part has no `Y` factors, so its phase prefactor is `1`. -/
lemma numY_of_x_false {P : PauliString n} (hx : ∀ i, P.x i = false) : P.numY = 0 := by
  classical
  have hset : (Finset.univ.filter (fun i => P.x i && P.z i)) = ∅ := by
    rw [Finset.filter_eq_empty_iff]; intro i _; simp [hx i]
  unfold PauliString.numY; rw [hset]; simp

/-- If a Pauli has weight ≤ 1 and acts nontrivially at `i`, it is trivial elsewhere. -/
lemma trivial_off_of_wt_le_one {P : PauliString n} (h : P.wt ≤ 1)
    {i : Fin n} (hi : P.x i || P.z i) {j : Fin n} (hj : j ≠ i) :
    P.x j = false ∧ P.z j = false := by
  classical
  by_contra hc
  have hjT : j ∈ Finset.univ.filter (fun i => P.x i || P.z i) := by
    simp only [Finset.mem_filter, Finset.mem_univ, true_and, Bool.or_eq_true]
    by_cases h1 : P.x j = true
    · exact Or.inl h1
    · by_cases h2 : P.z j = true
      · exact Or.inr h2
      · simp only [Bool.not_eq_true] at h1 h2
        exact absurd ⟨h1, h2⟩ hc
  have hiT : i ∈ Finset.univ.filter (fun i => P.x i || P.z i) := by
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]; exact hi
  exact hj (Finset.card_le_one.mp h j hjT i hiT)

/-! ## Main theorem -/

/-- **Bridge theorem (distance 2).**  A code certified by `ExampleData.OK`
(together with the two decidable side conditions `aᵢ ≠ 0` and injectivity of the
residues) satisfies the Knill--Laflamme conditions for every Pauli error of weight
at most one: it detects all single-qubit errors. -/
theorem OK_detects_weight1 (ex : ExampleData n m K)
    (hOK : ex.OK) (ha : ∀ i, ex.a i ≠ 0) (hS : Function.Injective ex.S)
    (ψ : Fin K → State n ℂ) (hψ : IsAmplitudes ex ψ) :
    Detects ψ 1 := by
  classical
  obtain ⟨hSS, hscr, hnorm, hz⟩ := hOK
  intro P hwt
  -- The matrix element, via the shared bridge lemma.
  have key : ∀ j k : Fin K,
      innerC (ψ j) (pauliAct P (ψ k))
        = (Complex.I ^ P.numY) *
            ∑ s ∈ (ex.supp k).filter (fun s => bxor s P.x ∈ ex.supp j),
              signC (bdot P.z s) (star (ψ j (bxor s P.x)) * ψ k s) := fun j k =>
    innerC_pauliAct_support (ex.supp j) (ex.supp k) (ψ j) (ψ k) P
      (hψ.vanish j) (hψ.vanish k)
  by_cases hx : ∀ i, P.x i = false
  · -- `X`-part trivial: `P` is `I` or a `Z`-type error.
    have hbx : ∀ s : BitString n, bxor s P.x = s := bxor_of_forall_false hx
    by_cases hzz : ∀ i, P.z i = false
    · -- `P = I`: the identity constraint is orthonormality of the logical states.
      refine ⟨1, fun j k => ?_⟩
      rw [key j k]
      simp only [hbx]
      by_cases hjk : j = k
      · subst hjk
        rw [Finset.filter_true_of_mem (fun s hs => hs), numY_of_x_false hx]
        simp only [pow_zero, one_mul]
        have hterm : ∀ s ∈ ex.supp j, signC (bdot P.z s) (star (ψ j s) * ψ j s)
            = ((ex.prob j s : ℚ) : ℂ) := by
          intro s _
          rw [bdot_of_forall_false hzz, signC_false, hψ.modsq]
        rw [Finset.sum_congr rfl hterm, ← Rat.cast_sum, (hnorm j).2.2]
        simp
      · rw [supports_disjoint ex hSS hS hjk]
        simp [if_neg hjk]
    · -- `P = Zᵢ` for a unique `i`: the constraint is equality of the `Z`-marginals.
      push_neg at hzz
      obtain ⟨i, hi⟩ := hzz
      have hzi : P.z i = true := by simpa using hi
      have hzstd : P.z = stdBasis i :=
        eq_stdBasis_of hzi (fun j hj => (trivial_off_of_wt_le_one hwt (by simp [hzi]) hj).2)
      refine ⟨((ex.targetZ i : ℚ) : ℂ), fun j k => ?_⟩
      rw [key j k]
      simp only [hbx]
      by_cases hjk : j = k
      · subst hjk
        rw [Finset.filter_true_of_mem (fun s hs => hs), numY_of_x_false hx]
        simp only [pow_zero, one_mul]
        have hterm : ∀ s ∈ ex.supp j, signC (bdot P.z s) (star (ψ j s) * ψ j s)
            = ((ex.prob j s * (zSign s i : ℚ) : ℚ) : ℂ) := by
          intro s _
          rw [hzstd, bdot_stdBasis, hψ.modsq]
          cases hsi : s i <;> simp [signC, zSign, hsi]
        rw [Finset.sum_congr rfl hterm, ← Rat.cast_sum]
        have hzj := hz j i
        unfold zExpectation at hzj
        rw [hzj]
        simp
      · rw [supports_disjoint ex hSS hS hjk]
        simp [if_neg hjk]
  · -- `X`/`Y`-type error: the shifted support intersection is empty.
    push_neg at hx
    obtain ⟨i, hi⟩ := hx
    have hxi : P.x i = true := by simpa using hi
    have hxstd : P.x = stdBasis i :=
      eq_stdBasis_of hxi (fun j hj => (trivial_off_of_wt_le_one hwt (by simp [hxi]) hj).1)
    refine ⟨0, fun j k => ?_⟩
    rw [key j k, hxstd,
      filter_shift_eq_empty ex hSS hscr (ha i) j k]
    simp

/-- **End-to-end corollary.**  A certified `ExampleData` really is a distance-2
quantum code: logical states realizing its probabilities exist, and they detect
every single-qubit Pauli error. -/
theorem OK_hasDistance2 (ex : ExampleData n m K)
    (hOK : ex.OK) (ha : ∀ i, ex.a i ≠ 0) (hS : Function.Injective ex.S) :
    ∃ ψ : Fin K → State n ℂ, IsAmplitudes ex ψ ∧ HasDistance ψ 2 := by
  obtain ⟨ψ, hψ⟩ := exists_amplitudes ex hOK.2.2.1
  exact ⟨ψ, hψ, OK_detects_weight1 ex hOK ha hS ψ hψ⟩

end SS
