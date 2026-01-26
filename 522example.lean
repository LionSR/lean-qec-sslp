import SS
import Mathlib.Tactic  -- gives `norm_num`, `fin_cases`

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
    simp [ψ0, hmem] at hs

lemma ψ1_SS : SSConditionState (𝕜 := k) a522 (4 : ZMod m) ψ1 := by
  intro s hs
  by_cases hmem : s ∈ supp1
  · exact supp1_SS (s := s) hmem
  ·
    simp [ψ1, hmem] at hs

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
    simp [zExpectation, zSign, targetZ,
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
