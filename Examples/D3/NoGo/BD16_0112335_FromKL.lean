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

Order matters: indices `0..13` correspond to the order in the TeX (and hence in `System`).
-/

/-- Convenience constructor for `BitString 7`. -/
def bs (b₀ b₁ b₂ b₃ b₄ b₅ b₆ : Bool) : SS.BitString 7 :=
  ![b₀, b₁, b₂, b₃, b₄, b₅, b₆]

-- The 14 strings of `S₀(a)` for `a = (0,1,1,2,3,3,5)` (TeX §17.6).
@[simp] def s0  : SS.BitString 7 := bs false false false false false false false  -- 0000000
@[simp] def s1  : SS.BitString 7 := bs false false false false false true  true   -- 0000011
@[simp] def s2  : SS.BitString 7 := bs false false false false true  false true   -- 0000101
@[simp] def s3  : SS.BitString 7 := bs false false false true  true  true  false  -- 0001110
@[simp] def s4  : SS.BitString 7 := bs false false true  true  false false true   -- 0011001
@[simp] def s5  : SS.BitString 7 := bs false true  false true  false false true   -- 0101001
@[simp] def s6  : SS.BitString 7 := bs false true  true  false true  true  false  -- 0110110
@[simp] def s7  : SS.BitString 7 := bs true  false false false false false false  -- 1000000
@[simp] def s8  : SS.BitString 7 := bs true  false false false false true  true   -- 1000011
@[simp] def s9  : SS.BitString 7 := bs true  false false false true  false true   -- 1000101
@[simp] def s10 : SS.BitString 7 := bs true  false false true  true  true  false  -- 1001110
@[simp] def s11 : SS.BitString 7 := bs true  false true  true  false false true   -- 1011001
@[simp] def s12 : SS.BitString 7 := bs true  true  false true  false false true   -- 1101001
@[simp] def s13 : SS.BitString 7 := bs true  true  true  false true  true  false  -- 1110110

/-- The explicit support set $S_0$ as a `Finset`. -/
def S0 : Finset (SS.BitString 7) :=
  {s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13}

/-!
## Coefficient function on all bitstrings

We view the unknown amplitudes as a vector `c : Fin 14 → ℂ`, indexed in the TeX order.
The helper `coeff c` turns this into a function on all `BitString 7`, supported on `S0`.
-/

/-- Amplitudes supported on `S0` (in the TeX order), and `0` outside. -/
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

@[simp] lemma coeff_s0  (c : Fin 14 → ℂ) : coeff c s0 = c 0 := by simp [coeff]
@[simp] lemma coeff_s1  (c : Fin 14 → ℂ) : coeff c s1 = c 1 := by simp [coeff]
@[simp] lemma coeff_s2  (c : Fin 14 → ℂ) : coeff c s2 = c 2 := by simp [coeff]
@[simp] lemma coeff_s3  (c : Fin 14 → ℂ) : coeff c s3 = c 3 := by simp [coeff]
@[simp] lemma coeff_s4  (c : Fin 14 → ℂ) : coeff c s4 = c 4 := by simp [coeff]
@[simp] lemma coeff_s5  (c : Fin 14 → ℂ) : coeff c s5 = c 5 := by simp [coeff]
@[simp] lemma coeff_s6  (c : Fin 14 → ℂ) : coeff c s6 = c 6 := by simp [coeff]
@[simp] lemma coeff_s7  (c : Fin 14 → ℂ) : coeff c s7 = c 7 := by simp [coeff]
@[simp] lemma coeff_s8  (c : Fin 14 → ℂ) : coeff c s8 = c 8 := by simp [coeff]
@[simp] lemma coeff_s9  (c : Fin 14 → ℂ) : coeff c s9 = c 9 := by simp [coeff]
@[simp] lemma coeff_s10 (c : Fin 14 → ℂ) : coeff c s10 = c 10 := by simp [coeff]
@[simp] lemma coeff_s11 (c : Fin 14 → ℂ) : coeff c s11 = c 11 := by simp [coeff]
@[simp] lemma coeff_s12 (c : Fin 14 → ℂ) : coeff c s12 = c 12 := by simp [coeff]
@[simp] lemma coeff_s13 (c : Fin 14 → ℂ) : coeff c s13 = c 13 := by simp [coeff]

/-!
## KL matrix-element sums over `ℂ`

