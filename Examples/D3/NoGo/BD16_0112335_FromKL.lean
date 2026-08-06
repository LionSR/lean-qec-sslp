import Mathlib

import SS.FullKL  -- combinatorial intersection machinery

import Examples.D3.NoGo.Common

import Examples.D3.NoGo.BD16_0112335_Equations

/-!
# BD16 no-go: $a = (0,1,1,2,3,3,5)$ (mod $8$) — deriving (E1)–(E19) from a KL subsystem

`Examples/D3/NoGo/BD16_0112335_Equations.lean` defines the 19-equation system `System` (E1–E19)
from `BD16_distance3.tex` §17.6 and proves `System.no_solution`.

This file formalizes the missing step:

  (a small explicit Knill–Laflamme subsystem on the SS support $S_0$)
    $\Rightarrow$ (E1)–(E19).

We work under the **complementary** convention $|1_L\rangle = X^{\otimes 7}|0_L\rangle$.

No `sorry`.
-/

namespace Examples.D3.NoGo.BD16_0112335

noncomputable section

open SS
open scoped BigOperators
open scoped ComplexConjugate

/-!
## The explicit SS support $S_0$ (14 bitstrings)
-/

/-- Convenience constructor for `BitString 7`. -/
def bs (b₀ b₁ b₂ b₃ b₄ b₅ b₆ : Bool) : SS.BitString 7 :=
  ![b₀, b₁, b₂, b₃, b₄, b₅, b₆]

-- NOTE: s0..s13 are plain `def` (not @[simp]) so simp does not unfold them,
-- allowing coeff_sk lemmas to match `coeff c si` before any unfolding occurs.
def s0  : SS.BitString 7 := bs false false false false false false false
def s1  : SS.BitString 7 := bs false false false false false true  true
def s2  : SS.BitString 7 := bs false false false false true  false true
def s3  : SS.BitString 7 := bs false false false true  true  true  false
def s4  : SS.BitString 7 := bs false false true  true  false false true
def s5  : SS.BitString 7 := bs false true  false true  false false true
def s6  : SS.BitString 7 := bs false true  true  false true  true  false
def s7  : SS.BitString 7 := bs true  false false false false false false
def s8  : SS.BitString 7 := bs true  false false false false true  true
def s9  : SS.BitString 7 := bs true  false false false true  false true
def s10 : SS.BitString 7 := bs true  false false true  true  true  false
def s11 : SS.BitString 7 := bs true  false true  true  false false true
def s12 : SS.BitString 7 := bs true  true  false true  false false true
def s13 : SS.BitString 7 := bs true  true  true  false true  true  false

def S0 : Finset (SS.BitString 7) :=
  {s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13}

/-!
## Coefficient function
-/

def coeff (c : Fin 14 → ℂ) (s : SS.BitString 7) : ℂ :=
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
  else if s = s10 then c 10
  else if s = s11 then c 11
  else if s = s12 then c 12
  else if s = s13 then c 13
  else 0

@[simp] lemma coeff_s0  (c : Fin 14 → ℂ) : coeff c s0  = c 0  := by simp [coeff]

@[simp] lemma coeff_s1  (c : Fin 14 → ℂ) : coeff c s1  = c 1  := by
  unfold coeff; rw [if_neg (show s1 ≠ s0 from by decide)]; rfl

@[simp] lemma coeff_s2  (c : Fin 14 → ℂ) : coeff c s2  = c 2  := by
  unfold coeff
  rw [if_neg (show s2 ≠ s0 from by decide),
      if_neg (show s2 ≠ s1 from by decide)]; rfl

@[simp] lemma coeff_s3  (c : Fin 14 → ℂ) : coeff c s3  = c 3  := by
  unfold coeff
  rw [if_neg (show s3 ≠ s0 from by decide),
      if_neg (show s3 ≠ s1 from by decide),
      if_neg (show s3 ≠ s2 from by decide)]; rfl

@[simp] lemma coeff_s4  (c : Fin 14 → ℂ) : coeff c s4  = c 4  := by
  unfold coeff
  rw [if_neg (show s4 ≠ s0 from by decide),
      if_neg (show s4 ≠ s1 from by decide),
      if_neg (show s4 ≠ s2 from by decide),
      if_neg (show s4 ≠ s3 from by decide)]; rfl

@[simp] lemma coeff_s5  (c : Fin 14 → ℂ) : coeff c s5  = c 5  := by
  unfold coeff
  rw [if_neg (show s5 ≠ s0 from by decide),
      if_neg (show s5 ≠ s1 from by decide),
      if_neg (show s5 ≠ s2 from by decide),
      if_neg (show s5 ≠ s3 from by decide),
      if_neg (show s5 ≠ s4 from by decide)]; rfl

@[simp] lemma coeff_s6  (c : Fin 14 → ℂ) : coeff c s6  = c 6  := by
  unfold coeff
  rw [if_neg (show s6 ≠ s0 from by decide),
      if_neg (show s6 ≠ s1 from by decide),
      if_neg (show s6 ≠ s2 from by decide),
      if_neg (show s6 ≠ s3 from by decide),
      if_neg (show s6 ≠ s4 from by decide),
      if_neg (show s6 ≠ s5 from by decide)]; rfl

@[simp] lemma coeff_s7  (c : Fin 14 → ℂ) : coeff c s7  = c 7  := by
  unfold coeff
  rw [if_neg (show s7 ≠ s0 from by decide),
      if_neg (show s7 ≠ s1 from by decide),
      if_neg (show s7 ≠ s2 from by decide),
      if_neg (show s7 ≠ s3 from by decide),
      if_neg (show s7 ≠ s4 from by decide),
      if_neg (show s7 ≠ s5 from by decide),
      if_neg (show s7 ≠ s6 from by decide)]; rfl

@[simp] lemma coeff_s8  (c : Fin 14 → ℂ) : coeff c s8  = c 8  := by
  unfold coeff
  rw [if_neg (show s8 ≠ s0 from by decide),
      if_neg (show s8 ≠ s1 from by decide),
      if_neg (show s8 ≠ s2 from by decide),
      if_neg (show s8 ≠ s3 from by decide),
      if_neg (show s8 ≠ s4 from by decide),
      if_neg (show s8 ≠ s5 from by decide),
      if_neg (show s8 ≠ s6 from by decide),
      if_neg (show s8 ≠ s7 from by decide)]; rfl

@[simp] lemma coeff_s9  (c : Fin 14 → ℂ) : coeff c s9  = c 9  := by
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

