import SS
import Mathlib.Tactic  -- `norm_num`, `fin_cases`, `native_decide`

namespace SS

section WorkedExample_6_2_2_FamilyI

open scoped BigOperators

/-!
### Worked Family-I $((6,2,2))$ example (CDQC.tex, Methods §Family I)

This instantiates the analytical Family I construction (Methods, Eq. (q)) at

* n = 6
* m = 7
* s = 3

Weights:
  w = (1,1,1,1,1, m-(n-1)) = (1,1,1,1,1,2) ∈ (ZMod 7)^6
Residues:
  (S0,S1) = (0,3)

Probabilities (Methods, lines 670–681):
* on C0 = {0^6, 1^6}:
    p(0^6)=1-s/m=4/7,  p(1^6)=s/m=3/7
* on Cs (here s=3):
    mass (m-s)/m = 4/7 uniformly on the b=0 slice,
    mass s/m     = 3/7 uniformly on the b=1 slice.

We verify:
1) SS diagonal condition ⇒ global phase `phase 0` / `phase 3`
2) Z expectations are equal across logical states and equal to 1 - 2s/m = 1/7 on every site.
-/

local notation "n" => 6
local notation "m" => 7
local notation "K" => 2

local instance : NeZero (m : ℕ) := ⟨by decide⟩
local instance : NeZero (K : ℕ) := ⟨by decide⟩

-- convenient for finsets / equality tests on bitstrings
local instance : DecidableEq (BitString n) := by infer_instance

/-- Family-I weight vector w = (1,1,1,1,1,2) in ZMod 7 -/
def a622 : Fin n → ZMod m := ![(1 : ZMod m), 1, 1, 1, 1, 2]

/-- Residues (S0,S1) = (0,3) in ZMod 7 -/
def S622 : Fin K → ZMod m := ![(0 : ZMod m), 3]

/-- The all-zero bitstring 0^6 -/
def x0 : BitString n := fun _ => false

/-- The all-one bitstring 1^6 -/
def x1 : BitString n := fun _ => true

@[simp] lemma x0_ne_x1 : x0 ≠ x1 := by decide
@[simp] lemma x1_ne_x0 : x1 ≠ x0 := by decide

/-- Support for |0_L⟩ (here C0 = {0^6,1^6}) -/
def supp0 : Finset (BitString n) := {x0, x1}

/-- Support for |1_L⟩ as the residue class C_s with s=3 (defined by filtering `univ`). -/
def supp1 : Finset (BitString n) :=
  Finset.univ.filter (fun s : BitString n => weight a622 s = (3 : ZMod m))

/-- The last qubit index (0-based) -/
def last : Fin n := ⟨5, by decide⟩

/-!
## 1) SS diagonal condition
-/

lemma supp0_SS : SSConditionSupport' a622 (0 : ZMod m) supp0 := by
  intro s hs
  have hs' : s = x0 ∨ s = x1 := by
    simpa [supp0] using hs
  rcases hs' with rfl | rfl
  · -- x0
    decide
  · -- x1
    decide

lemma supp1_SS : SSConditionSupport' a622 (3 : ZMod m) supp1 := by
  intro s hs
  -- `supp1` is defined as `{s | weight a622 s = 3}` filtered from `univ`.
  have hw : weight a622 s = (3 : ZMod m) := by
    -- `hs : s ∈ univ.filter ...`
    simpa [supp1] using (Finset.mem_filter.mp hs).2
  simpa using hw

-- optional: residue-shift screen for this (a,S)
set_option linter.flexible false in
lemma screen622 : ResidueShiftScreen a622 S622 := by
  intro i j k hjk
  fin_cases j <;> fin_cases k
  · cases hjk rfl
  · -- j=0, k=1
    fin_cases i <;> (simp [S622, a622] ; decide)
  · -- j=1, k=0
    fin_cases i <;> (simp [S622, a622] ; decide)
  · cases hjk rfl


section Diagonal

variable {k : Type*} [MonoidWithZero k]

/-- indicator state with support `supp0` -/
def ψ0 : State n k := fun s => if s ∈ supp0 then (1 : k) else 0