We use the shared definitions from `Examples.D3.NoGo.Common`:
`signMul`, `diagTerm`, `diagMatElt`, `offdiagTerm`, `offdiagMatElt`.
-/

/-!
## The Pauli bitstrings used in the subsystem

We represent a Pauli string by a pair `(x,z) : BitString 7 × BitString 7`.
- `xᵢ = 1` means an `X` (or `Y`) on qubit `i`.
- `zᵢ = 1` means a `Z` (or `Y`) on qubit `i`.

Single-qubit indices use `Fin 7 = {0,…,6}`, corresponding to TeX qubits `1,…,7`.
-/

abbrev i1 : Fin 7 := ⟨0, by decide⟩
abbrev i2 : Fin 7 := ⟨1, by decide⟩
abbrev i3 : Fin 7 := ⟨2, by decide⟩
abbrev i4 : Fin 7 := ⟨3, by decide⟩
abbrev i5 : Fin 7 := ⟨4, by decide⟩
abbrev i6 : Fin 7 := ⟨5, by decide⟩
abbrev i7 : Fin 7 := ⟨6, by decide⟩

/-- The all-zero bitstring (acts as the `x=0` or `z=0` component). -/
def b0 : SS.BitString 7 := fun _ => false

/-- Standard basis bitstrings `eᵢ`. -/
def e1 : SS.BitString 7 := SS.stdBasis i1
def e2 : SS.BitString 7 := SS.stdBasis i2
def e3 : SS.BitString 7 := SS.stdBasis i3
def e4 : SS.BitString 7 := SS.stdBasis i4
def e5 : SS.BitString 7 := SS.stdBasis i5
def e6 : SS.BitString 7 := SS.stdBasis i6
def e7 : SS.BitString 7 := SS.stdBasis i7

/-- `e1 + e2` over $\mathbb{F}_2$ (bitwise XOR). -/
def x12 : SS.BitString 7 := SS.bxor e1 e2

/-- `e1 + e3` over $\mathbb{F}_2$ (bitwise XOR). -/
def x13 : SS.BitString 7 := SS.bxor e1 e3

/-!
## The KL subsystem (TeX §17.6)

`KLSubsys c` asserts exactly the selected KL equations used in the TeX derivation.
-/

/-- The explicit KL subsystem on `S0` for the no-go proof.

The diagonal constraints are stated as vanishing of our `diagMatElt` sums.
The off-diagonal constraints are stated as vanishing of `offdiagMatElt`.
-/
structure KLSubsys (c : Fin 14 → ℂ) : Prop where
  /- (I) normalization -/
  norm :
      p0 c + p1 c + p2 c + p3 c + p4 c + p5 c + p6 c +
        p7 c + p8 c + p9 c + p10 c + p11 c + p12 c + p13 c = 1

  /- Diagonal KL for `Z_i` (i=1..7). -/
  z1 : diagMatElt S0 (coeff c) b0 e1 = 0
  z2 : diagMatElt S0 (coeff c) b0 e2 = 0
  z3 : diagMatElt S0 (coeff c) b0 e3 = 0
  z4 : diagMatElt S0 (coeff c) b0 e4 = 0
  z5 : diagMatElt S0 (coeff c) b0 e5 = 0
  z6 : diagMatElt S0 (coeff c) b0 e6 = 0
  z7 : diagMatElt S0 (coeff c) b0 e7 = 0

  /- Diagonal KL for `Y_1` (x=z=e1). -/
  y1 : diagMatElt S0 (coeff c) e1 e1 = 0

  /- Off-diagonal KL equations (TeX list). -/
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

We precompute the relevant intersections and XOR partners.
-/

section Helpers

/-!
### `bdot` simplifications
-/

@[simp] lemma bdot_b0 (s : SS.BitString 7) : SS.bdot b0 s = false := by
  -- the filter is empty since `b0 i = false` for all `i`
  simp [SS.bdot, b0]

/-- `bdot` against a standard basis vector just reads out the corresponding bit. -/
@[simp] lemma bdot_stdBasis (i : Fin 7) (s : SS.BitString 7) : SS.bdot (SS.stdBasis i) s = s i := by
  classical
  -- `s i` is a `Bool`, so we split into the two cases.
  cases hsi : s i <;>
    -- In both cases we compute the filter finset explicitly.
    · have hfilter :
          ((Finset.univ : Finset (Fin 7)).filter (fun j => (j == i) && s j)) =
            (if s i then {i} else (∅ : Finset (Fin 7))) := by
          ext j
          by_cases hji : j = i
          · subst hji
            simp [hsi]
          · simp [hji, hsi]
      -- Now compute the parity of the card.
      -- (In the `s i = true` case the filter has card 1; otherwise card 0.)
      simp [SS.bdot, SS.stdBasis, hfilter, hsi]

