import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Bool.Basic
import Mathlib.Data.Finset.Lattice.Basic
import Mathlib.Algebra.BigOperators.Fin

open scoped BigOperators

namespace SS

/-- Length-`n` binary strings, written as functions `Fin n → Bool`. -/
abbrev BitString (n : ℕ) : Type := Fin n → Bool

/-- Bitwise complement of a bitstring. -/
def complement {n : ℕ} (s : BitString n) : BitString n := fun i => !s i

@[simp] lemma complement_apply {n : ℕ} (s : BitString n) (i : Fin n) :
    complement s i = !s i := rfl

@[simp] lemma complement_complement {n : ℕ} (s : BitString n) :
    complement (complement s) = s := by
  funext i
  simp [complement]

section Basic

variable {m n : ℕ} [NeZero m]

/-- Interpret a bit as `0` or `1` in `ZMod m`. -/
def bit (b : Bool) : ZMod m := if b then (1 : ZMod m) else 0

omit [NeZero m] in
@[simp] lemma bit_false : bit (m := m) false = 0 := by
  simp [bit]

omit [NeZero m] in
@[simp] lemma bit_true : bit (m := m) true = 1 := by
  simp [bit]

/-- Weighted subset-sum `w_a(s) = ∑ a_i * s_i` computed in `ZMod m`. -/
def weight (a : Fin n → ZMod m) (s : BitString n) : ZMod m :=
  ∑ i : Fin n, a i * bit (m := m) (s i)

/-- The SS subset `S_k = { s | weight a s = b_k }`. -/
def Sk (a : Fin n → ZMod m) (bk : ZMod m) : Set (BitString n) :=
  { s | weight (m := m) a s = bk }

omit [NeZero m] in
@[simp] lemma mem_Sk {m n : ℕ} (a : Fin n → ZMod m) (bk : ZMod m) (s : BitString n) :
    s ∈ Sk (m := m) a bk ↔ weight (m := m) a s = bk :=
  Iff.rfl
/--
SS condition for a *support finset* `supp`:
every basis string in `supp` has subset-sum `bk` (equivalently `supp ⊆ S_k`).
-/
def SSConditionSupport (a : Fin n → ZMod m) (bk : ZMod m) (supp : Finset (BitString n)) : Prop :=
  (↑supp : Set (BitString n)) ⊆ Sk (m := m) a bk

/-- Same SS condition, written in “elementwise” form. -/
def SSConditionSupport' (a : Fin n → ZMod m) (bk : ZMod m) (supp : Finset (BitString n)) : Prop :=
  ∀ ⦃s⦄, s ∈ supp → weight (m := m) a s = bk

omit [NeZero m] in
theorem SSConditionSupport_iff
    {m n : ℕ} (a : Fin n → ZMod m) (bk : ZMod m) (supp : Finset (BitString n)) :
    SSConditionSupport (m := m) a bk supp ↔ SSConditionSupport' (m := m) a bk supp := by
  constructor
  · intro h s hs
    have : s ∈ (↑supp : Set (BitString n)) := by simpa using hs
    have : s ∈ Sk (m := m) a bk := h this
    simpa [Sk] using this
  · intro h s hs
    have hs' : s ∈ supp := by simpa using hs
    simpa [Sk] using h hs'

end Basic

section BDSymmetry

variable {m n : ℕ}

/-- BD₂ₘ angle constraint: the total angle sum is `-1` in `ZMod m`. -/
def BDAngleCondition (a : Fin n → ZMod m) : Prop :=
  ∑ i : Fin n, a i = -1

@[simp] lemma bit_not {m : ℕ} (b : Bool) :
    bit (m := m) (!b) = 1 - bit (m := m) b := by
  cases b <;> simp [bit]

theorem weight_complement (a : Fin n → ZMod m) (s : BitString n) :
    weight (m := m) a (complement s) =
      (∑ i : Fin n, a i) - weight (m := m) a s := by
  classical
  simp [weight, complement, bit_not, mul_sub, Finset.sum_sub_distrib]

