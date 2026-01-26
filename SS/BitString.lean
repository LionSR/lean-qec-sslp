import Mathlib.Data.Nat.Notation
import Mathlib.Data.Nat.Notation
import Mathlib.Data.Bool.Basic

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

end SS