@[simp] lemma coeff_s10 (c : Fin 14 → ℂ) : coeff c s10 = c 10 := by
  unfold coeff
  rw [if_neg (show s10 ≠ s0 from by decide),
      if_neg (show s10 ≠ s1 from by decide),
      if_neg (show s10 ≠ s2 from by decide),
      if_neg (show s10 ≠ s3 from by decide),
      if_neg (show s10 ≠ s4 from by decide),
      if_neg (show s10 ≠ s5 from by decide),
      if_neg (show s10 ≠ s6 from by decide),
      if_neg (show s10 ≠ s7 from by decide),
      if_neg (show s10 ≠ s8 from by decide),
      if_neg (show s10 ≠ s9 from by decide)]; rfl

@[simp] lemma coeff_s11 (c : Fin 14 → ℂ) : coeff c s11 = c 11 := by
  unfold coeff
  rw [if_neg (show s11 ≠ s0 from by decide),
      if_neg (show s11 ≠ s1 from by decide),
      if_neg (show s11 ≠ s2 from by decide),
      if_neg (show s11 ≠ s3 from by decide),
      if_neg (show s11 ≠ s4 from by decide),
      if_neg (show s11 ≠ s5 from by decide),
      if_neg (show s11 ≠ s6 from by decide),
      if_neg (show s11 ≠ s7 from by decide),
      if_neg (show s11 ≠ s8 from by decide),
      if_neg (show s11 ≠ s9 from by decide),
      if_neg (show s11 ≠ s10 from by decide)]; rfl

@[simp] lemma coeff_s12 (c : Fin 14 → ℂ) : coeff c s12 = c 12 := by
  unfold coeff
  rw [if_neg (show s12 ≠ s0 from by decide),
      if_neg (show s12 ≠ s1 from by decide),
      if_neg (show s12 ≠ s2 from by decide),
      if_neg (show s12 ≠ s3 from by decide),
      if_neg (show s12 ≠ s4 from by decide),
      if_neg (show s12 ≠ s5 from by decide),
      if_neg (show s12 ≠ s6 from by decide),
      if_neg (show s12 ≠ s7 from by decide),
      if_neg (show s12 ≠ s8 from by decide),
      if_neg (show s12 ≠ s9 from by decide),
      if_neg (show s12 ≠ s10 from by decide),
      if_neg (show s12 ≠ s11 from by decide)]; rfl

@[simp] lemma coeff_s13 (c : Fin 14 → ℂ) : coeff c s13 = c 13 := by
  unfold coeff
  rw [if_neg (show s13 ≠ s0 from by decide),
      if_neg (show s13 ≠ s1 from by decide),
      if_neg (show s13 ≠ s2 from by decide),
      if_neg (show s13 ≠ s3 from by decide),
      if_neg (show s13 ≠ s4 from by decide),
      if_neg (show s13 ≠ s5 from by decide),
      if_neg (show s13 ≠ s6 from by decide),
      if_neg (show s13 ≠ s7 from by decide),
      if_neg (show s13 ≠ s8 from by decide),
      if_neg (show s13 ≠ s9 from by decide),
      if_neg (show s13 ≠ s10 from by decide),
      if_neg (show s13 ≠ s11 from by decide),
      if_neg (show s13 ≠ s12 from by decide)]; rfl

/-!
## The Pauli bitstrings used in the subsystem
-/

abbrev i1 : Fin 7 := ⟨0, by decide⟩
abbrev i2 : Fin 7 := ⟨1, by decide⟩
abbrev i3 : Fin 7 := ⟨2, by decide⟩
abbrev i4 : Fin 7 := ⟨3, by decide⟩
abbrev i5 : Fin 7 := ⟨4, by decide⟩
abbrev i6 : Fin 7 := ⟨5, by decide⟩
abbrev i7 : Fin 7 := ⟨6, by decide⟩

def b0  : SS.BitString 7 := fun _ => false
def e1  : SS.BitString 7 := SS.stdBasis i1
def e2  : SS.BitString 7 := SS.stdBasis i2
def e3  : SS.BitString 7 := SS.stdBasis i3
def e4  : SS.BitString 7 := SS.stdBasis i4
def e5  : SS.BitString 7 := SS.stdBasis i5
def e6  : SS.BitString 7 := SS.stdBasis i6
def e7  : SS.BitString 7 := SS.stdBasis i7
def x12 : SS.BitString 7 := SS.bxor e1 e2
def x13 : SS.BitString 7 := SS.bxor e1 e3

/-!
## The KL subsystem
-/

structure KLSubsys (c : Fin 14 → ℂ) : Prop where
  norm :
      p0 c + p1 c + p2 c + p3 c + p4 c + p5 c + p6 c +
        p7 c + p8 c + p9 c + p10 c + p11 c + p12 c + p13 c = 1
  z1 : diagMatElt S0 (coeff c) b0 e1 = 0
  z2 : diagMatElt S0 (coeff c) b0 e2 = 0
  z3 : diagMatElt S0 (coeff c) b0 e3 = 0
  z4 : diagMatElt S0 (coeff c) b0 e4 = 0
  z5 : diagMatElt S0 (coeff c) b0 e5 = 0
  z6 : diagMatElt S0 (coeff c) b0 e6 = 0
  z7 : diagMatElt S0 (coeff c) b0 e7 = 0
  y1 : diagMatElt S0 (coeff c) e1 e1 = 0
  x2_z0  : offdiagMatElt S0 (coeff c) e2 b0 = 0
  x2_ze1 : offdiagMatElt S0 (coeff c) e2 e1 = 0
  x2_ze3 : offdiagMatElt S0 (coeff c) e2 e3 = 0
  x3_z0  : offdiagMatElt S0 (coeff c) e3 b0 = 0
  x3_ze1 : offdiagMatElt S0 (coeff c) e3 e1 = 0
  x3_ze2 : offdiagMatElt S0 (coeff c) e3 e2 = 0
  x12_z0  : offdiagMatElt S0 (coeff c) x12 b0 = 0
  x12_ze1 : offdiagMatElt S0 (coeff c) x12 e1 = 0
  x13_z0  : offdiagMatElt S0 (coeff c) x13 b0 = 0
  x13_ze1 : offdiagMatElt S0 (coeff c) x13 e1 = 0

/-!
## Low-level simp lemmas
-/

section Helpers

@[simp] lemma bdot_b0 (s : SS.BitString 7) : SS.bdot b0 s = false := by
  simp [SS.bdot, b0]

