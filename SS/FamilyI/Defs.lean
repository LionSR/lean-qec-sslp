import Mathlib.LinearAlgebra.Matrix.Notation

import SS.Basic
import SS.FixedWeightSlice

/-!
# Analytical Family I (definitions)

This file contains the *data definitions* for Family I from `2510.20728/CDQC.tex`:
weights, residues, supports, probabilities, and the target Z expectations.
-/

namespace SS
namespace FamilyI

/-- Family-I weights for length `n+1`: `(1,...,1,m-n)` in `ZMod m`. -/
def aFamilyI (n m : ℕ) [NeZero m] : Fin (n + 1) → ZMod m :=
  fun i => if i = Fin.last n then (m - n : ℕ) else 1

/-- Family-I residue list `(0,s)` in `ZMod m`. -/
def SFamilyI {m : ℕ} (s : ℕ) : Fin 2 → ZMod m := ![(0 : ZMod m), (s : ZMod m)]

/-- All-zero bitstring. -/
def zeroString (n : ℕ) : BitString n := fun _ => false

/-- All-one bitstring. -/
def oneString (n : ℕ) : BitString n := fun _ => true

/-- `C0 = {0^(n+1), 1^(n+1)}`. -/
def supp0 (n : ℕ) : Finset (BitString (n + 1)) := {zeroString (n + 1), oneString (n + 1)}

/-- The `A_s` slice: last bit `0`, prefix has Hamming weight `s`. -/
def As (n : ℕ) (s : ℕ) : Finset (BitString (n + 1)) :=
  slice n s false

/-- The `B_t` slice: last bit `1`, prefix has Hamming weight `t`. -/
def Bt (n : ℕ) (t : ℕ) : Finset (BitString (n + 1)) :=
  slice n t true

/-- Family-I support for the nontrivial logical state, as `A_s ∪ B_t`.

Here `t = n + s - m` (see CDQC.tex, Methods line 668 with `n` replaced by `n+1`).
-/
def supp1 (n m s : ℕ) : Finset (BitString (n + 1)) :=
  As n s ∪ Bt n (n + s - m)

/-- Probability on `C0`: `p(0)=1-s/m`, `p(1)=s/m`. -/
def prob0 (n m s : ℕ) : BitString (n + 1) → ℚ :=
  fun x =>
    if x = zeroString (n + 1) then (1 : ℚ) - (s : ℚ) / m
    else if x = oneString (n + 1) then (s : ℚ) / m
    else 0

/-- Probability on `A_s ∪ B_t`:
* uniform on `A_s` with total mass `(m-s)/m`
* uniform on `B_t` with total mass `s/m`.
-/
def prob1 (n m s : ℕ) : BitString (n + 1) → ℚ :=
  fun x =>
    if _ : x ∈ As n s then
      ((m - s : ℚ) / m) / (Nat.choose n s)
    else if _ : x ∈ Bt n (n + s - m) then
      ((s : ℚ) / m) / (Nat.choose n (n + s - m))
    else 0

/-- Target Z-expectation value: constant `1 - 2s/m` at every site. -/
def targetZ (n m s : ℕ) : Fin (n + 1) → ℚ := fun _ => (1 : ℚ) - (2 * (s : ℚ)) / m

end FamilyI
end SS
