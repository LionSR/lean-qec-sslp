import Mathlib

import SS.FullKL

import Examples.D3.NoGo.Common

import Examples.D3.NoGo.BD16_1112226

import Examples.D3.NoGo.Bridge

/-!
# BD16 no-go: $a = (1,1,1,2,2,2,6)$ (mod $8$) — deriving the 17 equations from a KL subsystem

`Examples/D3/NoGo/BD16_1112226.lean` defines the 17-equation system `System` from
`BD16_distance3.tex` §16 and proves `System.no_solution`.

This file formalizes the missing step:

  (a small explicit Knill--Laflamme subsystem on the SS support $S_0$)
    ==> the 17 equations.

We work under the **complementary** convention $|1_Langle = X^{\otimes 7}|0_Langle$.

No `sorry`.
-/

namespace Examples.D3.NoGo.BD16_1112226

noncomputable section

open SS
open scoped BigOperators
open scoped ComplexConjugate

/-!
## The explicit SS support $S_0$ (10 bitstrings)
-/

/-- Convenience constructor for `BitString 7`. -/
def bs (b0 b1 b2 b3 b4 b5 b6 : Bool) : SS.BitString 7 :=
  ![b0, b1, b2, b3, b4, b5, b6]

-- Plain `def` (not `@[simp]`) so simp does not unfold them before `coeff_sk` fires.
def s0  : SS.BitString 7 := bs false false false false false false false
def s1  : SS.BitString 7 := bs false false false false false true  true 
def s2  : SS.BitString 7 := bs false false false false true  false true 
def s3  : SS.BitString 7 := bs false false false true  false false true 
def s4  : SS.BitString 7 := bs false true  true  false false false true 
def s5  : SS.BitString 7 := bs false true  true  true  true  true  false
def s6  : SS.BitString 7 := bs true  false true  false false false true 
def s7  : SS.BitString 7 := bs true  false true  true  true  true  false
def s8  : SS.BitString 7 := bs true  true  false false false false true 
def s9  : SS.BitString 7 := bs true  true  false true  true  true  false

def S0 : Finset (SS.BitString 7) :=
  {s0, s1, s2, s3, s4, s5, s6, s7, s8, s9}

/-!
## Coefficient function
-/

def coeff (c : Fin 10 → ℂ) (s : SS.BitString 7) : ℂ :=
  if s = s0 then c 0
    else if s = s1 then c 1
    else if s = s2 then c 2
    else if s = s3 then c 3
    else if s = s4 then c 4
    else if s = s5 then c 5
    else if s = s6 then c 6
    else if s = s7 then c 7
    else if s = s8 then c 8
    else if s = s9 then c 9
  else 0

@[simp] lemma coeff_s0 (c : Fin 10 → ℂ) : coeff c s0 = c 0 := by simp [coeff]

@[simp] lemma coeff_s1 (c : Fin 10 → ℂ) : coeff c s1 = c 1 := by
  unfold coeff
  rw [if_neg (show s1 ≠ s0 from by decide)]; rfl

@[simp] lemma coeff_s2 (c : Fin 10 → ℂ) : coeff c s2 = c 2 := by
  unfold coeff
  rw [if_neg (show s2 ≠ s0 from by decide),
      if_neg (show s2 ≠ s1 from by decide)]; rfl

@[simp] lemma coeff_s3 (c : Fin 10 → ℂ) : coeff c s3 = c 3 := by
  unfold coeff
  rw [if_neg (show s3 ≠ s0 from by decide),
      if_neg (show s3 ≠ s1 from by decide),
      if_neg (show s3 ≠ s2 from by decide)]; rfl

@[simp] lemma coeff_s4 (c : Fin 10 → ℂ) : coeff c s4 = c 4 := by
  unfold coeff
  rw [if_neg (show s4 ≠ s0 from by decide),
      if_neg (show s4 ≠ s1 from by decide),
      if_neg (show s4 ≠ s2 from by decide),
      if_neg (show s4 ≠ s3 from by decide)]; rfl

@[simp] lemma coeff_s5 (c : Fin 10 → ℂ) : coeff c s5 = c 5 := by
  unfold coeff
  rw [if_neg (show s5 ≠ s0 from by decide),
      if_neg (show s5 ≠ s1 from by decide),
      if_neg (show s5 ≠ s2 from by decide),
      if_neg (show s5 ≠ s3 from by decide),
      if_neg (show s5 ≠ s4 from by decide)]; rfl

@[simp] lemma coeff_s6 (c : Fin 10 → ℂ) : coeff c s6 = c 6 := by
  unfold coeff
  rw [if_neg (show s6 ≠ s0 from by decide),
      if_neg (show s6 ≠ s1 from by decide),
      if_neg (show s6 ≠ s2 from by decide),
      if_neg (show s6 ≠ s3 from by decide),
      if_neg (show s6 ≠ s4 from by decide),
      if_neg (show s6 ≠ s5 from by decide)]; rfl