/-- `bdot` against a standard basis vector reads out the corresponding bit. -/
@[simp] lemma bdot_stdBasis (i : Fin 7) (s : SS.BitString 7) : SS.bdot (SS.stdBasis i) s = s i := by
  simp only [SS.bdot, SS.stdBasis]
  have hfilter : (Finset.univ : Finset (Fin 7)).filter (fun j => (j == i) && s j) =
      if s i then {i} else ∅ := by
    ext j
    constructor
    · intro hj
      simp only [Finset.mem_filter, Finset.mem_univ, true_and, Bool.and_eq_true] at hj
      obtain ⟨hji, hs⟩ := hj
      have heq : j = i := LawfulBEq.eq_of_beq hji
      subst heq; simp [hs]
    · intro hj
      simp only [Finset.mem_filter, Finset.mem_univ, true_and, Bool.and_eq_true]
      split_ifs at hj with hi
      · have heq : j = i := Finset.mem_singleton.mp hj
        subst heq; exact ⟨by simp, hi⟩
      · simp at hj
  rw [hfilter]
  cases h : s i
  · rw [if_neg Bool.false_ne_true, Finset.card_empty]; decide
  · rw [if_pos rfl, Finset.card_singleton]; decide

@[simp] lemma bxor_s_b0 (s : SS.BitString 7) : SS.bxor s b0 = s := SS.bxor_zero s

@[simp] lemma diagIntersection_b0 : SS.diagIntersection S0 b0 = S0 := by decide
@[simp] lemma diagIntersection_e1 : SS.diagIntersection S0 e1 = S0 := by decide

@[simp] lemma offdiagIntersection_e2 :
    SS.offdiagIntersection S0 e2 = ({s5, s6, s12, s13} : Finset (SS.BitString 7)) := by
  decide
@[simp] lemma offdiagIntersection_e3 :
    SS.offdiagIntersection S0 e3 = ({s4, s6, s11, s13} : Finset (SS.BitString 7)) := by
  decide
@[simp] lemma offdiagIntersection_x12 :
    SS.offdiagIntersection S0 x12 = ({s5, s6, s12, s13} : Finset (SS.BitString 7)) := by
  decide
@[simp] lemma offdiagIntersection_x13 :
    SS.offdiagIntersection S0 x13 = ({s4, s6, s11, s13} : Finset (SS.BitString 7)) := by
  decide

-- e1 XOR partners (for Y₁ diagonal block)
@[simp] lemma bxor_s0_e1  : SS.bxor s0 e1 = s7  := by decide
@[simp] lemma bxor_s7_e1  : SS.bxor s7 e1 = s0  := by decide
@[simp] lemma bxor_s1_e1  : SS.bxor s1 e1 = s8  := by decide
@[simp] lemma bxor_s8_e1  : SS.bxor s8 e1 = s1  := by decide
@[simp] lemma bxor_s2_e1  : SS.bxor s2 e1 = s9  := by decide
@[simp] lemma bxor_s9_e1  : SS.bxor s9 e1 = s2  := by decide
@[simp] lemma bxor_s3_e1  : SS.bxor s3 e1 = s10 := by decide
@[simp] lemma bxor_s10_e1 : SS.bxor s10 e1 = s3 := by decide
@[simp] lemma bxor_s4_e1  : SS.bxor s4 e1 = s11 := by decide
@[simp] lemma bxor_s11_e1 : SS.bxor s11 e1 = s4 := by decide
@[simp] lemma bxor_s5_e1  : SS.bxor s5 e1 = s12 := by decide
@[simp] lemma bxor_s12_e1 : SS.bxor s12 e1 = s5 := by decide
@[simp] lemma bxor_s6_e1  : SS.bxor s6 e1 = s13 := by decide
@[simp] lemma bxor_s13_e1 : SS.bxor s13 e1 = s6 := by decide

-- delta(e2) XOR partners
@[simp] lemma bxor_s5_de2  : SS.bxor s5 (SS.delta e2) = s13 := by decide
@[simp] lemma bxor_s13_de2 : SS.bxor s13 (SS.delta e2) = s5 := by decide
@[simp] lemma bxor_s6_de2  : SS.bxor s6 (SS.delta e2) = s12 := by decide
@[simp] lemma bxor_s12_de2 : SS.bxor s12 (SS.delta e2) = s6 := by decide

-- delta(e3) XOR partners
@[simp] lemma bxor_s4_de3  : SS.bxor s4 (SS.delta e3) = s13 := by decide
@[simp] lemma bxor_s13_de3 : SS.bxor s13 (SS.delta e3) = s4 := by decide
@[simp] lemma bxor_s6_de3  : SS.bxor s6 (SS.delta e3) = s11 := by decide
@[simp] lemma bxor_s11_de3 : SS.bxor s11 (SS.delta e3) = s6 := by decide

-- delta(x12) XOR partners
@[simp] lemma bxor_s5_dx12  : SS.bxor s5 (SS.delta x12) = s6  := by decide
@[simp] lemma bxor_s6_dx12  : SS.bxor s6 (SS.delta x12) = s5  := by decide
@[simp] lemma bxor_s12_dx12 : SS.bxor s12 (SS.delta x12) = s13 := by decide
@[simp] lemma bxor_s13_dx12 : SS.bxor s13 (SS.delta x12) = s12 := by decide

-- delta(x13) XOR partners
@[simp] lemma bxor_s4_dx13  : SS.bxor s4 (SS.delta x13) = s6  := by decide
@[simp] lemma bxor_s6_dx13  : SS.bxor s6 (SS.delta x13) = s4  := by decide
@[simp] lemma bxor_s11_dx13 : SS.bxor s11 (SS.delta x13) = s13 := by decide
@[simp] lemma bxor_s13_dx13 : SS.bxor s13 (SS.delta x13) = s11 := by decide

/-!
### Precomputed `bdot` values for each (standard basis vector, support string) pair.

These avoid the need to unfold `si` definitions during simp, preventing the ordering
issue where `si → ![...]` fires before `coeff c si → c k`.
-/

-- bdot e1 (bit 0): s7..s13 = true, s0..s6 = false
@[simp] lemma bdot_e1_s0  : SS.bdot e1 s0  = false := by decide
@[simp] lemma bdot_e1_s1  : SS.bdot e1 s1  = false := by decide
@[simp] lemma bdot_e1_s2  : SS.bdot e1 s2  = false := by decide
@[simp] lemma bdot_e1_s3  : SS.bdot e1 s3  = false := by decide
@[simp] lemma bdot_e1_s4  : SS.bdot e1 s4  = false := by decide
@[simp] lemma bdot_e1_s5  : SS.bdot e1 s5  = false := by decide
@[simp] lemma bdot_e1_s6  : SS.bdot e1 s6  = false := by decide
@[simp] lemma bdot_e1_s7  : SS.bdot e1 s7  = true  := by decide
@[simp] lemma bdot_e1_s8  : SS.bdot e1 s8  = true  := by decide
@[simp] lemma bdot_e1_s9  : SS.bdot e1 s9  = true  := by decide
@[simp] lemma bdot_e1_s10 : SS.bdot e1 s10 = true  := by decide
@[simp] lemma bdot_e1_s11 : SS.bdot e1 s11 = true  := by decide
@[simp] lemma bdot_e1_s12 : SS.bdot e1 s12 = true  := by decide
@[simp] lemma bdot_e1_s13 : SS.bdot e1 s13 = true  := by decide

