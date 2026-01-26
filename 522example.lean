import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Bool.Basic
import Mathlib.Data.Finset.Lattice.Basic
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Data.Rat.Defs
import Mathlib.Data.Fintype.Sets
import Mathlib.Tactic  -- gives `norm_num`

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

section ZTypeKL

/-!
## Z-type Knill–Laflamme conditions (Eq. 6 in 2510.20728)

These conditions enforce that the expectation value ⟨Zᵢ⟩ is identical across all logical
states.
-/

variable {n : ℕ}

/-- The sign (-1)^{xᵢ} = 1 - 2xᵢ as an integer -/
def zSign (s : BitString n) (i : Fin n) : ℤ := if s i then -1 else 1

/-- Z expectation: ∑_{x ∈ supp} p(x) · (1 - 2xᵢ) -/
def zExpectation (supp : Finset (BitString n)) (p : BitString n → ℚ) (i : Fin n) : ℚ :=
  ∑ x ∈ supp, p x * zSign x i

/-- Z-type KL: all logical states have the same ⟨Zᵢ⟩ expectation -/
def ZTypeKL (K : ℕ) (supp : Fin K → Finset (BitString n))
    (prob : Fin K → BitString n → ℚ) : Prop :=
  ∀ i : Fin n, ∀ j k : Fin K,
    zExpectation (supp j) (prob j) i = zExpectation (supp k) (prob k) i

/-- Z-type KL with explicit target expectation values -/
def ZTypeKL' (K : ℕ) (supp : Fin K → Finset (BitString n))
    (prob : Fin K → BitString n → ℚ) (target : Fin n → ℚ) : Prop :=
  ∀ j : Fin K, ∀ i : Fin n, zExpectation (supp j) (prob j) i = target i

theorem ZTypeKL_iff_exists_target (K : ℕ) [NeZero K]
    (supp : Fin K → Finset (BitString n)) (prob : Fin K → BitString n → ℚ) :
    ZTypeKL (n := n) K supp prob ↔ ∃ target : Fin n → ℚ, ZTypeKL' (n := n) K supp prob target := by
  constructor
  · intro h
    have hK : 0 < K := Nat.pos_of_ne_zero (NeZero.ne K)
    let j0 : Fin K := ⟨0, hK⟩
    refine ⟨fun i => zExpectation (supp j0) (prob j0) i, ?_⟩
    intro j i
    simpa using h i j j0
  · rintro ⟨target, htarget⟩
    intro i j k
    calc
      zExpectation (supp j) (prob j) i = target i := htarget j i
      _ = zExpectation (supp k) (prob k) i := (htarget k i).symm

/-- Probability distribution is normalized on support -/
def IsNormalizedProb (supp : Finset (BitString n)) (p : BitString n → ℚ) : Prop :=
  (∀ x, x ∉ supp → p x = 0) ∧ (∀ x ∈ supp, 0 ≤ p x) ∧ (∑ x ∈ supp, p x = 1)

/-- Full SSLP setup: supports are residue classes satisfying Z-type KL -/
def SSLPSetup (n K : ℕ) (m : ℕ) [NeZero m]
    (a : Fin n → ZMod m) (S : Fin K → ZMod m)
    (prob : Fin K → BitString n → ℚ) : Prop :=
  by
    classical
    let supp : Fin K → Finset (BitString n) := fun j => (Sk (m := m) a (S j)).toFinset
    exact (∀ j, IsNormalizedProb (n := n) (supp j) (prob j)) ∧ ZTypeKL (n := n) K supp prob

end ZTypeKL

end SS

/- Test an example -/

namespace SS

section WorkedExample_5_2_2

open scoped BigOperators

/-!
### Worked ((5,2,2)) canonical solution (Supplementary Note B, arXiv:2510.20728)

Parameters:
* n = 5
* w = (1,1,2,2,2)
* m = 7
* K = 2
* residues (S0,S1) = (0,4)