@[simp] lemma coeff_s7 (c : Fin 10 → ℂ) : coeff c s7 = c 7 := by
  unfold coeff
  rw [if_neg (show s7 ≠ s0 from by decide),
      if_neg (show s7 ≠ s1 from by decide),
      if_neg (show s7 ≠ s2 from by decide),
      if_neg (show s7 ≠ s3 from by decide),
      if_neg (show s7 ≠ s4 from by decide),
      if_neg (show s7 ≠ s5 from by decide),
      if_neg (show s7 ≠ s6 from by decide)]; rfl

@[simp] lemma coeff_s8 (c : Fin 10 → ℂ) : coeff c s8 = c 8 := by
  unfold coeff
  rw [if_neg (show s8 ≠ s0 from by decide),
      if_neg (show s8 ≠ s1 from by decide),
      if_neg (show s8 ≠ s2 from by decide),
      if_neg (show s8 ≠ s3 from by decide),
      if_neg (show s8 ≠ s4 from by decide),
      if_neg (show s8 ≠ s5 from by decide),
      if_neg (show s8 ≠ s6 from by decide),
      if_neg (show s8 ≠ s7 from by decide)]; rfl

@[simp] lemma coeff_s9 (c : Fin 10 → ℂ) : coeff c s9 = c 9 := by
  unfold coeff
  rw [if_neg (show s9 ≠ s0 from by decide),
      if_neg (show s9 ≠ s1 from by decide),
      if_neg (show s9 ≠ s2 from by decide),
      if_neg (show s9 ≠ s3 from by decide),
      if_neg (show s9 ≠ s4 from by decide),
      if_neg (show s9 ≠ s5 from by decide),
      if_neg (show s9 ≠ s6 from by decide),
      if_neg (show s9 ≠ s7 from by decide),
      if_neg (show s9 ≠ s8 from by decide)]; rfl

/-!
## Pauli data
-/

abbrev i1 : Fin 7 := ⟨0, by decide⟩
abbrev i2 : Fin 7 := ⟨1, by decide⟩
abbrev i3 : Fin 7 := ⟨2, by decide⟩
abbrev i4 : Fin 7 := ⟨3, by decide⟩
abbrev i5 : Fin 7 := ⟨4, by decide⟩
abbrev i6 : Fin 7 := ⟨5, by decide⟩
abbrev i7 : Fin 7 := ⟨6, by decide⟩

def b0 : SS.BitString 7 := fun _ => false
def e1 : SS.BitString 7 := SS.stdBasis i1
def e2 : SS.BitString 7 := SS.stdBasis i2
def e3 : SS.BitString 7 := SS.stdBasis i3
def e4 : SS.BitString 7 := SS.stdBasis i4
def e5 : SS.BitString 7 := SS.stdBasis i5
def e6 : SS.BitString 7 := SS.stdBasis i6
def e7 : SS.BitString 7 := SS.stdBasis i7

/-!
## The KL subsystem

Seventeen Knill--Laflamme constraints, all of Pauli weight at most 2:
normalization, the seven single-qubit `Z_j`, and three off-diagonal blocks
`X_1`, `X_2`, `X_3` each taken with `z = 0`, one `Z` inside the block and one
`Z` outside it.
-/

structure KLSubsys (c : Fin 10 → ℂ) : Prop where
  norm :
      p c 0 + p c 1 + p c 2 + p c 3 + p c 4 + p c 5 + p c 6 + p c 7 + p c 8 + p c 9 = 1
  z1 : diagMatElt S0 (coeff c) b0 e1 = 0
  z2 : diagMatElt S0 (coeff c) b0 e2 = 0
  z3 : diagMatElt S0 (coeff c) b0 e3 = 0
  z4 : diagMatElt S0 (coeff c) b0 e4 = 0
  z5 : diagMatElt S0 (coeff c) b0 e5 = 0
  z6 : diagMatElt S0 (coeff c) b0 e6 = 0
  z7 : diagMatElt S0 (coeff c) b0 e7 = 0
  x1_z0   : offdiagMatElt S0 (coeff c) e1 b0 = 0
  x1_ze2  : offdiagMatElt S0 (coeff c) e1 e2 = 0
  x1_ze4  : offdiagMatElt S0 (coeff c) e1 e4 = 0
  x2_z0   : offdiagMatElt S0 (coeff c) e2 b0 = 0
  x2_ze1  : offdiagMatElt S0 (coeff c) e2 e1 = 0
  x2_ze4  : offdiagMatElt S0 (coeff c) e2 e4 = 0
  x3_z0   : offdiagMatElt S0 (coeff c) e3 b0 = 0
  x3_ze1  : offdiagMatElt S0 (coeff c) e3 e1 = 0
  x3_ze4  : offdiagMatElt S0 (coeff c) e3 e4 = 0

/-!
## Low-level simp lemmas
-/

section Helpers