/-- indicator state with support `supp1` -/
def ψ1 : State n k := fun s => if s ∈ supp1 then (1 : k) else 0

lemma ψ0_SS : SSConditionState (𝕜 := k) a622 (0 : ZMod m) ψ0 := by
  intro s hs
  by_cases hmem : s ∈ supp0
  · exact supp0_SS (s := s) hmem
  · simp [ψ0, hmem] at hs

lemma ψ1_SS : SSConditionState (𝕜 := k) a622 (3 : ZMod m) ψ1 := by
  intro s hs
  by_cases hmem : s ∈ supp1
  · exact supp1_SS (s := s) hmem
  · simp [ψ1, hmem] at hs

theorem Dact_ψ0_eq_global (phase : ZMod m → k) :
    Dact (𝕜 := k) phase a622 ψ0 = fun s => phase (0 : ZMod m) * ψ0 s := by
  simpa using
    (Dact_eq_global_of_SS (phase := phase) (a := a622) (bk := (0 : ZMod m)) (ψ := ψ0) ψ0_SS)

theorem Dact_ψ1_eq_global (phase : ZMod m → k) :
    Dact (𝕜 := k) phase a622 ψ1 = fun s => phase (3 : ZMod m) * ψ1 s := by
  simpa using
    (Dact_eq_global_of_SS (phase := phase) (a := a622) (bk := (3 : ZMod m)) (ψ := ψ1) ψ1_SS)

end Diagonal


/-!
## 2) Z-expectation values (Z-type KL)

We encode probabilities exactly as rationals (squared amplitudes).
-/

/-- Family-I probabilities on C0 = {0^6,1^6} -/
def prob0 : BitString n → ℚ :=
  fun s =>
    if s = x0 then (4 : ℚ) / 7
    else if s = x1 then (3 : ℚ) / 7
    else 0

/-- Family-I probabilities on C_s (here s=3): depends only on the last bit (b=0 or b=1). -/
def prob1 : BitString n → ℚ :=
  fun s =>
    if _ : s ∈ supp1 then
      if s last then (3 : ℚ) / 35 else (2 : ℚ) / 35
    else 0

lemma prob0_normalized : IsNormalizedProb supp0 prob0 := by
  classical
  -- small support; brute force is fine
  refine ⟨?_, ?_⟩
  · intro x hx
    by_cases h0 : x = x0
    · subst h0; exfalso; exact hx (by simp [supp0])
    by_cases h1 : x = x1
    · subst h1; exfalso; exact hx (by simp [supp0])
    simp [prob0, h0, h1]
  · refine ⟨?_, ?_⟩
    · intro x hx
      have hx' : x = x0 ∨ x = x1 := by
        simpa [supp0] using hx
      rcases hx' with rfl | rfl <;> (simp [prob0]; norm_num)
    · simp [supp0, prob0]
      norm_num

lemma prob1_normalized : IsNormalizedProb supp1 prob1 := by
  refine ⟨?_, ?_⟩
  · intro x hx
    simp [prob1, hx]
  · refine ⟨?_, ?_⟩
    · intro x hx
      by_cases hxlast : x last <;> simp [prob1, hx, hxlast] <;> norm_num
    · -- finite computation (support size = 15)
      native_decide

/-- Target Z expectation is constant 1 - 2s/m = 1/7 at every site. -/
def targetZ : Fin n → ℚ := fun _ => (1 : ℚ) / 7

theorem familyI_ZTypeKL' :
    ZTypeKL' K ![supp0, supp1] ![prob0, prob1] targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    native_decide

theorem familyI_ZTypeKL :
    ZTypeKL K ![supp0, supp1] ![prob0, prob1] := by
  intro i j k
  calc
    zExpectation (![supp0, supp1] j) (![prob0, prob1] j) i = targetZ i := familyI_ZTypeKL' j i
    _ = zExpectation (![supp0, supp1] k) (![prob0, prob1] k) i := (familyI_ZTypeKL' k i).symm

end WorkedExample_6_2_2_FamilyI

end SS