Canonical solution support (taking p_{1,y4}=p_{1,y5}=0):
* |0_L⟩ supported on {00000, 01111, 10111}  (residue 0)
* |1_L⟩ supported on {00011, 00101, 00110, 11001} (residue 4)

We verify:
1) SS diagonal condition ⇒ global phase `phase 0` / `phase 4`
2) Z expectations: ⟨Z_i⟩ = 3/7 for i=1,2 and -1/7 for i=3,4,5
-/

local notation "n" => 5
local notation "m" => 7
local notation "K" => 2

-- needed by your `weight` / `Sk` definitions
local instance : NeZero (m : ℕ) := ⟨by decide⟩
local instance : NeZero (K : ℕ) := ⟨by decide⟩

-- convenient for finsets and if-then-else tests on bitstrings
local instance : DecidableEq (BitString n) := by infer_instance

/-- weight vector w = (1,1,2,2,2) in ZMod 7 -/
def a522 : Fin n → ZMod m := ![(1 : ZMod m), 1, 2, 2, 2]

/-- residues (S0,S1) = (0,4) in ZMod 7 -/
def S522 : Fin K → ZMod m := ![(0 : ZMod m), 4]

/-! basis strings as `Fin 5 → Bool` (0-based indexing) -/
def x00000 : BitString n := ![false,false,false,false,false]
def x01111 : BitString n := ![false,true ,true ,true ,true ]
def x10111 : BitString n := ![true ,false,true ,true ,true ]

def x00011 : BitString n := ![false,false,false,true ,true ]
def x00101 : BitString n := ![false,false,true ,false,true ]
def x00110 : BitString n := ![false,false,true ,true ,false]
def x11001 : BitString n := ![true ,true ,false,false,true ]

/-- support of |0_L⟩ -/
def supp0 : Finset (BitString n) := {x00000, x01111, x10111}

/-- canonical support of |1_L⟩ (with the last two probabilities set to 0) -/
def supp1 : Finset (BitString n) := {x00011, x00101, x00110, x11001}

-- help simp reduce the nested `if`s in prob0/prob1 (and also expand finset sums)
@[simp] lemma x01111_ne_x00000 : x01111 ≠ x00000 := by decide
@[simp] lemma x10111_ne_x00000 : x10111 ≠ x00000 := by decide
@[simp] lemma x10111_ne_x01111 : x10111 ≠ x01111 := by decide
@[simp] lemma x00000_ne_x01111 : x00000 ≠ x01111 := by decide
@[simp] lemma x00000_ne_x10111 : x00000 ≠ x10111 := by decide
@[simp] lemma x01111_ne_x10111 : x01111 ≠ x10111 := by decide

@[simp] lemma x00101_ne_x00011 : x00101 ≠ x00011 := by decide
@[simp] lemma x00110_ne_x00011 : x00110 ≠ x00011 := by decide
@[simp] lemma x00110_ne_x00101 : x00110 ≠ x00101 := by decide
@[simp] lemma x11001_ne_x00011 : x11001 ≠ x00011 := by decide
@[simp] lemma x11001_ne_x00101 : x11001 ≠ x00101 := by decide
@[simp] lemma x11001_ne_x00110 : x11001 ≠ x00110 := by decide

-- (these symmetric ones help simp when it needs the other direction, e.g. for finset inserts)
@[simp] lemma x00011_ne_x00101 : x00011 ≠ x00101 := by decide
@[simp] lemma x00011_ne_x00110 : x00011 ≠ x00110 := by decide
@[simp] lemma x00011_ne_x11001 : x00011 ≠ x11001 := by decide
@[simp] lemma x00101_ne_x00110 : x00101 ≠ x00110 := by decide
@[simp] lemma x00101_ne_x11001 : x00101 ≠ x11001 := by decide
@[simp] lemma x00110_ne_x11001 : x00110 ≠ x11001 := by decide

/-!
## 1) SS diagonal condition (support ⊆ residue class)
-/

lemma supp0_SS : SSConditionSupport' a522 (0 : ZMod m) supp0 := by
  intro s hs
  have hs' : s = x00000 ∨ s = x01111 ∨ s = x10111 := by
    simpa [supp0] using hs
  rcases hs' with rfl | rfl | rfl <;> decide