@[simp] lemma bdot_b0 (s : SS.BitString 7) : SS.bdot b0 s = false := by
  simp [SS.bdot, b0]

@[simp] lemma bxor_s_b0 (s : SS.BitString 7) : SS.bxor s b0 = s := SS.bxor_zero s

@[simp] lemma diagIntersection_b0 : SS.diagIntersection S0 b0 = S0 := by decide

@[simp] lemma offdiagIntersection_e1 :
    SS.offdiagIntersection S0 e1 = ({s6, s7, s8, s9} : Finset (SS.BitString 7)) := by
  decide

@[simp] lemma offdiagIntersection_e2 :
    SS.offdiagIntersection S0 e2 = ({s4, s5, s8, s9} : Finset (SS.BitString 7)) := by
  decide

@[simp] lemma offdiagIntersection_e3 :
    SS.offdiagIntersection S0 e3 = ({s4, s5, s6, s7} : Finset (SS.BitString 7)) := by
  decide

-- partners under Delta(e1)
@[simp] lemma bxor_s6_delta_e1 : SS.bxor s6 (SS.delta e1) = s9 := by decide
@[simp] lemma bxor_s7_delta_e1 : SS.bxor s7 (SS.delta e1) = s8 := by decide
@[simp] lemma bxor_s8_delta_e1 : SS.bxor s8 (SS.delta e1) = s7 := by decide
@[simp] lemma bxor_s9_delta_e1 : SS.bxor s9 (SS.delta e1) = s6 := by decide

-- partners under Delta(e2)
@[simp] lemma bxor_s4_delta_e2 : SS.bxor s4 (SS.delta e2) = s9 := by decide
@[simp] lemma bxor_s5_delta_e2 : SS.bxor s5 (SS.delta e2) = s8 := by decide
@[simp] lemma bxor_s8_delta_e2 : SS.bxor s8 (SS.delta e2) = s5 := by decide
@[simp] lemma bxor_s9_delta_e2 : SS.bxor s9 (SS.delta e2) = s4 := by decide

-- partners under Delta(e3)
@[simp] lemma bxor_s4_delta_e3 : SS.bxor s4 (SS.delta e3) = s7 := by decide
@[simp] lemma bxor_s5_delta_e3 : SS.bxor s5 (SS.delta e3) = s6 := by decide
@[simp] lemma bxor_s6_delta_e3 : SS.bxor s6 (SS.delta e3) = s5 := by decide
@[simp] lemma bxor_s7_delta_e3 : SS.bxor s7 (SS.delta e3) = s4 := by decide

@[simp] lemma bdot_e1_s0  : SS.bdot e1 s0  = false := by decide
@[simp] lemma bdot_e1_s1  : SS.bdot e1 s1  = false := by decide
@[simp] lemma bdot_e1_s2  : SS.bdot e1 s2  = false := by decide
@[simp] lemma bdot_e1_s3  : SS.bdot e1 s3  = false := by decide
@[simp] lemma bdot_e1_s4  : SS.bdot e1 s4  = false := by decide
@[simp] lemma bdot_e1_s5  : SS.bdot e1 s5  = false := by decide
@[simp] lemma bdot_e1_s6  : SS.bdot e1 s6  = true  := by decide
@[simp] lemma bdot_e1_s7  : SS.bdot e1 s7  = true  := by decide
@[simp] lemma bdot_e1_s8  : SS.bdot e1 s8  = true  := by decide
@[simp] lemma bdot_e1_s9  : SS.bdot e1 s9  = true  := by decide

@[simp] lemma bdot_e2_s0  : SS.bdot e2 s0  = false := by decide
@[simp] lemma bdot_e2_s1  : SS.bdot e2 s1  = false := by decide
@[simp] lemma bdot_e2_s2  : SS.bdot e2 s2  = false := by decide
@[simp] lemma bdot_e2_s3  : SS.bdot e2 s3  = false := by decide
@[simp] lemma bdot_e2_s4  : SS.bdot e2 s4  = true  := by decide
@[simp] lemma bdot_e2_s5  : SS.bdot e2 s5  = true  := by decide
@[simp] lemma bdot_e2_s6  : SS.bdot e2 s6  = false := by decide
@[simp] lemma bdot_e2_s7  : SS.bdot e2 s7  = false := by decide
@[simp] lemma bdot_e2_s8  : SS.bdot e2 s8  = true  := by decide
@[simp] lemma bdot_e2_s9  : SS.bdot e2 s9  = true  := by decide

@[simp] lemma bdot_e3_s0  : SS.bdot e3 s0  = false := by decide
@[simp] lemma bdot_e3_s1  : SS.bdot e3 s1  = false := by decide
@[simp] lemma bdot_e3_s2  : SS.bdot e3 s2  = false := by decide
@[simp] lemma bdot_e3_s3  : SS.bdot e3 s3  = false := by decide
@[simp] lemma bdot_e3_s4  : SS.bdot e3 s4  = true  := by decide
@[simp] lemma bdot_e3_s5  : SS.bdot e3 s5  = true  := by decide
@[simp] lemma bdot_e3_s6  : SS.bdot e3 s6  = true  := by decide
@[simp] lemma bdot_e3_s7  : SS.bdot e3 s7  = true  := by decide
@[simp] lemma bdot_e3_s8  : SS.bdot e3 s8  = false := by decide
@[simp] lemma bdot_e3_s9  : SS.bdot e3 s9  = false := by decide