/-!
### Intersections for our fixed support
-/

@[simp] lemma diagIntersection_b0 : SS.diagIntersection S0 b0 = S0 := by
  ext s
  simp [SS.diagIntersection, b0]

/-- Flipping the first bit preserves `S0` (since `a₁ = 0`). -/
@[simp] lemma diagIntersection_e1 : SS.diagIntersection S0 e1 = S0 := by
  native_decide

/-- Off-diagonal intersection for `x = e2` (used in the `X₂` block). -/
@[simp] lemma offdiagIntersection_e2 : SS.offdiagIntersection S0 e2 = ({s5, s6, s12, s13} : Finset (SS.BitString 7)) := by
  native_decide

/-- Off-diagonal intersection for `x = e3` (used in the `X₃` block). -/
@[simp] lemma offdiagIntersection_e3 : SS.offdiagIntersection S0 e3 = ({s4, s6, s11, s13} : Finset (SS.BitString 7)) := by
  native_decide

/-- Off-diagonal intersection for `x = e1+e2` (used in the `X₁X₂` block). -/
@[simp] lemma offdiagIntersection_x12 : SS.offdiagIntersection S0 x12 = ({s5, s6, s12, s13} : Finset (SS.BitString 7)) := by
  native_decide

/-- Off-diagonal intersection for `x = e1+e3` (used in the `X₁X₃` block). -/
@[simp] lemma offdiagIntersection_x13 : SS.offdiagIntersection S0 x13 = ({s4, s6, s11, s13} : Finset (SS.BitString 7)) := by
  native_decide

/-!
### XOR partner identities

These let `simp` rewrite the shifted indices appearing in matrix-element terms.
-/

-- `x = e1` partners (used for the `Y₁` diagonal).
@[simp] lemma bxor_s0_e1  : SS.bxor s0 e1 = s7 := by native_decide
@[simp] lemma bxor_s7_e1  : SS.bxor s7 e1 = s0 := by native_decide
@[simp] lemma bxor_s1_e1  : SS.bxor s1 e1 = s8 := by native_decide
@[simp] lemma bxor_s8_e1  : SS.bxor s8 e1 = s1 := by native_decide
@[simp] lemma bxor_s2_e1  : SS.bxor s2 e1 = s9 := by native_decide
@[simp] lemma bxor_s9_e1  : SS.bxor s9 e1 = s2 := by native_decide
@[simp] lemma bxor_s3_e1  : SS.bxor s3 e1 = s10 := by native_decide
@[simp] lemma bxor_s10_e1 : SS.bxor s10 e1 = s3 := by native_decide
@[simp] lemma bxor_s4_e1  : SS.bxor s4 e1 = s11 := by native_decide
@[simp] lemma bxor_s11_e1 : SS.bxor s11 e1 = s4 := by native_decide
@[simp] lemma bxor_s5_e1  : SS.bxor s5 e1 = s12 := by native_decide
@[simp] lemma bxor_s12_e1 : SS.bxor s12 e1 = s5 := by native_decide
@[simp] lemma bxor_s6_e1  : SS.bxor s6 e1 = s13 := by native_decide
@[simp] lemma bxor_s13_e1 : SS.bxor s13 e1 = s6 := by native_decide

-- `x = e2` off-diagonal partners (`Δ(e2)` shift).
@[simp] lemma bxor_s5_de2  : SS.bxor s5 (SS.delta e2) = s13 := by native_decide
@[simp] lemma bxor_s13_de2 : SS.bxor s13 (SS.delta e2) = s5 := by native_decide
@[simp] lemma bxor_s6_de2  : SS.bxor s6 (SS.delta e2) = s12 := by native_decide
@[simp] lemma bxor_s12_de2 : SS.bxor s12 (SS.delta e2) = s6 := by native_decide

