import Mathlib.Tactic
import SS.Verify

namespace Examples.D2.Ex422General

open SS SS.Verify

section GeneralSolution_4_2_2

local notation "n" => 4
local notation "m" => 4
local notation "K" => 2

local instance : NeZero (m : ℕ) := ⟨by decide⟩

/-- weights `w = (1,1,1,1)` in `ZMod 4` -/
def a422 : Fin n → ZMod m := ![(1 : ZMod m), 1, 1, 1]

/-- residues `(S0,S1) = (0,2)` in `ZMod 4` -/
def S422 : Fin K → ZMod m := ![(0 : ZMod m), 2]

/-- basis strings in `C0` -/
def x0000 : BitString n := ![false, false, false, false]
def x1111 : BitString n := ![true, true, true, true]

/-- basis strings in `C1` -/
def x0011 : BitString n := ![false, false, true, true]
def x0101 : BitString n := ![false, true, false, true]
def x0110 : BitString n := ![false, true, true, false]
def x1001 : BitString n := ![true, false, false, true]
def x1010 : BitString n := ![true, false, true, false]
def x1100 : BitString n := ![true, true, false, false]

/-- support of $|0_L⟩$ -/
def supp0 : Finset (BitString n) := {x0000, x1111}

/-- support of $|1_L⟩$ from the TeX general solution -/
def supp1 : Finset (BitString n) := {x0011, x0101, x0110, x1001, x1010, x1100}

@[simp] lemma x0101_ne_x0011 : x0101 ≠ x0011 := by decide
@[simp] lemma x0110_ne_x0011 : x0110 ≠ x0011 := by decide
@[simp] lemma x0110_ne_x0101 : x0110 ≠ x0101 := by decide
@[simp] lemma x1001_ne_x0011 : x1001 ≠ x0011 := by decide
@[simp] lemma x1001_ne_x0101 : x1001 ≠ x0101 := by decide
@[simp] lemma x1010_ne_x0011 : x1010 ≠ x0011 := by decide
@[simp] lemma x1010_ne_x0101 : x1010 ≠ x0101 := by decide
@[simp] lemma x1010_ne_x0110 : x1010 ≠ x0110 := by decide
@[simp] lemma x1010_ne_x1001 : x1010 ≠ x1001 := by decide
@[simp] lemma x1100_ne_x0011 : x1100 ≠ x0011 := by decide
@[simp] lemma x1100_ne_x0101 : x1100 ≠ x0101 := by decide
@[simp] lemma x1100_ne_x0110 : x1100 ≠ x0110 := by decide
@[simp] lemma x1100_ne_x1001 : x1100 ≠ x1001 := by decide
@[simp] lemma x1100_ne_x1010 : x1100 ≠ x1010 := by decide

/-- probabilities for `|0_L⟩` (fixed) -/
def prob0 : BitString n → ℚ :=
  fun s => if s ∈ supp0 then (1 : ℚ) / 2 else 0

/-- shared affine coordinate in the TeX formula for `|1_L⟩` -/
def pTail (p4 p5 : ℚ) : ℚ := (1 : ℚ) / 2 - p4 - p5

/-- probabilities for `|1_L⟩` (two-parameter family) -/
def prob1 (p4 p5 : ℚ) : BitString n → ℚ :=
  fun s =>
    if s = x0011 then p5
    else if s = x0101 then p4
    else if s = x0110 then pTail p4 p5
    else if s = x1001 then pTail p4 p5
    else if s = x1010 then p4
    else if s = x1100 then p5
    else 0

/-- target Z expectations for this family (all zero). -/
def targetZ : Fin n → ℚ := ![0, 0, 0, 0]

/-- Bundle the parameterized general-solution data. -/
def ex422General (p4 p5 : ℚ) : ExampleData n m K :=
  { a := a422
    S := S422
    supp := ![supp0, supp1]
    prob := ![prob0, prob1 p4 p5]
    targetZ := targetZ }