theorem complement_mem_S1_of_mem_S0
    (a : Fin n → ZMod m) (hBD : BDAngleCondition (m := m) a)
    (s : BitString n) (hs : s ∈ Sk (m := m) a 0) :
    complement s ∈ Sk (m := m) a (-1) := by
  simp [Sk] at hs ⊢
  have hsum : (∑ i : Fin n, a i) = (-1 : ZMod m) := by
    simpa [BDAngleCondition] using hBD
  calc
    weight (m := m) a (complement s)
        = (∑ i : Fin n, a i) - weight (m := m) a s := weight_complement (m := m) a s
    _ = (-1 : ZMod m) - 0 := by simp [hsum, hs]
    _ = (-1 : ZMod m) := by simp

theorem complement_mem_S0_of_mem_S1
    (a : Fin n → ZMod m) (hBD : BDAngleCondition (m := m) a)
    (s : BitString n) (hs : s ∈ Sk (m := m) a (-1)) :
    complement s ∈ Sk (m := m) a 0 := by
  simp [Sk] at hs ⊢
  have hsum : (∑ i : Fin n, a i) = (-1 : ZMod m) := by
    simpa [BDAngleCondition] using hBD
  calc
    weight (m := m) a (complement s)
        = (∑ i : Fin n, a i) - weight (m := m) a s := weight_complement (m := m) a s
    _ = (-1 : ZMod m) - (-1 : ZMod m) := by simp [hsum, hs]
    _ = 0 := by simp

theorem Sk_complement_eq (a : Fin n → ZMod m) (hBD : BDAngleCondition (m := m) a) :
    Sk (m := m) a (-1) = complement '' Sk (m := m) a 0 := by
  ext s
  constructor
  · intro hs
    refine ⟨complement s, complement_mem_S0_of_mem_S1 (m := m) a hBD s hs, ?_⟩
    simp
  · rintro ⟨t, ht, rfl⟩
    exact complement_mem_S1_of_mem_S0 (m := m) a hBD t ht

end BDSymmetry

section ResidueShiftScreen

/-!
## Residue-Shift Screen (Classical Distance Condition)

The Residue-Shift Screen ensures no Hamming-1 neighbors exist between different
residue classes, guaranteeing classical distance d(C) ≥ 2.

From paper 2510.20728 (Eq. 3):
  Sⱼ - Sₖ ≢ ±wᵢ (mod m) for all i and j ≠ k
-/

variable {m n K : ℕ}

/-- Flip bit at position `i` in a bitstring (Hamming-1 neighbor). -/
def flipBit (s : BitString n) (i : Fin n) : BitString n :=
  fun j => if j = i then !s j else s j

@[simp] lemma flipBit_apply_eq (s : BitString n) (i : Fin n) :
    flipBit s i i = !s i := by simp [flipBit]

@[simp] lemma flipBit_apply_ne (s : BitString n) (i j : Fin n) (hij : j ≠ i) :
    flipBit s i j = s j := by simp [flipBit, hij]

@[simp] lemma flipBit_flipBit (s : BitString n) (i : Fin n) :
    flipBit (flipBit s i) i = s := by
  funext j
  by_cases hj : j = i <;> simp [flipBit, hj]

variable [NeZero m]

omit [NeZero m] in
/-- Key lemma: weight changes by ±aᵢ under bit flip.
    If flipping bit i from 1→0, subtract aᵢ; if 0→1, add aᵢ. -/