-- `x = e3` off-diagonal partners (`Δ(e3)` shift).
@[simp] lemma bxor_s4_de3  : SS.bxor s4 (SS.delta e3) = s13 := by native_decide
@[simp] lemma bxor_s13_de3 : SS.bxor s13 (SS.delta e3) = s4 := by native_decide
@[simp] lemma bxor_s6_de3  : SS.bxor s6 (SS.delta e3) = s11 := by native_decide
@[simp] lemma bxor_s11_de3 : SS.bxor s11 (SS.delta e3) = s6 := by native_decide

-- `x = e1+e2` off-diagonal partners (`Δ(x12)` shift).
@[simp] lemma bxor_s5_dx12  : SS.bxor s5 (SS.delta x12) = s6 := by native_decide
@[simp] lemma bxor_s6_dx12  : SS.bxor s6 (SS.delta x12) = s5 := by native_decide
@[simp] lemma bxor_s12_dx12 : SS.bxor s12 (SS.delta x12) = s13 := by native_decide
@[simp] lemma bxor_s13_dx12 : SS.bxor s13 (SS.delta x12) = s12 := by native_decide

-- `x = e1+e3` off-diagonal partners (`Δ(x13)` shift).
@[simp] lemma bxor_s4_dx13  : SS.bxor s4 (SS.delta x13) = s6 := by native_decide
@[simp] lemma bxor_s6_dx13  : SS.bxor s6 (SS.delta x13) = s4 := by native_decide
@[simp] lemma bxor_s11_dx13 : SS.bxor s11 (SS.delta x13) = s13 := by native_decide
@[simp] lemma bxor_s13_dx13 : SS.bxor s13 (SS.delta x13) = s11 := by native_decide

end Helpers

namespace KLSubsys

variable {c : Fin 14 → ℂ}

-- `star_mul_self` is provided by `Examples.D3.NoGo.Common`.