@[simp] lemma bdot_e4_s0  : SS.bdot e4 s0  = false := by decide
@[simp] lemma bdot_e4_s1  : SS.bdot e4 s1  = false := by decide
@[simp] lemma bdot_e4_s2  : SS.bdot e4 s2  = false := by decide
@[simp] lemma bdot_e4_s3  : SS.bdot e4 s3  = true  := by decide
@[simp] lemma bdot_e4_s4  : SS.bdot e4 s4  = false := by decide
@[simp] lemma bdot_e4_s5  : SS.bdot e4 s5  = true  := by decide
@[simp] lemma bdot_e4_s6  : SS.bdot e4 s6  = false := by decide
@[simp] lemma bdot_e4_s7  : SS.bdot e4 s7  = true  := by decide
@[simp] lemma bdot_e4_s8  : SS.bdot e4 s8  = false := by decide
@[simp] lemma bdot_e4_s9  : SS.bdot e4 s9  = true  := by decide

@[simp] lemma bdot_e5_s0  : SS.bdot e5 s0  = false := by decide
@[simp] lemma bdot_e5_s1  : SS.bdot e5 s1  = false := by decide
@[simp] lemma bdot_e5_s2  : SS.bdot e5 s2  = true  := by decide
@[simp] lemma bdot_e5_s3  : SS.bdot e5 s3  = false := by decide
@[simp] lemma bdot_e5_s4  : SS.bdot e5 s4  = false := by decide
@[simp] lemma bdot_e5_s5  : SS.bdot e5 s5  = true  := by decide
@[simp] lemma bdot_e5_s6  : SS.bdot e5 s6  = false := by decide
@[simp] lemma bdot_e5_s7  : SS.bdot e5 s7  = true  := by decide
@[simp] lemma bdot_e5_s8  : SS.bdot e5 s8  = false := by decide
@[simp] lemma bdot_e5_s9  : SS.bdot e5 s9  = true  := by decide

@[simp] lemma bdot_e6_s0  : SS.bdot e6 s0  = false := by decide
@[simp] lemma bdot_e6_s1  : SS.bdot e6 s1  = true  := by decide
@[simp] lemma bdot_e6_s2  : SS.bdot e6 s2  = false := by decide
@[simp] lemma bdot_e6_s3  : SS.bdot e6 s3  = false := by decide
@[simp] lemma bdot_e6_s4  : SS.bdot e6 s4  = false := by decide
@[simp] lemma bdot_e6_s5  : SS.bdot e6 s5  = true  := by decide
@[simp] lemma bdot_e6_s6  : SS.bdot e6 s6  = false := by decide
@[simp] lemma bdot_e6_s7  : SS.bdot e6 s7  = true  := by decide
@[simp] lemma bdot_e6_s8  : SS.bdot e6 s8  = false := by decide
@[simp] lemma bdot_e6_s9  : SS.bdot e6 s9  = true  := by decide

@[simp] lemma bdot_e7_s0  : SS.bdot e7 s0  = false := by decide
@[simp] lemma bdot_e7_s1  : SS.bdot e7 s1  = true  := by decide
@[simp] lemma bdot_e7_s2  : SS.bdot e7 s2  = true  := by decide
@[simp] lemma bdot_e7_s3  : SS.bdot e7 s3  = true  := by decide
@[simp] lemma bdot_e7_s4  : SS.bdot e7 s4  = true  := by decide
@[simp] lemma bdot_e7_s5  : SS.bdot e7 s5  = false := by decide
@[simp] lemma bdot_e7_s6  : SS.bdot e7 s6  = true  := by decide
@[simp] lemma bdot_e7_s7  : SS.bdot e7 s7  = false := by decide
@[simp] lemma bdot_e7_s8  : SS.bdot e7 s8  = true  := by decide
@[simp] lemma bdot_e7_s9  : SS.bdot e7 s9  = false := by decide