lemma supp1_SS : SSConditionSupport' a522 (4 : ZMod m) supp1 := by
  intro s hs
  have hs' : s = x00011 ∨ s = x00101 ∨ s = x00110 ∨ s = x11001 := by
    simpa [supp1] using hs
  rcases hs' with rfl | rfl | rfl | rfl <;> decide

-- optional: residue-shift screen for (w,m,S)
set_option linter.flexible false in
lemma screen522 : ResidueShiftScreen a522 S522 := by
  intro i j k hjk
  fin_cases j <;> fin_cases k
  · cases hjk rfl
  · -- j=0, k=1
    fin_cases i <;> (simp [S522, a522] ; decide)
  · -- j=1, k=0
    fin_cases i <;> (simp [S522, a522] ; decide)
  · cases hjk rfl


section Diagonal

variable {k : Type*} [MonoidWithZero k]

-- indicator state with support `supp0`
def ψ0 : State n k := fun s => if s ∈ supp0 then (1 : k) else 0

-- indicator state with support `supp1`
def ψ1 : State n k := fun s => if s ∈ supp1 then (1 : k) else 0

lemma ψ0_SS : SSConditionState (𝕜 := k) a522 (0 : ZMod m) ψ0 := by
  intro s hs
  by_cases hmem : s ∈ supp0
  · exact supp0_SS (s := s) hmem
  ·
    have : False := by
      simpa [ψ0, hmem] using hs
    exact this.elim

lemma ψ1_SS : SSConditionState (𝕜 := k) a522 (4 : ZMod m) ψ1 := by
  intro s hs
  by_cases hmem : s ∈ supp1
  · exact supp1_SS (s := s) hmem
  ·
    have : False := by
      simpa [ψ1, hmem] using hs
    exact this.elim

theorem Dact_ψ0_eq_global (phase : ZMod m → k) :
    Dact (𝕜 := k) phase a522 ψ0 = fun s => phase (0 : ZMod m) * ψ0 s := by
  simpa using
    (Dact_eq_global_of_SS (phase := phase) (a := a522) (bk := (0 : ZMod m)) (ψ := ψ0) ψ0_SS)

theorem Dact_ψ1_eq_global (phase : ZMod m → k) :
    Dact (𝕜 := k) phase a522 ψ1 = fun s => phase (4 : ZMod m) * ψ1 s := by
  simpa using
    (Dact_eq_global_of_SS (phase := phase) (a := a522) (bk := (4 : ZMod m)) (ψ := ψ1) ψ1_SS)

/--
SS ⇒ transversal diagonal action is a global phase on |0_L⟩:
`Dact phase a522 ψ0 = phase(0) · ψ0`.
If you later instantiate `phase r = ω₇^r`, this gives eigenvalue `ω₇^0 = 1`.
-/
theorem Dact_ψ0_eq_global' (phase : ZMod m → k) :
    Dact (𝕜 := k) phase a522 ψ0 = fun s => phase (0 : ZMod m) * ψ0 s := by
  simpa using
    (Dact_eq_global_of_SS (phase := phase) (a := a522) (bk := (0 : ZMod m)) (ψ := ψ0) ψ0_SS)

/--
SS ⇒ transversal diagonal action is a global phase on |1_L⟩:
`Dact phase a522 ψ1 = phase(4) · ψ1`.
With `phase r = ω₇^r`, this is eigenvalue `ω₇^4`.
-/
theorem Dact_ψ1_eq_global' (phase : ZMod m → k) :
    Dact (𝕜 := k) phase a522 ψ1 = fun s => phase (4 : ZMod m) * ψ1 s := by
  simpa using
    (Dact_eq_global_of_SS (phase := phase) (a := a522) (bk := (4 : ZMod m)) (ψ := ψ1) ψ1_SS)

end Diagonal

/-!
## 2) Z-expectation values (Z-type distance-2 KL equalities)

We encode probabilities (squared amplitudes) exactly as rationals.
-/