/-- From the KL subsystem, derive the explicit 19-equation system `System` (E1–E19). -/
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

  · -- z1
    have hz : (diagMatElt S0 (coeff c) b0 e1).re = 0 := by
      simpa using congrArg Complex.re h.z1
    have hz' :
        (p0 c + p1 c + p2 c + p3 c + p4 c + p5 c + p6 c)
          - (p7 c + p8 c + p9 c + p10 c + p11 c + p12 c + p13 c) = 0 := by
      simpa [diagMatElt, diagTerm, signMul, b0, e1, S0, diagIntersection_b0, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg] using hz
    have hn :
        (p0 c + p1 c + p2 c + p3 c + p4 c + p5 c + p6 c) +
          (p7 c + p8 c + p9 c + p10 c + p11 c + p12 c + p13 c) = 1 := by
      linarith [h.norm]
    linarith [hz', hn]

  · -- z2
    have hz : (diagMatElt S0 (coeff c) b0 e2).re = 0 := by
      simpa using congrArg Complex.re h.z2
    have hz' :
        (p0 c + p1 c + p2 c + p3 c + p4 c + p7 c + p8 c + p9 c + p10 c + p11 c)
          - (p5 c + p6 c + p12 c + p13 c) = 0 := by
      simpa [diagMatElt, diagTerm, signMul, b0, e2, S0, diagIntersection_b0, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg] using hz
    have hn :
        (p0 c + p1 c + p2 c + p3 c + p4 c + p7 c + p8 c + p9 c + p10 c + p11 c) +
          (p5 c + p6 c + p12 c + p13 c) = 1 := by
      linarith [h.norm]
    linarith [hz', hn]

  · -- z3
    have hz : (diagMatElt S0 (coeff c) b0 e3).re = 0 := by
      simpa using congrArg Complex.re h.z3
    have hz' :
        (p0 c + p1 c + p2 c + p3 c + p5 c + p7 c + p8 c + p9 c + p10 c + p12 c)
          - (p4 c + p6 c + p11 c + p13 c) = 0 := by
      simpa [diagMatElt, diagTerm, signMul, b0, e3, S0, diagIntersection_b0, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg] using hz
    have hn :
        (p0 c + p1 c + p2 c + p3 c + p5 c + p7 c + p8 c + p9 c + p10 c + p12 c) +
          (p4 c + p6 c + p11 c + p13 c) = 1 := by
      linarith [h.norm]
    linarith [hz', hn]

  · -- z4
    have hz : (diagMatElt S0 (coeff c) b0 e4).re = 0 := by
      simpa using congrArg Complex.re h.z4
    have hz' :
        (p0 c + p1 c + p2 c + p6 c + p7 c + p8 c + p9 c + p13 c)
          - (p3 c + p4 c + p5 c + p10 c + p11 c + p12 c) = 0 := by
      simpa [diagMatElt, diagTerm, signMul, b0, e4, S0, diagIntersection_b0, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg] using hz
    have hn :
        (p0 c + p1 c + p2 c + p6 c + p7 c + p8 c + p9 c + p13 c) +
          (p3 c + p4 c + p5 c + p10 c + p11 c + p12 c) = 1 := by
      linarith [h.norm]
    linarith [hz', hn]

  · -- z5
    have hz : (diagMatElt S0 (coeff c) b0 e5).re = 0 := by
      simpa using congrArg Complex.re h.z5
    have hz' :
        (p0 c + p1 c + p4 c + p5 c + p7 c + p8 c + p11 c + p12 c)
          - (p2 c + p3 c + p6 c + p9 c + p10 c + p13 c) = 0 := by
      simpa [diagMatElt, diagTerm, signMul, b0, e5, S0, diagIntersection_b0, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg] using hz
    have hn :
        (p0 c + p1 c + p4 c + p5 c + p7 c + p8 c + p11 c + p12 c) +
          (p2 c + p3 c + p6 c + p9 c + p10 c + p13 c) = 1 := by
      linarith [h.norm]
    linarith [hz', hn]

  · -- z6
    have hz : (diagMatElt S0 (coeff c) b0 e6).re = 0 := by
      simpa using congrArg Complex.re h.z6
    have hz' :
        (p0 c + p2 c + p4 c + p5 c + p7 c + p9 c + p11 c + p12 c)
          - (p1 c + p3 c + p6 c + p8 c + p10 c + p13 c) = 0 := by
      simpa [diagMatElt, diagTerm, signMul, b0, e6, S0, diagIntersection_b0, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg] using hz
    have hn :
        (p0 c + p2 c + p4 c + p5 c + p7 c + p9 c + p11 c + p12 c) +
          (p1 c + p3 c + p6 c + p8 c + p10 c + p13 c) = 1 := by
      linarith [h.norm]
    linarith [hz', hn]

  · -- z7
    have hz : (diagMatElt S0 (coeff c) b0 e7).re = 0 := by
      simpa using congrArg Complex.re h.z7
    have hz' :
        (p0 c + p3 c + p6 c + p7 c + p10 c + p13 c)
          - (p1 c + p2 c + p4 c + p5 c + p8 c + p9 c + p11 c + p12 c) = 0 := by
      simpa [diagMatElt, diagTerm, signMul, b0, e7, S0, diagIntersection_b0, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg] using hz
    have hn :
        (p0 c + p3 c + p6 c + p7 c + p10 c + p13 c) +
          (p1 c + p2 c + p4 c + p5 c + p8 c + p9 c + p11 c + p12 c) = 1 := by
      linarith [h.norm]
    linarith [hz', hn]

  · -- y1
    have hy : (diagMatElt S0 (coeff c) e1 e1).im = 0 := by
      simpa using congrArg Complex.im h.y1
    -- `simp` turns this into `-2 * (sum of imag parts) = 0`.
    have hy' :
        (-2 : ℝ) *
            ((star (c 0) * c 7).im + (star (c 1) * c 8).im + (star (c 2) * c 9).im
              + (star (c 3) * c 10).im + (star (c 4) * c 11).im + (star (c 5) * c 12).im
              + (star (c 6) * c 13).im) = 0 := by
      simpa [diagMatElt, diagTerm, signMul, e1, S0, diagIntersection_e1, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg, mul_add, add_mul, mul_assoc] using hy
    nlinarith

  · -- x2_z0
    have hx : (offdiagMatElt S0 (coeff c) e2 b0).re = 0 := by
      simpa using congrArg Complex.re h.x2_z0
    -- `simp` gives `2 * ( ... ) = 0`.
    have hx' :
        (2 : ℝ) * ((star (c 5) * c 13).re + (star (c 6) * c 12).re) = 0 := by
      simpa [offdiagMatElt, offdiagTerm, signMul, b0, e2, S0, offdiagIntersection_e2, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg, mul_add, add_mul, mul_assoc] using hx
    linarith

  · -- x2_ze1
    have hx : (offdiagMatElt S0 (coeff c) e2 e1).im = 0 := by
      simpa using congrArg Complex.im h.x2_ze1
    have hx' : (-2 : ℝ) * ((star (c 5) * c 13).im + (star (c 6) * c 12).im) = 0 := by
      simpa [offdiagMatElt, offdiagTerm, signMul, e2, e1, S0, offdiagIntersection_e2, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg, mul_add, add_mul, mul_assoc] using hx
    linarith

  · -- x2_ze3
    have hx : (offdiagMatElt S0 (coeff c) e2 e3).im = 0 := by
      simpa using congrArg Complex.im h.x2_ze3
    have hx' : (-2 : ℝ) * ((star (c 5) * c 13).im - (star (c 6) * c 12).im) = 0 := by
      simpa [offdiagMatElt, offdiagTerm, signMul, e2, e3, S0, offdiagIntersection_e2, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg, mul_add, add_mul, mul_assoc] using hx
    linarith

  · -- x3_z0
    have hx : (offdiagMatElt S0 (coeff c) e3 b0).re = 0 := by
      simpa using congrArg Complex.re h.x3_z0
    have hx' : (2 : ℝ) * ((star (c 4) * c 13).re + (star (c 6) * c 11).re) = 0 := by
      simpa [offdiagMatElt, offdiagTerm, signMul, b0, e3, S0, offdiagIntersection_e3, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg, mul_add, add_mul, mul_assoc] using hx
    linarith

  · -- x3_ze1
    have hx : (offdiagMatElt S0 (coeff c) e3 e1).im = 0 := by
      simpa using congrArg Complex.im h.x3_ze1
    have hx' : (-2 : ℝ) * ((star (c 4) * c 13).im + (star (c 6) * c 11).im) = 0 := by
      simpa [offdiagMatElt, offdiagTerm, signMul, e3, e1, S0, offdiagIntersection_e3, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg, mul_add, add_mul, mul_assoc] using hx
    linarith

  · -- x3_ze2
    have hx : (offdiagMatElt S0 (coeff c) e3 e2).im = 0 := by
      simpa using congrArg Complex.im h.x3_ze2
    have hx' : (-2 : ℝ) * ((star (c 4) * c 13).im - (star (c 6) * c 11).im) = 0 := by
      simpa [offdiagMatElt, offdiagTerm, signMul, e3, e2, S0, offdiagIntersection_e3, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg, mul_add, add_mul, mul_assoc] using hx
    linarith

  · -- x12_z0
    have hx : (offdiagMatElt S0 (coeff c) x12 b0).re = 0 := by
      simpa using congrArg Complex.re h.x12_z0
    have hx' : (2 : ℝ) * ((star (c 12) * c 13).re + (star (c 5) * c 6).re) = 0 := by
      simpa [offdiagMatElt, offdiagTerm, signMul, b0, x12, S0, offdiagIntersection_x12, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg, mul_add, add_mul, mul_assoc] using hx
    linarith

  · -- x12_ze1
    have hx : (offdiagMatElt S0 (coeff c) x12 e1).re = 0 := by
      simpa using congrArg Complex.re h.x12_ze1
    have hx' : (2 : ℝ) * ((star (c 12) * c 13).re - (star (c 5) * c 6).re) = 0 := by
      simpa [offdiagMatElt, offdiagTerm, signMul, x12, e1, S0, offdiagIntersection_x12, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg, mul_add, add_mul, mul_assoc] using hx
    linarith

  · -- x13_z0
    have hx : (offdiagMatElt S0 (coeff c) x13 b0).re = 0 := by
      simpa using congrArg Complex.re h.x13_z0
    have hx' : (2 : ℝ) * ((star (c 11) * c 13).re + (star (c 4) * c 6).re) = 0 := by
      simpa [offdiagMatElt, offdiagTerm, signMul, b0, x13, S0, offdiagIntersection_x13, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg, mul_add, add_mul, mul_assoc] using hx
    linarith

  · -- x13_ze1
    have hx : (offdiagMatElt S0 (coeff c) x13 e1).re = 0 := by
      simpa using congrArg Complex.re h.x13_ze1
    have hx' : (2 : ℝ) * ((star (c 11) * c 13).re - (star (c 4) * c 6).re) = 0 := by
      simpa [offdiagMatElt, offdiagTerm, signMul, x13, e1, S0, offdiagIntersection_x13, coeff,
        add_assoc, add_comm, add_left_comm, sub_eq_add_neg, mul_add, add_mul, mul_assoc] using hx
    linarith

end KLSubsys

end Examples.D3.NoGo.BD16_0112335