theorem weight_flipBit (a : Fin n → ZMod m) (s : BitString n) (i : Fin n) :
    weight a (flipBit s i) = weight a s + (if s i then -a i else a i) := by
  simp only [weight]
  -- The difference in sums comes only from position i
  have hdiff : ∑ j : Fin n, a j * bit (flipBit s i j) - ∑ j : Fin n, a j * bit (s j) =
      a i * bit (flipBit s i i) - a i * bit (s i) := by
    rw [← Finset.sum_sub_distrib]
    refine Finset.sum_eq_single_of_mem i (Finset.mem_univ i) ?_
    intro j _ hji
    simp only [flipBit_apply_ne s i j hji, sub_self]
  have hterm : a i * bit (flipBit s i i) - a i * bit (s i) =
      if s i then -a i else a i := by
    simp only [flipBit_apply_eq, bit_not]
    split_ifs with hs
    · -- s i = true, so bit (s i) = 1, and 1 - 1 = 0
      simp only [hs, bit_true, sub_self, mul_zero, zero_sub, mul_one]
    · -- s i = false, so bit (s i) = 0, and 1 - 0 = 1
      have hf : s i = false := Bool.eq_false_iff.mpr hs
      simp only [hf, bit_false, sub_zero, mul_one, mul_zero, sub_zero]
  rw [hterm] at hdiff
  rw [sub_eq_iff_eq_add] at hdiff
  rw [hdiff, add_comm]

omit [NeZero m] in
/-- Variant: explicit formula for weight difference. -/
theorem weight_flipBit_sub (a : Fin n → ZMod m) (s : BitString n) (i : Fin n) :
    weight a (flipBit s i) - weight a s = if s i then -a i else a i := by
  rw [weight_flipBit]
  simp only [add_sub_cancel_left]

/-- Screen condition: Sⱼ - Sₖ ≢ ±wᵢ (mod m) for all i and j ≠ k.
    This ensures no Hamming-1 neighbors between different residue classes. -/
def ResidueShiftScreen (a : Fin n → ZMod m) (S : Fin K → ZMod m) : Prop :=
  ∀ i : Fin n, ∀ j k : Fin K, j ≠ k →
    S j - S k ≠ a i ∧ S j - S k ≠ -a i

omit [NeZero m] in
/-- Main theorem: screen implies no Hamming-1 neighbors between classes.
    If s ∈ Sⱼ and we flip any bit, the result cannot be in Sₖ for k ≠ j. -/
theorem no_hamming1_neighbor_of_screen
    (a : Fin n → ZMod m) (S : Fin K → ZMod m)
    (hScreen : ResidueShiftScreen a S)
    (_hInj : Function.Injective S)
    {j k : Fin K} (hjk : j ≠ k)
    {s : BitString n} (hs : s ∈ Sk a (S j))
    {i : Fin n} :
    flipBit s i ∉ Sk a (S k) := by
  intro hcontra
  simp only [mem_Sk] at hs hcontra
  -- screen says S k - S j ≠ ±a i
  have hscreen := hScreen i k j (Ne.symm hjk)
  -- weight_flipBit gives: weight(flipBit s i) = weight s + (if s i then -a i else a i)
  have hweight := weight_flipBit a s i
  rw [hs] at hweight
  -- hweight : weight a (flipBit s i) = S j + (if s i then -a i else a i)
  -- hcontra : weight a (flipBit s i) = S k
  -- So S k = S j + (if s i then -a i else a i)
  have heq : S k = S j + if s i then -a i else a i := by
    rw [← hcontra, hweight]
  -- Hence S k - S j = ±a i
  have hdiff : S k - S j = if s i then -a i else a i := by
    rw [heq]; simp only [add_sub_cancel_left]
  by_cases hsi : s i
  · -- s i = true: S k - S j = -a i
    simp only [hsi, ↓reduceIte] at hdiff
    exact hscreen.2 hdiff
  · -- s i = false: S k - S j = a i
    simp only [hsi] at hdiff
    exact hscreen.1 hdiff

omit [NeZero m] in
/-- Corollary: If screen holds, the union of supports has no Hamming-1 neighbors
    between different classes. This implies classical distance d(C) ≥ 2. -/