/--
General-solution verification for `all_solutions.tex` (`n=4,m=4,K=2`):
if `p4,p5` lie in the reported region, the full bundled checks hold.
-/
theorem ex422General_ok (p4 p5 : ℚ)
    (hp4 : 0 ≤ p4) (hp5 : 0 ≤ p5) (hsum : p4 + p5 ≤ (1 : ℚ) / 2) :
    (ex422General p4 p5).OK := by
  have hSS0 : SSConditionSupport' a422 (S422 0) supp0 := by decide
  have hSS1 : SSConditionSupport' a422 (S422 1) supp1 := by decide
  have hScreen : ResidueShiftScreen a422 S422 := by
    intro i j k hjk
    fin_cases j <;> fin_cases k
    · exact (False.elim (hjk rfl))
    · fin_cases i <;> decide
    · fin_cases i <;> decide
    · exact (False.elim (hjk rfl))
  have hNorm0 : IsNormalizedProb supp0 prob0 := by
    refine ⟨?_, ?_, ?_⟩
    · intro x hx
      simp [prob0, hx]
    · intro x hx
      simp [prob0, hx]
    · calc
        (∑ x ∈ supp0, prob0 x) = (1 : ℚ) / 2 + (1 : ℚ) / 2 := by
          unfold supp0
          rw [Finset.sum_insert, Finset.sum_singleton]
          · simp [prob0, supp0]
          · decide
        _ = 1 := by norm_num
  have hNorm1 : IsNormalizedProb supp1 (prob1 p4 p5) := by
    refine ⟨?_, ?_, ?_⟩
    · intro x hx
      have hx0011 : x ≠ x0011 := by intro h; exact hx (by simp [supp1, h])
      have hx0101 : x ≠ x0101 := by intro h; exact hx (by simp [supp1, h])
      have hx0110 : x ≠ x0110 := by intro h; exact hx (by simp [supp1, h])
      have hx1001 : x ≠ x1001 := by intro h; exact hx (by simp [supp1, h])
      have hx1010 : x ≠ x1010 := by intro h; exact hx (by simp [supp1, h])
      have hx1100 : x ≠ x1100 := by intro h; exact hx (by simp [supp1, h])
      simp [prob1, hx0011, hx0101, hx0110, hx1001, hx1010, hx1100]
    · intro x hx
      rcases (by
        simpa [supp1, Finset.mem_insert, Finset.mem_singleton] using hx :
          x = x0011 ∨ x = x0101 ∨ x = x0110 ∨ x = x1001 ∨ x = x1010 ∨ x = x1100) with
        rfl | rfl | rfl | rfl | rfl | rfl
      · simpa [prob1] using hp5
      · simpa [prob1] using hp4
      · have htail0 : 0 ≤ pTail p4 p5 := by
          have hsub : 0 ≤ (1 : ℚ) / 2 - (p4 + p5) := sub_nonneg.mpr hsum
          simpa [pTail, sub_eq_add_neg, add_assoc, add_left_comm, add_comm] using hsub
        simpa [prob1] using htail0
      · have htail0 : 0 ≤ pTail p4 p5 := by
          have hsub : 0 ≤ (1 : ℚ) / 2 - (p4 + p5) := sub_nonneg.mpr hsum
          simpa [pTail, sub_eq_add_neg, add_assoc, add_left_comm, add_comm] using hsub
        simpa [prob1] using htail0
      · simpa [prob1] using hp4
      · simpa [prob1] using hp5
    · have hsum0 : p4 + p5 + pTail p4 p5 = (1 : ℚ) / 2 := by
        unfold pTail
        ring
      have hsumProb1 :
          (∑ x ∈ supp1, prob1 p4 p5 x) = p5 + (p4 + (pTail p4 p5 + (pTail p4 p5 + (p4 + p5)))) := by
        unfold supp1
        rw [Finset.sum_insert, Finset.sum_insert, Finset.sum_insert, Finset.sum_insert,
          Finset.sum_insert, Finset.sum_singleton]
        · simp [prob1]
        · decide
        · decide
        · decide
        · decide
        · decide
      calc
        (∑ x ∈ supp1, prob1 p4 p5 x)
            = p5 + (p4 + (pTail p4 p5 + (pTail p4 p5 + (p4 + p5)))) := hsumProb1
        _ = (p4 + p5 + pTail p4 p5) + (p4 + p5 + pTail p4 p5) := by ring
        _ = (1 : ℚ) / 2 + (1 : ℚ) / 2 := by simp [hsum0]
        _ = 1 := by norm_num
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro k
    fin_cases k
    · simpa [ex422General] using hSS0
    · simpa [ex422General] using hSS1
  · simpa [ex422General] using hScreen
  · intro k
    fin_cases k
    · simpa [ex422General] using hNorm0
    · simpa [ex422General] using hNorm1
  · intro j i
    fin_cases j
    · fin_cases i <;>
        simp [ex422General, zExpectation, targetZ, supp0, prob0, zSign, x0000, x1111]
    · fin_cases i <;>
        simp [ex422General, zExpectation, targetZ, supp1, prob1, pTail,
          zSign, x0011, x0101, x0110, x1001, x1010, x1100] <;>
        ring

end GeneralSolution_4_2_2

end Examples.D2.Ex422General