-- bdot e2 (bit 1): s5,s6,s12,s13 = true, rest = false
@[simp] lemma bdot_e2_s0  : SS.bdot e2 s0  = false := by decide
@[simp] lemma bdot_e2_s1  : SS.bdot e2 s1  = false := by decide
@[simp] lemma bdot_e2_s2  : SS.bdot e2 s2  = false := by decide
@[simp] lemma bdot_e2_s3  : SS.bdot e2 s3  = false := by decide
@[simp] lemma bdot_e2_s4  : SS.bdot e2 s4  = false := by decide
@[simp] lemma bdot_e2_s5  : SS.bdot e2 s5  = true  := by decide
@[simp] lemma bdot_e2_s6  : SS.bdot e2 s6  = true  := by decide
@[simp] lemma bdot_e2_s7  : SS.bdot e2 s7  = false := by decide
@[simp] lemma bdot_e2_s8  : SS.bdot e2 s8  = false := by decide
@[simp] lemma bdot_e2_s9  : SS.bdot e2 s9  = false := by decide
@[simp] lemma bdot_e2_s10 : SS.bdot e2 s10 = false := by decide
@[simp] lemma bdot_e2_s11 : SS.bdot e2 s11 = false := by decide
@[simp] lemma bdot_e2_s12 : SS.bdot e2 s12 = true  := by decide
@[simp] lemma bdot_e2_s13 : SS.bdot e2 s13 = true  := by decide

-- bdot e3 (bit 2): s4,s6,s11,s13 = true, rest = false
@[simp] lemma bdot_e3_s0  : SS.bdot e3 s0  = false := by decide
@[simp] lemma bdot_e3_s1  : SS.bdot e3 s1  = false := by decide
@[simp] lemma bdot_e3_s2  : SS.bdot e3 s2  = false := by decide
@[simp] lemma bdot_e3_s3  : SS.bdot e3 s3  = false := by decide
@[simp] lemma bdot_e3_s4  : SS.bdot e3 s4  = true  := by decide
@[simp] lemma bdot_e3_s5  : SS.bdot e3 s5  = false := by decide
@[simp] lemma bdot_e3_s6  : SS.bdot e3 s6  = true  := by decide
@[simp] lemma bdot_e3_s7  : SS.bdot e3 s7  = false := by decide
@[simp] lemma bdot_e3_s8  : SS.bdot e3 s8  = false := by decide
@[simp] lemma bdot_e3_s9  : SS.bdot e3 s9  = false := by decide
@[simp] lemma bdot_e3_s10 : SS.bdot e3 s10 = false := by decide
@[simp] lemma bdot_e3_s11 : SS.bdot e3 s11 = true  := by decide
@[simp] lemma bdot_e3_s12 : SS.bdot e3 s12 = false := by decide
@[simp] lemma bdot_e3_s13 : SS.bdot e3 s13 = true  := by decide

-- bdot e4 (bit 3): s3,s4,s5,s10,s11,s12 = true, rest = false
@[simp] lemma bdot_e4_s0  : SS.bdot e4 s0  = false := by decide
@[simp] lemma bdot_e4_s1  : SS.bdot e4 s1  = false := by decide
@[simp] lemma bdot_e4_s2  : SS.bdot e4 s2  = false := by decide
@[simp] lemma bdot_e4_s3  : SS.bdot e4 s3  = true  := by decide
@[simp] lemma bdot_e4_s4  : SS.bdot e4 s4  = true  := by decide
@[simp] lemma bdot_e4_s5  : SS.bdot e4 s5  = true  := by decide
@[simp] lemma bdot_e4_s6  : SS.bdot e4 s6  = false := by decide
@[simp] lemma bdot_e4_s7  : SS.bdot e4 s7  = false := by decide
@[simp] lemma bdot_e4_s8  : SS.bdot e4 s8  = false := by decide
@[simp] lemma bdot_e4_s9  : SS.bdot e4 s9  = false := by decide
@[simp] lemma bdot_e4_s10 : SS.bdot e4 s10 = true  := by decide
@[simp] lemma bdot_e4_s11 : SS.bdot e4 s11 = true  := by decide
@[simp] lemma bdot_e4_s12 : SS.bdot e4 s12 = true  := by decide
@[simp] lemma bdot_e4_s13 : SS.bdot e4 s13 = false := by decide

-- bdot e5 (bit 4): s2,s3,s6,s9,s10,s13 = true, rest = false
@[simp] lemma bdot_e5_s0  : SS.bdot e5 s0  = false := by decide
@[simp] lemma bdot_e5_s1  : SS.bdot e5 s1  = false := by decide
@[simp] lemma bdot_e5_s2  : SS.bdot e5 s2  = true  := by decide
@[simp] lemma bdot_e5_s3  : SS.bdot e5 s3  = true  := by decide
@[simp] lemma bdot_e5_s4  : SS.bdot e5 s4  = false := by decide
@[simp] lemma bdot_e5_s5  : SS.bdot e5 s5  = false := by decide
@[simp] lemma bdot_e5_s6  : SS.bdot e5 s6  = true  := by decide
@[simp] lemma bdot_e5_s7  : SS.bdot e5 s7  = false := by decide
@[simp] lemma bdot_e5_s8  : SS.bdot e5 s8  = false := by decide
@[simp] lemma bdot_e5_s9  : SS.bdot e5 s9  = true  := by decide
@[simp] lemma bdot_e5_s10 : SS.bdot e5 s10 = true  := by decide
@[simp] lemma bdot_e5_s11 : SS.bdot e5 s11 = false := by decide
@[simp] lemma bdot_e5_s12 : SS.bdot e5 s12 = false := by decide
@[simp] lemma bdot_e5_s13 : SS.bdot e5 s13 = true  := by decide