theorem disjoint_hamming1_of_screen
    (a : Fin n → ZMod m) (S : Fin K → ZMod m)
    (hScreen : ResidueShiftScreen a S)
    (hInj : Function.Injective S) :
    ∀ j k : Fin K, j ≠ k → ∀ s ∈ Sk a (S j), ∀ i : Fin n, flipBit s i ∉ Sk a (S k) := by
  intro j k hjk s hs i
  exact no_hamming1_neighbor_of_screen a S hScreen hInj hjk hs

omit [NeZero m] in
/-- Alternative formulation: any two codewords from different classes
    have Hamming distance ≥ 2. -/
theorem hamming_distance_ge_2_of_screen
    (a : Fin n → ZMod m) (S : Fin K → ZMod m)
    (hScreen : ResidueShiftScreen a S)
    (hInj : Function.Injective S)
    {j k : Fin K} (hjk : j ≠ k)
    {s t : BitString n} (hs : s ∈ Sk a (S j)) (ht : t ∈ Sk a (S k)) :
    ¬ ∃ i : Fin n, t = flipBit s i := by
  intro ⟨i, hi⟩
  rw [hi] at ht
  exact no_hamming1_neighbor_of_screen a S hScreen hInj hjk hs ht

end ResidueShiftScreen

section Disjointness

variable {m n K : ℕ}      -- removed [NeZero m]
variable (a : Fin n → ZMod m)
variable (b : Fin K → ZMod m)
variable (supp : Fin K → Finset (BitString n))

/--
If `b` is injective (distinct logical phases) and each support satisfies SS,
then supports for different `k` are disjoint.
-/
theorem supports_disjoint_of_injective
    (hb : Function.Injective b)
    (hSS : ∀ k, SSConditionSupport' (m := m) a (b k) (supp k)) :
    ∀ {k l : Fin K}, k ≠ l → Disjoint (supp k) (supp l) := by
  intro k l hkl
  classical
  refine Finset.disjoint_left.2 ?_
  intro s hsk hsl
  have hk : weight (m := m) a s = b k := hSS k hsk
  have hl : weight (m := m) a s = b l := hSS l hsl
  have hbl : b k = b l := by
    calc
      b k = weight (m := m) a s := hk.symm
      _   = b l               := hl
  exact hkl (hb hbl)

end Disjointness

section DiagonalAction

variable {m n : ℕ} -- no [NeZero m]
variable {𝕜 : Type*} [MonoidWithZero 𝕜]

/-- Amplitude vectors indexed by computational basis strings. -/
abbrev State (n : ℕ) (k : Type*) : Type _ := BitString n → k

/--
SS condition for a *state* `ψ`: whenever amplitude at `s` is nonzero,
the subset-sum must equal `bk`.
-/
def SSConditionState (a : Fin n → ZMod m) (bk : ZMod m) (ψ : State n 𝕜) : Prop :=
  ∀ s, ψ s ≠ 0 → weight (m := m) a s = bk

/--
Abstract diagonal action associated to `a`:
multiply the `|s⟩`-amplitude by `phase(weight a s)`.
(You can later instantiate `phase` with actual roots of unity.)
-/
def Dact (phase : ZMod m → 𝕜) (a : Fin n → ZMod m) (ψ : State n 𝕜) : State n 𝕜 :=
  fun s => phase (weight (m := m) a s) * ψ s

/--
“Correctness” of SS: if `ψ` satisfies SS for `bk`, then `Dact` acts as a global phase
`phase bk` on `ψ`.
-/
theorem Dact_eq_global_of_SS
    (phase : ZMod m → 𝕜) (a : Fin n → ZMod m) (bk : ZMod m) (ψ : State n 𝕜)
    (hSS : SSConditionState (m := m) a bk ψ) :
    Dact (m := m) phase a ψ = fun s => phase bk * ψ s := by
  classical
  funext s
  by_cases hs : ψ s = 0
  · simp [Dact, hs]
  · have hw : weight (m := m) a s = bk := hSS s hs
    simp [Dact, hw]

end DiagonalAction

end SS
