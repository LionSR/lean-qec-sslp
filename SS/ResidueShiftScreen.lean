import SS.Basic

open scoped BigOperators

namespace SS

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
    cases h : s i <;> simp [flipBit, bit, h]
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
    rw [heq]
    simp only [add_sub_cancel_left]
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
    (hScreen : ResidueShiftScreen a S) :
    ∀ j k : Fin K, j ≠ k → ∀ s ∈ Sk a (S j), ∀ i : Fin n, flipBit s i ∉ Sk a (S k) := by
  intro j k hjk s hs i
  exact no_hamming1_neighbor_of_screen a S hScreen hjk hs

omit [NeZero m] in
/-- Alternative formulation: any two codewords from different classes
    have Hamming distance ≥ 2. -/
theorem hamming_distance_ge_2_of_screen
    (a : Fin n → ZMod m) (S : Fin K → ZMod m)
    (hScreen : ResidueShiftScreen a S)
    {j k : Fin K} (hjk : j ≠ k)
    {s t : BitString n} (hs : s ∈ Sk a (S j)) (ht : t ∈ Sk a (S k)) :
    ¬ ∃ i : Fin n, t = flipBit s i := by
  intro ⟨i, hi⟩
  rw [hi] at ht
  exact no_hamming1_neighbor_of_screen a S hScreen hjk hs ht

end ResidueShiftScreen

end SS