/-- Expand `∑ s ∈ S0, f s` to an explicit right-associated 10-term sum. -/
lemma sum_S0 {M : Type*} [AddCommMonoid M] (f : SS.BitString 7 → M) :
    ∑ s ∈ S0, f s =
      f s0 + (f s1 + (f s2 + (f s3 + (f s4 + (f s5 + (f s6 + (f s7 + (f s8 + (f s9))))))))) := by
  simp only [S0,
    Finset.sum_insert (by decide : s0 ∉ ({s1,s2,s3,s4,s5,s6,s7,s8,s9} : Finset _)),
    Finset.sum_insert (by decide : s1 ∉ ({s2,s3,s4,s5,s6,s7,s8,s9} : Finset _)),
    Finset.sum_insert (by decide : s2 ∉ ({s3,s4,s5,s6,s7,s8,s9} : Finset _)),
    Finset.sum_insert (by decide : s3 ∉ ({s4,s5,s6,s7,s8,s9} : Finset _)),
    Finset.sum_insert (by decide : s4 ∉ ({s5,s6,s7,s8,s9} : Finset _)),
    Finset.sum_insert (by decide : s5 ∉ ({s6,s7,s8,s9} : Finset _)),
    Finset.sum_insert (by decide : s6 ∉ ({s7,s8,s9} : Finset _)),
    Finset.sum_insert (by decide : s7 ∉ ({s8,s9} : Finset _)),
    Finset.sum_insert (by decide : s8 ∉ ({s9} : Finset _)),
    Finset.sum_singleton]

/-- Expand `∑ s ∈ {s6, s7, s8, s9}, f s`. -/
lemma sum_4elt_e1 {M : Type*} [AddCommMonoid M] (f : SS.BitString 7 → M) :
    ∑ s ∈ ({s6, s7, s8, s9} : Finset (SS.BitString 7)), f s =
      f s6 + (f s7 + (f s8 + f s9)) := by
  simp only [
    Finset.sum_insert (by decide : s6 ∉ ({s7, s8, s9} : Finset _)),
    Finset.sum_insert (by decide : s7 ∉ ({s8, s9} : Finset _)),
    Finset.sum_insert (by decide : s8 ∉ ({s9} : Finset _)),
    Finset.sum_singleton]

/-- Expand `∑ s ∈ {s4, s5, s8, s9}, f s`. -/
lemma sum_4elt_e2 {M : Type*} [AddCommMonoid M] (f : SS.BitString 7 → M) :
    ∑ s ∈ ({s4, s5, s8, s9} : Finset (SS.BitString 7)), f s =
      f s4 + (f s5 + (f s8 + f s9)) := by
  simp only [
    Finset.sum_insert (by decide : s4 ∉ ({s5, s8, s9} : Finset _)),
    Finset.sum_insert (by decide : s5 ∉ ({s8, s9} : Finset _)),
    Finset.sum_insert (by decide : s8 ∉ ({s9} : Finset _)),
    Finset.sum_singleton]

/-- Expand `∑ s ∈ {s4, s5, s6, s7}, f s`. -/
lemma sum_4elt_e3 {M : Type*} [AddCommMonoid M] (f : SS.BitString 7 → M) :
    ∑ s ∈ ({s4, s5, s6, s7} : Finset (SS.BitString 7)), f s =
      f s4 + (f s5 + (f s6 + f s7)) := by
  simp only [
    Finset.sum_insert (by decide : s4 ∉ ({s5, s6, s7} : Finset _)),
    Finset.sum_insert (by decide : s5 ∉ ({s6, s7} : Finset _)),
    Finset.sum_insert (by decide : s6 ∉ ({s7} : Finset _)),
    Finset.sum_singleton]

end Helpers

namespace KLSubsys

variable {c : Fin 10 → ℂ}

