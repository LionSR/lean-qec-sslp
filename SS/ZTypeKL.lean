import Mathlib.Data.Rat.Defs
import Mathlib.Data.Fintype.Sets

import SS.Basic

open scoped BigOperators

namespace SS

section ZTypeKL

/-!
## Z-type Knill–Laflamme conditions (Eq. 6 in 2510.20728)

These conditions enforce that the expectation value ⟨Zᵢ⟩ is identical across all logical
states.
-/

variable {n : ℕ}

/-- The sign (-1)^{xᵢ} = 1 - 2xᵢ as an integer -/
def zSign (s : BitString n) (i : Fin n) : ℤ := if s i then -1 else 1

/-- Z expectation: ∑_{x ∈ supp} p(x) · (1 - 2xᵢ) -/
def zExpectation (supp : Finset (BitString n)) (p : BitString n → ℚ) (i : Fin n) : ℚ :=
  ∑ x ∈ supp, p x * zSign x i

/-- Z-type KL: all logical states have the same ⟨Zᵢ⟩ expectation -/
def ZTypeKL (K : ℕ) (supp : Fin K → Finset (BitString n))
    (prob : Fin K → BitString n → ℚ) : Prop :=
  ∀ i : Fin n, ∀ j k : Fin K,
    zExpectation (supp j) (prob j) i = zExpectation (supp k) (prob k) i

/-- Z-type KL with explicit target expectation values -/
def ZTypeKL' (K : ℕ) (supp : Fin K → Finset (BitString n))
    (prob : Fin K → BitString n → ℚ) (target : Fin n → ℚ) : Prop :=
  ∀ j : Fin K, ∀ i : Fin n, zExpectation (supp j) (prob j) i = target i

theorem ZTypeKL_iff_exists_target (K : ℕ) [NeZero K]
    (supp : Fin K → Finset (BitString n)) (prob : Fin K → BitString n → ℚ) :
    ZTypeKL (n := n) K supp prob ↔ ∃ target : Fin n → ℚ, ZTypeKL' (n := n) K supp prob target := by
  constructor
  · intro h
    have hK : 0 < K := Nat.pos_of_ne_zero (NeZero.ne K)
    let j0 : Fin K := ⟨0, hK⟩
    refine ⟨fun i => zExpectation (supp j0) (prob j0) i, ?_⟩
    intro j i
    simpa using h i j j0
  · rintro ⟨target, htarget⟩
    intro i j k
    calc
      zExpectation (supp j) (prob j) i = target i := htarget j i
      _ = zExpectation (supp k) (prob k) i := (htarget k i).symm

/-- Probability distribution is normalized on support -/
def IsNormalizedProb (supp : Finset (BitString n)) (p : BitString n → ℚ) : Prop :=
  (∀ x, x ∉ supp → p x = 0) ∧ (∀ x ∈ supp, 0 ≤ p x) ∧ (∑ x ∈ supp, p x = 1)

/-- Full SSLP setup: supports are residue classes satisfying Z-type KL -/
def SSLPSetup (n K : ℕ) (m : ℕ) [NeZero m]
    (a : Fin n → ZMod m) (S : Fin K → ZMod m)
    (prob : Fin K → BitString n → ℚ) : Prop :=
  by
    classical
    let supp : Fin K → Finset (BitString n) := fun j => (Sk (m := m) a (S j)).toFinset
    exact (∀ j, IsNormalizedProb (n := n) (supp j) (prob j)) ∧ ZTypeKL (n := n) K supp prob

end ZTypeKL

end SS