-- bdot e6 (bit 5): s1,s3,s6,s8,s10,s13 = true, rest = false
@[simp] lemma bdot_e6_s0  : SS.bdot e6 s0  = false := by decide
@[simp] lemma bdot_e6_s1  : SS.bdot e6 s1  = true  := by decide
@[simp] lemma bdot_e6_s2  : SS.bdot e6 s2  = false := by decide
@[simp] lemma bdot_e6_s3  : SS.bdot e6 s3  = true  := by decide
@[simp] lemma bdot_e6_s4  : SS.bdot e6 s4  = false := by decide
@[simp] lemma bdot_e6_s5  : SS.bdot e6 s5  = false := by decide
@[simp] lemma bdot_e6_s6  : SS.bdot e6 s6  = true  := by decide
@[simp] lemma bdot_e6_s7  : SS.bdot e6 s7  = false := by decide
@[simp] lemma bdot_e6_s8  : SS.bdot e6 s8  = true  := by decide
@[simp] lemma bdot_e6_s9  : SS.bdot e6 s9  = false := by decide
@[simp] lemma bdot_e6_s10 : SS.bdot e6 s10 = true  := by decide
@[simp] lemma bdot_e6_s11 : SS.bdot e6 s11 = false := by decide
@[simp] lemma bdot_e6_s12 : SS.bdot e6 s12 = false := by decide
@[simp] lemma bdot_e6_s13 : SS.bdot e6 s13 = true  := by decide

-- bdot e7 (bit 6): s1,s2,s4,s5,s8,s9,s11,s12 = true, rest = false
@[simp] lemma bdot_e7_s0  : SS.bdot e7 s0  = false := by decide
@[simp] lemma bdot_e7_s1  : SS.bdot e7 s1  = true  := by decide
@[simp] lemma bdot_e7_s2  : SS.bdot e7 s2  = true  := by decide
@[simp] lemma bdot_e7_s3  : SS.bdot e7 s3  = false := by decide
@[simp] lemma bdot_e7_s4  : SS.bdot e7 s4  = true  := by decide
@[simp] lemma bdot_e7_s5  : SS.bdot e7 s5  = true  := by decide
@[simp] lemma bdot_e7_s6  : SS.bdot e7 s6  = false := by decide
@[simp] lemma bdot_e7_s7  : SS.bdot e7 s7  = false := by decide
@[simp] lemma bdot_e7_s8  : SS.bdot e7 s8  = true  := by decide
@[simp] lemma bdot_e7_s9  : SS.bdot e7 s9  = true  := by decide
@[simp] lemma bdot_e7_s10 : SS.bdot e7 s10 = false := by decide
@[simp] lemma bdot_e7_s11 : SS.bdot e7 s11 = true  := by decide
@[simp] lemma bdot_e7_s12 : SS.bdot e7 s12 = true  := by decide
@[simp] lemma bdot_e7_s13 : SS.bdot e7 s13 = false := by decide

/-!
### Sum expansion helpers (right-associated RHS to match Finset.sum_insert output)
-/

/-- Expand `∑ s ∈ S0, f s` to an explicit right-associated 14-term sum. -/
lemma sum_S0 {M : Type*} [AddCommMonoid M] (f : SS.BitString 7 → M) :
    ∑ s ∈ S0, f s =
      f s0 + (f s1 + (f s2 + (f s3 + (f s4 + (f s5 + (f s6 +
      (f s7 + (f s8 + (f s9 + (f s10 + (f s11 + (f s12 + f s13)))))))))))) := by
  simp only [S0,
    Finset.sum_insert (by decide : s0 ∉ ({s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13} : Finset _)),
    Finset.sum_insert (by decide : s1 ∉ ({s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13} : Finset _)),
    Finset.sum_insert (by decide : s2 ∉ ({s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13} : Finset _)),
    Finset.sum_insert (by decide : s3 ∉ ({s4,s5,s6,s7,s8,s9,s10,s11,s12,s13} : Finset _)),
    Finset.sum_insert (by decide : s4 ∉ ({s5,s6,s7,s8,s9,s10,s11,s12,s13} : Finset _)),
    Finset.sum_insert (by decide : s5 ∉ ({s6,s7,s8,s9,s10,s11,s12,s13} : Finset _)),
    Finset.sum_insert (by decide : s6 ∉ ({s7,s8,s9,s10,s11,s12,s13} : Finset _)),
    Finset.sum_insert (by decide : s7 ∉ ({s8,s9,s10,s11,s12,s13} : Finset _)),
    Finset.sum_insert (by decide : s8 ∉ ({s9,s10,s11,s12,s13} : Finset _)),
    Finset.sum_insert (by decide : s9 ∉ ({s10,s11,s12,s13} : Finset _)),
    Finset.sum_insert (by decide : s10 ∉ ({s11,s12,s13} : Finset _)),
    Finset.sum_insert (by decide : s11 ∉ ({s12,s13} : Finset _)),
    Finset.sum_insert (by decide : s12 ∉ ({s13} : Finset _)),
    Finset.sum_singleton]

/-- Expand `∑ s ∈ {s5,s6,s12,s13}, f s`. -/
lemma sum_4elt_5_6_12_13 {M : Type*} [AddCommMonoid M] (f : SS.BitString 7 → M) :
    ∑ s ∈ ({s5, s6, s12, s13} : Finset (SS.BitString 7)), f s =
      f s5 + (f s6 + (f s12 + f s13)) := by
  simp only [
    Finset.sum_insert (by decide : s5 ∉ ({s6, s12, s13} : Finset _)),
    Finset.sum_insert (by decide : s6 ∉ ({s12, s13} : Finset _)),
    Finset.sum_insert (by decide : s12 ∉ ({s13} : Finset _)),
    Finset.sum_singleton]

/-- Expand `∑ s ∈ {s4,s6,s11,s13}, f s`. -/
lemma sum_4elt_4_6_11_13 {M : Type*} [AddCommMonoid M] (f : SS.BitString 7 → M) :
    ∑ s ∈ ({s4, s6, s11, s13} : Finset (SS.BitString 7)), f s =
      f s4 + (f s6 + (f s11 + f s13)) := by
  simp only [
    Finset.sum_insert (by decide : s4 ∉ ({s6, s11, s13} : Finset _)),
    Finset.sum_insert (by decide : s6 ∉ ({s11, s13} : Finset _)),
    Finset.sum_insert (by decide : s11 ∉ ({s13} : Finset _)),
    Finset.sum_singleton]

/-!
### Symmetry lemmas for star-products
-/

lemma im_star_mul_symm (x y : ℂ) : (star x * y).im = -(star y * x).im := by
  simp only [Complex.mul_im, Complex.star_def, Complex.conj_re, Complex.conj_im]; ring

lemma re_star_mul_comm (x y : ℂ) : (star x * y).re = (star y * x).re := by
  simp only [Complex.mul_re, Complex.star_def, Complex.conj_re, Complex.conj_im]; ring

end Helpers

namespace KLSubsys

variable {c : Fin 14 → ℂ}

-- Shared simp set for diagonal (x=b0) term evaluation.
-- Key design: use simp only with explicit lemma list to avoid:
-- (1) s0..s13 unfolding before coeff_sk fires, and
-- (2) Complex.mul_re firing before star_mul_self.
-- The precomputed bdot_ej_si lemmas evaluate the sign without unfolding si.