set_option maxHeartbeats 800000 in
/-- Derive the 17-equation system of §16 from the KL subsystem. -/
theorem toSystem (h : KLSubsys c) : System c := by
  classical
  refine {
    norm := h.norm
    z1 := ?_, z2 := ?_, z3 := ?_, z4 := ?_, z5 := ?_, z6 := ?_, z7 := ?_
    x1_0 := ?_, x1_2 := ?_, x1_4 := ?_
    x2_0 := ?_, x2_1 := ?_, x2_4 := ?_
    x3_0 := ?_, x3_1 := ?_, x3_4 := ?_ }

  · -- z1
    have hz : (diagMatElt S0 (coeff c) b0 e1).re = 0 := congrArg Complex.re h.z1
    simp only [diagMatElt, diagIntersection_b0, sum_S0, Complex.add_re,
      diagTerm, bxor_s_b0, coeff_s0, coeff_s1, coeff_s2, coeff_s3, coeff_s4, coeff_s5, coeff_s6, coeff_s7, coeff_s8, coeff_s9,
      star_mul_self, bdot_e1_s0, bdot_e1_s1, bdot_e1_s2, bdot_e1_s3, bdot_e1_s4, bdot_e1_s5, bdot_e1_s6, bdot_e1_s7, bdot_e1_s8, bdot_e1_s9,
      signMul_false, signMul_true, Complex.neg_re, Complex.ofReal_re] at hz
    have hn := h.norm
    simp only [p] at hn hz ⊢
    linarith

  · -- z2
    have hz : (diagMatElt S0 (coeff c) b0 e2).re = 0 := congrArg Complex.re h.z2
    simp only [diagMatElt, diagIntersection_b0, sum_S0, Complex.add_re,
      diagTerm, bxor_s_b0, coeff_s0, coeff_s1, coeff_s2, coeff_s3, coeff_s4, coeff_s5, coeff_s6, coeff_s7, coeff_s8, coeff_s9,
      star_mul_self, bdot_e2_s0, bdot_e2_s1, bdot_e2_s2, bdot_e2_s3, bdot_e2_s4, bdot_e2_s5, bdot_e2_s6, bdot_e2_s7, bdot_e2_s8, bdot_e2_s9,
      signMul_false, signMul_true, Complex.neg_re, Complex.ofReal_re] at hz
    have hn := h.norm
    simp only [p] at hn hz ⊢
    linarith

  · -- z3
    have hz : (diagMatElt S0 (coeff c) b0 e3).re = 0 := congrArg Complex.re h.z3
    simp only [diagMatElt, diagIntersection_b0, sum_S0, Complex.add_re,
      diagTerm, bxor_s_b0, coeff_s0, coeff_s1, coeff_s2, coeff_s3, coeff_s4, coeff_s5, coeff_s6, coeff_s7, coeff_s8, coeff_s9,
      star_mul_self, bdot_e3_s0, bdot_e3_s1, bdot_e3_s2, bdot_e3_s3, bdot_e3_s4, bdot_e3_s5, bdot_e3_s6, bdot_e3_s7, bdot_e3_s8, bdot_e3_s9,
      signMul_false, signMul_true, Complex.neg_re, Complex.ofReal_re] at hz
    have hn := h.norm
    simp only [p] at hn hz ⊢
    linarith

  · -- z4
    have hz : (diagMatElt S0 (coeff c) b0 e4).re = 0 := congrArg Complex.re h.z4
    simp only [diagMatElt, diagIntersection_b0, sum_S0, Complex.add_re,
      diagTerm, bxor_s_b0, coeff_s0, coeff_s1, coeff_s2, coeff_s3, coeff_s4, coeff_s5, coeff_s6, coeff_s7, coeff_s8, coeff_s9,
      star_mul_self, bdot_e4_s0, bdot_e4_s1, bdot_e4_s2, bdot_e4_s3, bdot_e4_s4, bdot_e4_s5, bdot_e4_s6, bdot_e4_s7, bdot_e4_s8, bdot_e4_s9,
      signMul_false, signMul_true, Complex.neg_re, Complex.ofReal_re] at hz
    have hn := h.norm
    simp only [p] at hn hz ⊢
    linarith

  · -- z5
    have hz : (diagMatElt S0 (coeff c) b0 e5).re = 0 := congrArg Complex.re h.z5
    simp only [diagMatElt, diagIntersection_b0, sum_S0, Complex.add_re,
      diagTerm, bxor_s_b0, coeff_s0, coeff_s1, coeff_s2, coeff_s3, coeff_s4, coeff_s5, coeff_s6, coeff_s7, coeff_s8, coeff_s9,
      star_mul_self, bdot_e5_s0, bdot_e5_s1, bdot_e5_s2, bdot_e5_s3, bdot_e5_s4, bdot_e5_s5, bdot_e5_s6, bdot_e5_s7, bdot_e5_s8, bdot_e5_s9,
      signMul_false, signMul_true, Complex.neg_re, Complex.ofReal_re] at hz
    have hn := h.norm
    simp only [p] at hn hz ⊢
    linarith

  · -- z6
    have hz : (diagMatElt S0 (coeff c) b0 e6).re = 0 := congrArg Complex.re h.z6
    simp only [diagMatElt, diagIntersection_b0, sum_S0, Complex.add_re,
      diagTerm, bxor_s_b0, coeff_s0, coeff_s1, coeff_s2, coeff_s3, coeff_s4, coeff_s5, coeff_s6, coeff_s7, coeff_s8, coeff_s9,
      star_mul_self, bdot_e6_s0, bdot_e6_s1, bdot_e6_s2, bdot_e6_s3, bdot_e6_s4, bdot_e6_s5, bdot_e6_s6, bdot_e6_s7, bdot_e6_s8, bdot_e6_s9,
      signMul_false, signMul_true, Complex.neg_re, Complex.ofReal_re] at hz
    have hn := h.norm
    simp only [p] at hn hz ⊢
    linarith

  · -- z7
    have hz : (diagMatElt S0 (coeff c) b0 e7).re = 0 := congrArg Complex.re h.z7
    simp only [diagMatElt, diagIntersection_b0, sum_S0, Complex.add_re,
      diagTerm, bxor_s_b0, coeff_s0, coeff_s1, coeff_s2, coeff_s3, coeff_s4, coeff_s5, coeff_s6, coeff_s7, coeff_s8, coeff_s9,
      star_mul_self, bdot_e7_s0, bdot_e7_s1, bdot_e7_s2, bdot_e7_s3, bdot_e7_s4, bdot_e7_s5, bdot_e7_s6, bdot_e7_s7, bdot_e7_s8, bdot_e7_s9,
      signMul_false, signMul_true, Complex.neg_re, Complex.ofReal_re] at hz
    have hn := h.norm
    simp only [p] at hn hz ⊢
    linarith

  · -- x1_0
    have hx := h.x1_z0
    simp only [offdiagMatElt, offdiagIntersection_e1, sum_4elt_e1, offdiagTerm,
      bxor_s6_delta_e1, bxor_s7_delta_e1, bxor_s8_delta_e1, bxor_s9_delta_e1,
      coeff_s6, coeff_s7, coeff_s8, coeff_s9,
      bdot_b0,
      signMul_false] at hx
    linear_combination hx

  · -- x1_2
    have hx := h.x1_ze2
    simp only [offdiagMatElt, offdiagIntersection_e1, sum_4elt_e1, offdiagTerm,
      bxor_s6_delta_e1, bxor_s7_delta_e1, bxor_s8_delta_e1, bxor_s9_delta_e1,
      coeff_s6, coeff_s7, coeff_s8, coeff_s9,
      bdot_e2_s6, bdot_e2_s7, bdot_e2_s8, bdot_e2_s9,
      signMul_false, signMul_true] at hx
    linear_combination -hx

  · -- x1_4
    have hx := h.x1_ze4
    simp only [offdiagMatElt, offdiagIntersection_e1, sum_4elt_e1, offdiagTerm,
      bxor_s6_delta_e1, bxor_s7_delta_e1, bxor_s8_delta_e1, bxor_s9_delta_e1,
      coeff_s6, coeff_s7, coeff_s8, coeff_s9,
      bdot_e4_s6, bdot_e4_s7, bdot_e4_s8, bdot_e4_s9,
      signMul_false, signMul_true] at hx
    linear_combination -hx

  · -- x2_0
    have hx := h.x2_z0
    simp only [offdiagMatElt, offdiagIntersection_e2, sum_4elt_e2, offdiagTerm,
      bxor_s4_delta_e2, bxor_s5_delta_e2, bxor_s8_delta_e2, bxor_s9_delta_e2,
      coeff_s4, coeff_s5, coeff_s8, coeff_s9,
      bdot_b0,
      signMul_false] at hx
    linear_combination hx

  · -- x2_1
    have hx := h.x2_ze1
    simp only [offdiagMatElt, offdiagIntersection_e2, sum_4elt_e2, offdiagTerm,
      bxor_s4_delta_e2, bxor_s5_delta_e2, bxor_s8_delta_e2, bxor_s9_delta_e2,
      coeff_s4, coeff_s5, coeff_s8, coeff_s9,
      bdot_e1_s4, bdot_e1_s5, bdot_e1_s8, bdot_e1_s9,
      signMul_false, signMul_true] at hx
    linear_combination -hx

  · -- x2_4
    have hx := h.x2_ze4
    simp only [offdiagMatElt, offdiagIntersection_e2, sum_4elt_e2, offdiagTerm,
      bxor_s4_delta_e2, bxor_s5_delta_e2, bxor_s8_delta_e2, bxor_s9_delta_e2,
      coeff_s4, coeff_s5, coeff_s8, coeff_s9,
      bdot_e4_s4, bdot_e4_s5, bdot_e4_s8, bdot_e4_s9,
      signMul_false, signMul_true] at hx
    linear_combination -hx

  · -- x3_0
    have hx := h.x3_z0
    simp only [offdiagMatElt, offdiagIntersection_e3, sum_4elt_e3, offdiagTerm,
      bxor_s4_delta_e3, bxor_s5_delta_e3, bxor_s6_delta_e3, bxor_s7_delta_e3,
      coeff_s4, coeff_s5, coeff_s6, coeff_s7,
      bdot_b0,
      signMul_false] at hx
    linear_combination hx

  · -- x3_1
    have hx := h.x3_ze1
    simp only [offdiagMatElt, offdiagIntersection_e3, sum_4elt_e3, offdiagTerm,
      bxor_s4_delta_e3, bxor_s5_delta_e3, bxor_s6_delta_e3, bxor_s7_delta_e3,
      coeff_s4, coeff_s5, coeff_s6, coeff_s7,
      bdot_e1_s4, bdot_e1_s5, bdot_e1_s6, bdot_e1_s7,
      signMul_false, signMul_true] at hx
    linear_combination -hx

  · -- x3_4
    have hx := h.x3_ze4
    simp only [offdiagMatElt, offdiagIntersection_e3, sum_4elt_e3, offdiagTerm,
      bxor_s4_delta_e3, bxor_s5_delta_e3, bxor_s6_delta_e3, bxor_s7_delta_e3,
      coeff_s4, coeff_s5, coeff_s6, coeff_s7,
      bdot_e4_s4, bdot_e4_s5, bdot_e4_s6, bdot_e4_s7,
      signMul_false, signMul_true] at hx
    linear_combination -hx

