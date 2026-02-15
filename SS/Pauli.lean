import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Bool.Basic

import SS.BitString
import SS.ResidueShiftScreen

/-!
# Pauli strings and bitstring arithmetic

This module introduces:
- **Bitstring XOR** (`bxor`), inner product mod 2 (`bdot`), and Hamming weight (`hammingWt`).
- **Pauli strings** on `n` qubits, represented as pairs `(x, z) : BitString n × BitString n`
  via the standard convention:
    (xᵢ, zᵢ) = (0,0) ↦ I,  (1,0) ↦ X,  (0,1) ↦ Z,  (1,1) ↦ Y.
- Counting functions: `pauliWt` (Pauli weight), `numY` (number of Y-factors), `zWt`
  (weight of the z-component, i.e. number of Z or Y factors).

These definitions are general-purpose and independent of any particular code construction.
They will be used by the Full-KL modules to state distance-≥-3 Knill–Laflamme conditions.
-/

namespace SS

open scoped BigOperators

section BitstringOps

variable {n : ℕ}

/-- Bitwise XOR of two bitstrings. -/
def bxor (s t : BitString n) : BitString n := fun i => xor (s i) (t i)

instance : HXor (BitString n) (BitString n) (BitString n) := ⟨bxor⟩

@[simp] lemma bxor_apply (s t : BitString n) (i : Fin n) :
    bxor s t i = xor (s i) (t i) := rfl

@[simp] lemma hxor_eq_bxor (s t : BitString n) : s ^^^ t = bxor s t := rfl

@[simp] lemma bxor_self (s : BitString n) : bxor s s = fun _ => false := by
  funext i; simp [bxor]

@[simp] lemma bxor_comm (s t : BitString n) : bxor s t = bxor t s := by
  funext i; simp [bxor, Bool.xor_comm]

@[simp] lemma bxor_assoc (s t u : BitString n) :
    bxor (bxor s t) u = bxor s (bxor t u) := by
  funext i; simp [bxor]

/-- XOR with zero (all-false) is the identity. -/
@[simp] lemma bxor_zero (s : BitString n) :
    bxor s (fun _ => false) = s := by
  funext i; simp [bxor]

@[simp] lemma zero_bxor (s : BitString n) :
    bxor (fun _ => false) s = s := by
  funext i; simp [bxor]

/-- XOR with all-ones is complement. -/
lemma bxor_ones (s : BitString n) :
    bxor s (fun _ => true) = complement s := by
  funext i; simp [bxor, complement]

/-- The all-ones bitstring (1^n). -/
def ones (n : ℕ) : BitString n := fun _ => true

@[simp] lemma ones_apply (i : Fin n) : ones n i = true := rfl

lemma complement_eq_bxor_ones (s : BitString n) :
    complement s = bxor s (ones n) := by
  funext i; simp [complement, bxor, ones]

/-- Inner product mod 2: the parity of positions where both bits are true.
    Returns `true` when the count is odd. -/
def bdot (s t : BitString n) : Bool :=
  ((Finset.univ : Finset (Fin n)).filter (fun i => s i && t i)).card % 2 == 1

/-- Hamming weight: number of `true` entries. -/
def hammingWt (s : BitString n) : ℕ :=
  ((Finset.univ : Finset (Fin n)).filter (fun i => s i = true)).card

/-- The standard basis bitstring `eᵢ` (all zeros except position `i`). -/
def stdBasis (i : Fin n) : BitString n := fun j => j == i

@[simp] lemma stdBasis_apply_self (i : Fin n) : stdBasis i i = true := by
  simp [stdBasis]

@[simp] lemma stdBasis_apply_ne {i j : Fin n} (h : j ≠ i) : stdBasis i j = false := by
  simp [stdBasis, h]

/-- `flipBit` from ResidueShiftScreen is the same as XOR with a standard basis vector. -/
lemma flipBit_eq_bxor_stdBasis (s : BitString n) (i : Fin n) :
    flipBit s i = bxor s (stdBasis i) := by
  funext j
  by_cases h : j = i
  · subst h; simp [flipBit, bxor, stdBasis]
  · simp only [flipBit, h, ↓reduceIte, bxor, stdBasis]
    rw [beq_eq_false_iff_ne.mpr h, Bool.xor_false]

end BitstringOps

section PauliString

variable {n : ℕ}

/-- A Pauli string on `n` qubits, represented as a pair `(x, z)` of bitstrings.
    Per-qubit: `(0,0) ↦ I`, `(1,0) ↦ X`, `(0,1) ↦ Z`, `(1,1) ↦ Y`. -/
structure PauliString (n : ℕ) where
  x : BitString n
  z : BitString n
deriving DecidableEq

/-- Pauli weight: number of non-identity tensor factors. -/
def PauliString.wt (P : PauliString n) : ℕ :=
  ((Finset.univ : Finset (Fin n)).filter (fun i => P.x i || P.z i)).card

/-- Number of Y-factors: positions where both `xᵢ = 1` and `zᵢ = 1`. -/
def PauliString.numY (P : PauliString n) : ℕ :=
  ((Finset.univ : Finset (Fin n)).filter (fun i => P.x i && P.z i)).card

/-- Weight of the z-component: number of positions where `zᵢ = true`.
    Equals the number of Z or Y factors. -/
def PauliString.zWt (P : PauliString n) : ℕ :=
  hammingWt P.z

/-- Whether `wt(z)` is odd. Under the complementary convention, odd `wt(z)` forces
    the diagonal KL constraint `⟨0_L|P|0_L⟩ = 0`. -/
def PauliString.zWtIsOdd (P : PauliString n) : Bool :=
  hammingWt P.z % 2 == 1

-- Convenient constructors for common single- and two-qubit Paulis

/-- Single-qubit X on qubit `i`. -/
def pauliX (i : Fin n) : PauliString n :=
  ⟨stdBasis i, fun _ => false⟩

/-- Single-qubit Z on qubit `i`. -/
def pauliZ (i : Fin n) : PauliString n :=
  ⟨fun _ => false, stdBasis i⟩

/-- Single-qubit Y on qubit `i`. -/
def pauliY (i : Fin n) : PauliString n :=
  ⟨stdBasis i, stdBasis i⟩

/-- Two-qubit Pauli: specify per-qubit type at positions `i` and `j` (as `(x-bit, z-bit)`),
    everything else is identity. -/
def pauli2 (i j : Fin n) (ti tj : Bool × Bool) : PauliString n :=
  { x := fun k => if k = i then ti.1 else if k = j then tj.1 else false
    z := fun k => if k = i then ti.2 else if k = j then tj.2 else false }

end PauliString

end SS
