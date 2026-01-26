import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Finset.Lattice.Basic
import Mathlib.Algebra.BigOperators.Fin

import SS.BitString

open scoped BigOperators

namespace SS

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

end SS