set_option maxHeartbeats 800000 in
/-- Derive the 19-equation system (E1)–(E19) from the KL subsystem. -/
theorem toSystem (h : KLSubsys c) : System c := by
  classical
  refine {
    norm := h.norm
    z1 := ?_, z2 := ?_, z3 := ?_, z4 := ?_, z5 := ?_, z6 := ?_, z7 := ?_
    y1 := ?_
    x2_z0 := ?_, x2_ze1 := ?_, x2_ze3 := ?_
    x3_z0 := ?_, x3_ze1 := ?_, x3_ze2 := ?_
    x12_z0 := ?_, x12_ze1 := ?_
    x13_z0 := ?_, x13_ze1 := ?_ }

  · -- z1: s7..s13 negative (bit0=true)
    have hz : (diagMatElt S0 (coeff c) b0 e1).re = 0 := congrArg Complex.re h.z1
    simp only [diagMatElt, diagIntersection_b0, sum_S0, Complex.add_re,
      diagTerm, bxor_s_b0, coeff_s0, coeff_s1, coeff_s2, coeff_s3, coeff_s4, coeff_s5, coeff_s6,
      coeff_s7, coeff_s8, coeff_s9, coeff_s10, coeff_s11, coeff_s12, coeff_s13,
      star_mul_self, bdot_e1_s0, bdot_e1_s1, bdot_e1_s2, bdot_e1_s3, bdot_e1_s4, bdot_e1_s5,
      bdot_e1_s6, bdot_e1_s7, bdot_e1_s8, bdot_e1_s9, bdot_e1_s10, bdot_e1_s11, bdot_e1_s12,
      bdot_e1_s13, signMul_false, signMul_true, Complex.neg_re, Complex.ofReal_re] at hz
    have hn := h.norm
    simp only [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p] at hn ⊢
    linarith

  · -- z2: s5,s6,s12,s13 negative (bit1=true)
    have hz : (diagMatElt S0 (coeff c) b0 e2).re = 0 := congrArg Complex.re h.z2
    simp only [diagMatElt, diagIntersection_b0, sum_S0, Complex.add_re,
      diagTerm, bxor_s_b0, coeff_s0, coeff_s1, coeff_s2, coeff_s3, coeff_s4, coeff_s5, coeff_s6,
      coeff_s7, coeff_s8, coeff_s9, coeff_s10, coeff_s11, coeff_s12, coeff_s13,
      star_mul_self, bdot_e2_s0, bdot_e2_s1, bdot_e2_s2, bdot_e2_s3, bdot_e2_s4, bdot_e2_s5,
      bdot_e2_s6, bdot_e2_s7, bdot_e2_s8, bdot_e2_s9, bdot_e2_s10, bdot_e2_s11, bdot_e2_s12,
      bdot_e2_s13, signMul_false, signMul_true, Complex.neg_re, Complex.ofReal_re] at hz
    have hn := h.norm
    simp only [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p] at hn ⊢
    linarith

  · -- z3: s4,s6,s11,s13 negative (bit2=true)
    have hz : (diagMatElt S0 (coeff c) b0 e3).re = 0 := congrArg Complex.re h.z3
    simp only [diagMatElt, diagIntersection_b0, sum_S0, Complex.add_re,
      diagTerm, bxor_s_b0, coeff_s0, coeff_s1, coeff_s2, coeff_s3, coeff_s4, coeff_s5, coeff_s6,
      coeff_s7, coeff_s8, coeff_s9, coeff_s10, coeff_s11, coeff_s12, coeff_s13,
      star_mul_self, bdot_e3_s0, bdot_e3_s1, bdot_e3_s2, bdot_e3_s3, bdot_e3_s4, bdot_e3_s5,
      bdot_e3_s6, bdot_e3_s7, bdot_e3_s8, bdot_e3_s9, bdot_e3_s10, bdot_e3_s11, bdot_e3_s12,
      bdot_e3_s13, signMul_false, signMul_true, Complex.neg_re, Complex.ofReal_re] at hz
    have hn := h.norm
    simp only [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p] at hn ⊢
    linarith

  · -- z4: s3,s4,s5,s10,s11,s12 negative (bit3=true)
    have hz : (diagMatElt S0 (coeff c) b0 e4).re = 0 := congrArg Complex.re h.z4
    simp only [diagMatElt, diagIntersection_b0, sum_S0, Complex.add_re,
      diagTerm, bxor_s_b0, coeff_s0, coeff_s1, coeff_s2, coeff_s3, coeff_s4, coeff_s5, coeff_s6,
      coeff_s7, coeff_s8, coeff_s9, coeff_s10, coeff_s11, coeff_s12, coeff_s13,
      star_mul_self, bdot_e4_s0, bdot_e4_s1, bdot_e4_s2, bdot_e4_s3, bdot_e4_s4, bdot_e4_s5,
      bdot_e4_s6, bdot_e4_s7, bdot_e4_s8, bdot_e4_s9, bdot_e4_s10, bdot_e4_s11, bdot_e4_s12,
      bdot_e4_s13, signMul_false, signMul_true, Complex.neg_re, Complex.ofReal_re] at hz
    have hn := h.norm
    simp only [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p] at hn ⊢
    linarith

  · -- z5: s2,s3,s6,s9,s10,s13 negative (bit4=true)
    have hz : (diagMatElt S0 (coeff c) b0 e5).re = 0 := congrArg Complex.re h.z5
    simp only [diagMatElt, diagIntersection_b0, sum_S0, Complex.add_re,
      diagTerm, bxor_s_b0, coeff_s0, coeff_s1, coeff_s2, coeff_s3, coeff_s4, coeff_s5, coeff_s6,
      coeff_s7, coeff_s8, coeff_s9, coeff_s10, coeff_s11, coeff_s12, coeff_s13,
      star_mul_self, bdot_e5_s0, bdot_e5_s1, bdot_e5_s2, bdot_e5_s3, bdot_e5_s4, bdot_e5_s5,
      bdot_e5_s6, bdot_e5_s7, bdot_e5_s8, bdot_e5_s9, bdot_e5_s10, bdot_e5_s11, bdot_e5_s12,
      bdot_e5_s13, signMul_false, signMul_true, Complex.neg_re, Complex.ofReal_re] at hz
    have hn := h.norm
    simp only [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p] at hn ⊢
    linarith

  · -- z6: s1,s3,s6,s8,s10,s13 negative (bit5=true)
    have hz : (diagMatElt S0 (coeff c) b0 e6).re = 0 := congrArg Complex.re h.z6
    simp only [diagMatElt, diagIntersection_b0, sum_S0, Complex.add_re,
      diagTerm, bxor_s_b0, coeff_s0, coeff_s1, coeff_s2, coeff_s3, coeff_s4, coeff_s5, coeff_s6,
      coeff_s7, coeff_s8, coeff_s9, coeff_s10, coeff_s11, coeff_s12, coeff_s13,
      star_mul_self, bdot_e6_s0, bdot_e6_s1, bdot_e6_s2, bdot_e6_s3, bdot_e6_s4, bdot_e6_s5,
      bdot_e6_s6, bdot_e6_s7, bdot_e6_s8, bdot_e6_s9, bdot_e6_s10, bdot_e6_s11, bdot_e6_s12,
      bdot_e6_s13, signMul_false, signMul_true, Complex.neg_re, Complex.ofReal_re] at hz
    have hn := h.norm
    simp only [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p] at hn ⊢
    linarith

  · -- z7: s1,s2,s4,s5,s8,s9,s11,s12 negative (bit6=true)
    have hz : (diagMatElt S0 (coeff c) b0 e7).re = 0 := congrArg Complex.re h.z7
    simp only [diagMatElt, diagIntersection_b0, sum_S0, Complex.add_re,
      diagTerm, bxor_s_b0, coeff_s0, coeff_s1, coeff_s2, coeff_s3, coeff_s4, coeff_s5, coeff_s6,
      coeff_s7, coeff_s8, coeff_s9, coeff_s10, coeff_s11, coeff_s12, coeff_s13,
      star_mul_self, bdot_e7_s0, bdot_e7_s1, bdot_e7_s2, bdot_e7_s3, bdot_e7_s4, bdot_e7_s5,
      bdot_e7_s6, bdot_e7_s7, bdot_e7_s8, bdot_e7_s9, bdot_e7_s10, bdot_e7_s11, bdot_e7_s12,
      bdot_e7_s13, signMul_false, signMul_true, Complex.neg_re, Complex.ofReal_re] at hz
    have hn := h.norm
    simp only [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p] at hn ⊢
    linarith

  · -- y1: x=z=e1, pairs (si, si⊕e1), signs from bit0
    have hy : (diagMatElt S0 (coeff c) e1 e1).im = 0 := congrArg Complex.im h.y1
    have h07  : (star (c 7) * c 0).im  = -(star (c 0) * c 7).im  := im_star_mul_symm _ _
    have h18  : (star (c 8) * c 1).im  = -(star (c 1) * c 8).im  := im_star_mul_symm _ _
    have h29  : (star (c 9) * c 2).im  = -(star (c 2) * c 9).im  := im_star_mul_symm _ _
    have h310 : (star (c 10) * c 3).im = -(star (c 3) * c 10).im := im_star_mul_symm _ _
    have h411 : (star (c 11) * c 4).im = -(star (c 4) * c 11).im := im_star_mul_symm _ _
    have h512 : (star (c 12) * c 5).im = -(star (c 5) * c 12).im := im_star_mul_symm _ _
    have h613 : (star (c 13) * c 6).im = -(star (c 6) * c 13).im := im_star_mul_symm _ _
    simp only [diagMatElt, diagIntersection_e1, sum_S0, Complex.add_im,
      diagTerm, bxor_s0_e1, bxor_s1_e1, bxor_s2_e1, bxor_s3_e1, bxor_s4_e1, bxor_s5_e1,
      bxor_s6_e1, bxor_s7_e1, bxor_s8_e1, bxor_s9_e1, bxor_s10_e1, bxor_s11_e1, bxor_s12_e1,
      bxor_s13_e1,
      coeff_s0, coeff_s1, coeff_s2, coeff_s3, coeff_s4, coeff_s5, coeff_s6,
      coeff_s7, coeff_s8, coeff_s9, coeff_s10, coeff_s11, coeff_s12, coeff_s13,
      bdot_e1_s0, bdot_e1_s1, bdot_e1_s2, bdot_e1_s3, bdot_e1_s4, bdot_e1_s5, bdot_e1_s6,
      bdot_e1_s7, bdot_e1_s8, bdot_e1_s9, bdot_e1_s10, bdot_e1_s11, bdot_e1_s12, bdot_e1_s13,
      signMul_false, signMul_true, Complex.neg_im] at hy
    linarith

  · -- x2_z0: re part, z=b0 (all positive), {s5,s6,s12,s13}
    have hx : (offdiagMatElt S0 (coeff c) e2 b0).re = 0 := congrArg Complex.re h.x2_z0
    have ha : (star (c 13) * c 5).re = (star (c 5) * c 13).re := re_star_mul_comm _ _
    have hb : (star (c 12) * c 6).re = (star (c 6) * c 12).re := re_star_mul_comm _ _
    simp only [offdiagMatElt, offdiagIntersection_e2, sum_4elt_5_6_12_13, Complex.add_re,
      offdiagTerm, bdot_b0, coeff_s5, coeff_s6, coeff_s12, coeff_s13,
      bxor_s5_de2, bxor_s6_de2, bxor_s12_de2, bxor_s13_de2,
      signMul_false] at hx
    linarith

  · -- x2_ze1: im part, z=e1
    have hx : (offdiagMatElt S0 (coeff c) e2 e1).im = 0 := congrArg Complex.im h.x2_ze1
    have ha : (star (c 13) * c 5).im = -(star (c 5) * c 13).im := im_star_mul_symm _ _
    have hb : (star (c 12) * c 6).im = -(star (c 6) * c 12).im := im_star_mul_symm _ _
    simp only [offdiagMatElt, offdiagIntersection_e2, sum_4elt_5_6_12_13, Complex.add_im,
      offdiagTerm, coeff_s5, coeff_s6, coeff_s12, coeff_s13,
      bxor_s5_de2, bxor_s6_de2, bxor_s12_de2, bxor_s13_de2,
      bdot_e1_s5, bdot_e1_s6, bdot_e1_s12, bdot_e1_s13,
      signMul_false, signMul_true, Complex.neg_im] at hx
    linarith

  · -- x2_ze3: im part, z=e3
    have hx : (offdiagMatElt S0 (coeff c) e2 e3).im = 0 := congrArg Complex.im h.x2_ze3
    have ha : (star (c 13) * c 5).im = -(star (c 5) * c 13).im := im_star_mul_symm _ _
    have hb : (star (c 12) * c 6).im = -(star (c 6) * c 12).im := im_star_mul_symm _ _
    simp only [offdiagMatElt, offdiagIntersection_e2, sum_4elt_5_6_12_13, Complex.add_im,
      offdiagTerm, coeff_s5, coeff_s6, coeff_s12, coeff_s13,
      bxor_s5_de2, bxor_s6_de2, bxor_s12_de2, bxor_s13_de2,
      bdot_e3_s5, bdot_e3_s6, bdot_e3_s12, bdot_e3_s13,
      signMul_false, signMul_true, Complex.neg_im] at hx
    linarith

  · -- x3_z0: re part, z=b0, {s4,s6,s11,s13}
    have hx : (offdiagMatElt S0 (coeff c) e3 b0).re = 0 := congrArg Complex.re h.x3_z0
    have ha : (star (c 13) * c 4).re = (star (c 4) * c 13).re := re_star_mul_comm _ _
    have hb : (star (c 11) * c 6).re = (star (c 6) * c 11).re := re_star_mul_comm _ _
    simp only [offdiagMatElt, offdiagIntersection_e3, sum_4elt_4_6_11_13, Complex.add_re,
      offdiagTerm, bdot_b0, coeff_s4, coeff_s6, coeff_s11, coeff_s13,
      bxor_s4_de3, bxor_s6_de3, bxor_s11_de3, bxor_s13_de3,
      signMul_false] at hx
    linarith

  · -- x3_ze1: im part, z=e1
    have hx : (offdiagMatElt S0 (coeff c) e3 e1).im = 0 := congrArg Complex.im h.x3_ze1
    have ha : (star (c 13) * c 4).im = -(star (c 4) * c 13).im := im_star_mul_symm _ _
    have hb : (star (c 11) * c 6).im = -(star (c 6) * c 11).im := im_star_mul_symm _ _
    simp only [offdiagMatElt, offdiagIntersection_e3, sum_4elt_4_6_11_13, Complex.add_im,
      offdiagTerm, coeff_s4, coeff_s6, coeff_s11, coeff_s13,
      bxor_s4_de3, bxor_s6_de3, bxor_s11_de3, bxor_s13_de3,
      bdot_e1_s4, bdot_e1_s6, bdot_e1_s11, bdot_e1_s13,
      signMul_false, signMul_true, Complex.neg_im] at hx
    linarith

  · -- x3_ze2: im part, z=e2
    have hx : (offdiagMatElt S0 (coeff c) e3 e2).im = 0 := congrArg Complex.im h.x3_ze2
    have ha : (star (c 13) * c 4).im = -(star (c 4) * c 13).im := im_star_mul_symm _ _
    have hb : (star (c 11) * c 6).im = -(star (c 6) * c 11).im := im_star_mul_symm _ _
    simp only [offdiagMatElt, offdiagIntersection_e3, sum_4elt_4_6_11_13, Complex.add_im,
      offdiagTerm, coeff_s4, coeff_s6, coeff_s11, coeff_s13,
      bxor_s4_de3, bxor_s6_de3, bxor_s11_de3, bxor_s13_de3,
      bdot_e2_s4, bdot_e2_s6, bdot_e2_s11, bdot_e2_s13,
      signMul_false, signMul_true, Complex.neg_im] at hx
    linarith

  · -- x12_z0: re part, z=b0, {s5,s6,s12,s13}, bxor: s5↔s6, s12↔s13
    have hx : (offdiagMatElt S0 (coeff c) x12 b0).re = 0 := congrArg Complex.re h.x12_z0
    have ha : (star (c 6) * c 5).re = (star (c 5) * c 6).re := re_star_mul_comm _ _
    have hb : (star (c 13) * c 12).re = (star (c 12) * c 13).re := re_star_mul_comm _ _
    simp only [offdiagMatElt, offdiagIntersection_x12, sum_4elt_5_6_12_13, Complex.add_re,
      offdiagTerm, bdot_b0, coeff_s5, coeff_s6, coeff_s12, coeff_s13,
      bxor_s5_dx12, bxor_s6_dx12, bxor_s12_dx12, bxor_s13_dx12,
      signMul_false] at hx
    linarith

  · -- x12_ze1: re part, z=e1
    have hx : (offdiagMatElt S0 (coeff c) x12 e1).re = 0 := congrArg Complex.re h.x12_ze1
    have ha : (star (c 6) * c 5).re = (star (c 5) * c 6).re := re_star_mul_comm _ _
    have hb : (star (c 13) * c 12).re = (star (c 12) * c 13).re := re_star_mul_comm _ _
    simp only [offdiagMatElt, offdiagIntersection_x12, sum_4elt_5_6_12_13, Complex.add_re,
      offdiagTerm, coeff_s5, coeff_s6, coeff_s12, coeff_s13,
      bxor_s5_dx12, bxor_s6_dx12, bxor_s12_dx12, bxor_s13_dx12,
      bdot_e1_s5, bdot_e1_s6, bdot_e1_s12, bdot_e1_s13,
      signMul_false, signMul_true, Complex.neg_re] at hx
    linarith

  · -- x13_z0: re part, z=b0, {s4,s6,s11,s13}, bxor: s4↔s6, s11↔s13
    have hx : (offdiagMatElt S0 (coeff c) x13 b0).re = 0 := congrArg Complex.re h.x13_z0
    have ha : (star (c 6) * c 4).re = (star (c 4) * c 6).re := re_star_mul_comm _ _
    have hb : (star (c 13) * c 11).re = (star (c 11) * c 13).re := re_star_mul_comm _ _
    simp only [offdiagMatElt, offdiagIntersection_x13, sum_4elt_4_6_11_13, Complex.add_re,
      offdiagTerm, bdot_b0, coeff_s4, coeff_s6, coeff_s11, coeff_s13,
      bxor_s4_dx13, bxor_s6_dx13, bxor_s11_dx13, bxor_s13_dx13,
      signMul_false] at hx
    linarith

  · -- x13_ze1: re part, z=e1
    have hx : (offdiagMatElt S0 (coeff c) x13 e1).re = 0 := congrArg Complex.re h.x13_ze1
    have ha : (star (c 6) * c 4).re = (star (c 4) * c 6).re := re_star_mul_comm _ _
    have hb : (star (c 13) * c 11).re = (star (c 11) * c 13).re := re_star_mul_comm _ _
    simp only [offdiagMatElt, offdiagIntersection_x13, sum_4elt_4_6_11_13, Complex.add_re,
      offdiagTerm, coeff_s4, coeff_s6, coeff_s11, coeff_s13,
      bxor_s4_dx13, bxor_s6_dx13, bxor_s11_dx13, bxor_s13_dx13,
      bdot_e1_s4, bdot_e1_s6, bdot_e1_s11, bdot_e1_s13,
      signMul_false, signMul_true, Complex.neg_re] at hx
    linarith

end KLSubsys

end

end Examples.D3.NoGo.BD16_0112335