end KLSubsys


/-!
## From a quantum state to the subsystem
-/

/-- No solution to the selected KL subsystem (TeX §16). -/
theorem no_KLSubsys : ¬ ∃ c : Fin 10 → ℂ, KLSubsys c := by
  rintro ⟨c, hc⟩
  exact no_solution ⟨c, KLSubsys.toSystem (c := c) hc⟩

lemma coeff_vanish (c : Fin 10 → ℂ) : ∀ s, s ∉ S0 → coeff c s = 0 := by
  intro s hs
  simp only [S0, Finset.mem_insert, Finset.mem_singleton, not_or] at hs
  obtain ⟨h0, h1, h2, h3, h4, h5, h6, h7, h8, h9⟩ := hs
  unfold coeff
  simp [h0, h1, h2, h3, h4, h5, h6, h7, h8, h9]

/-- **The subsystem is necessary.**  If the state `coeff c` is normalized and its
Knill--Laflamme matrix elements vanish where the ansatz forces them to, then `c`
solves `KLSubsys`.

Both hypotheses are restricted to Pauli weight `≤ 2`, which is exactly the range a
distance-3 code must correct and the only range the sixteen instantiations below
use.  The restriction is essential and not cosmetic: an unrestricted hypothesis is
already contradicted by `hnorm`. -/
theorem KLSubsys_of_KL (c : Fin 10 → ℂ)
    (hnorm : p c 0 + p c 1 + p c 2 + p c 3 + p c 4 + p c 5 + p c 6 + p c 7 + p c 8 + p c 9 = 1)
    (hdiag : ∀ P : SS.PauliString 7, P.wt ≤ 2 → SS.hammingWt P.z % 2 = 1 →
      SS.innerC (coeff c) (SS.pauliAct P (coeff c)) = 0)
    (hoff : ∀ P : SS.PauliString 7, P.wt ≤ 2 →
      SS.innerC (coeff c) (SS.pauliAct P (SS.flipState (coeff c))) = 0) :
    KLSubsys c := by
  have hv := coeff_vanish c
  refine
  { norm := hnorm
    z1 := diagMatElt_eq_zero_of_innerC S0 _ hv ⟨b0, e1⟩ (hdiag _ (by decide) (by decide))
    z2 := diagMatElt_eq_zero_of_innerC S0 _ hv ⟨b0, e2⟩ (hdiag _ (by decide) (by decide))
    z3 := diagMatElt_eq_zero_of_innerC S0 _ hv ⟨b0, e3⟩ (hdiag _ (by decide) (by decide))
    z4 := diagMatElt_eq_zero_of_innerC S0 _ hv ⟨b0, e4⟩ (hdiag _ (by decide) (by decide))
    z5 := diagMatElt_eq_zero_of_innerC S0 _ hv ⟨b0, e5⟩ (hdiag _ (by decide) (by decide))
    z6 := diagMatElt_eq_zero_of_innerC S0 _ hv ⟨b0, e6⟩ (hdiag _ (by decide) (by decide))
    z7 := diagMatElt_eq_zero_of_innerC S0 _ hv ⟨b0, e7⟩ (hdiag _ (by decide) (by decide))
    x1_z0   := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨e1, b0⟩ (hoff _ (by decide))
    x1_ze2  := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨e1, e2⟩ (hoff _ (by decide))
    x1_ze4  := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨e1, e4⟩ (hoff _ (by decide))
    x2_z0   := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨e2, b0⟩ (hoff _ (by decide))
    x2_ze1  := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨e2, e1⟩ (hoff _ (by decide))
    x2_ze4  := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨e2, e4⟩ (hoff _ (by decide))
    x3_z0   := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨e3, b0⟩ (hoff _ (by decide))
    x3_ze1  := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨e3, e1⟩ (hoff _ (by decide))
    x3_ze4  := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨e3, e4⟩ (hoff _ (by decide))
  }

/-- **No-go, stated for quantum states.**  No normalized state on the SS support
`S0` satisfies the Knill--Laflamme conditions of the complementary ansatz for the
Pauli errors of weight `≤ 2` — that is, for exactly the errors a distance-3 code is
required to handle. -/
theorem no_KL_state :
    ¬ ∃ c : Fin 10 → ℂ,
        (p c 0 + p c 1 + p c 2 + p c 3 + p c 4 + p c 5 + p c 6 + p c 7 + p c 8 + p c 9 = 1)
        ∧ (∀ P : SS.PauliString 7, P.wt ≤ 2 → SS.hammingWt P.z % 2 = 1 →
            SS.innerC (coeff c) (SS.pauliAct P (coeff c)) = 0)
        ∧ (∀ P : SS.PauliString 7, P.wt ≤ 2 →
            SS.innerC (coeff c) (SS.pauliAct P (SS.flipState (coeff c))) = 0) := by
  rintro ⟨c, h1, h2, h3⟩
  exact no_KLSubsys ⟨c, KLSubsys_of_KL c h1 h2 h3⟩
end

end Examples.D3.NoGo.BD16_1112226