/-- probabilities for the canonical |0_L⟩:
  3/7 on 00000, 2/7 on 01111, 2/7 on 10111 -/
def prob0 : BitString n → ℚ :=
  fun s =>
    if s = x00000 then (3 : ℚ) / 7
    else if s = x01111 then (2 : ℚ) / 7
    else if s = x10111 then (2 : ℚ) / 7
    else 0

/-- probabilities for the canonical |1_L⟩:
  1/7 on 00011, 1/7 on 00101, 3/7 on 00110, 2/7 on 11001 -/
def prob1 : BitString n → ℚ :=
  fun s =>
    if s = x00011 then (1 : ℚ) / 7
    else if s = x00101 then (1 : ℚ) / 7
    else if s = x00110 then (3 : ℚ) / 7
    else if s = x11001 then (2 : ℚ) / 7
    else 0

lemma prob0_normalized : IsNormalizedProb supp0 prob0 := by
  classical
  refine ⟨?_, ?_⟩
  · -- outside support: prob0 = 0
    intro x hx
    by_cases h0 : x = x00000
    · subst h0; exfalso; exact hx (by simp [supp0])
    by_cases h1 : x = x01111
    · subst h1; exfalso; exact hx (by simp [supp0])
    by_cases h2 : x = x10111
    · subst h2; exfalso; exact hx (by simp [supp0])
    simp [prob0, h0, h1, h2]
  · refine ⟨?_, ?_⟩
    · -- on support: prob0 ≥ 0
      intro x hx
      have hx' : x = x00000 ∨ x = x01111 ∨ x = x10111 := by
        simpa [supp0] using hx
      rcases hx' with rfl | rfl | rfl <;> (simp [prob0]; norm_num)
    · -- total mass = 1
      simp [supp0, prob0]
      norm_num

lemma prob1_normalized : IsNormalizedProb supp1 prob1 := by
  classical
  refine ⟨?_, ?_⟩
  · -- outside support: prob1 = 0
    intro x hx
    by_cases h0 : x = x00011
    · subst h0; exfalso; exact hx (by simp [supp1])
    by_cases h1 : x = x00101
    · subst h1; exfalso; exact hx (by simp [supp1])
    by_cases h2 : x = x00110
    · subst h2; exfalso; exact hx (by simp [supp1])
    by_cases h3 : x = x11001
    · subst h3; exfalso; exact hx (by simp [supp1])
    simp [prob1, h0, h1, h2, h3]
  · refine ⟨?_, ?_⟩
    · -- on support: prob1 ≥ 0
      intro x hx
      have hx' : x = x00011 ∨ x = x00101 ∨ x = x00110 ∨ x = x11001 := by
        simpa [supp1] using hx
      rcases hx' with rfl | rfl | rfl | rfl <;> (simp [prob1] <;> norm_num)
    · -- total mass = 1
      simp [supp1, prob1]
      norm_num

def targetZ : Fin n → ℚ :=
  ![(3 : ℚ) / 7, (3 : ℚ) / 7, (-1 : ℚ) / 7, (-1 : ℚ) / 7, (-1 : ℚ) / 7]


theorem canonical_ZTypeKL' :
    ZTypeKL' K ![supp0, supp1] ![prob0, prob1] targetZ := by
  classical
  intro j i
  fin_cases j <;> fin_cases i <;>
    simp [ZTypeKL', zExpectation, zSign, targetZ,
      supp0, supp1, prob0, prob1,
      x00000, x01111, x10111, x00011, x00101, x00110, x11001] <;>
    norm_num


theorem canonical_ZTypeKL :
    ZTypeKL K ![supp0, supp1] ![prob0, prob1] := by
  intro i j k
  calc
    zExpectation (![supp0, supp1] j) (![prob0, prob1] j) i = targetZ i := canonical_ZTypeKL' j i
    _ = zExpectation (![supp0, supp1] k) (![prob0, prob1] k) i := (canonical_ZTypeKL' k i).symm

end WorkedExample_5_2_2

end SS
