import SS.FullKL
import SS.QSqrt23i

/-!
# Evaluation of full Knill–Laflamme matrix elements

This module provides computable evaluation functions for the diagonal and off-diagonal
KL matrix elements needed for distance-3 verification. Together with the combinatorial
intersection machinery from `SS.FullKL` and the exact arithmetic from `SS.QSqrt23i`,
this enables **fully automated** `native_decide` proofs of distance-3 KL conditions.

## Key functions

- `diagMatElt`: evaluates `∑_{s ∈ S₀ ∩ (S₀ ⊕ x)} (-1)^{z·s} · conj(c_{s⊕x}) · c_s`
- `offdiagMatElt`: evaluates `∑_{s ∈ S₀ ∩ (S₀ ⊕ Δ(x))} (-1)^{z·s} · conj(c_{s⊕Δ(x)}) · c_s`
- `allNonAutoVanish`: checks that all non-automatic weight-≤-w KL constraints evaluate to zero

## Usage

Given a `Distance3Data` bundle plus an amplitude vector `c : BitString n → QSqrt23i`,
one proves `allNonAutoVanish S₀ c w = true` by `native_decide`.

## References

- BD16_distance3.tex, Section 2.3–2.4 (intersection formulas)
- BD16_distance3.tex, Section 4 (explicit verification for (1,2,2,2,2,3,3))
-/

namespace SS

open QSqrt23i

variable {n : ℕ}

/-- Sum a function over a finset of bitstrings, accumulating a `QSqrt23i` result.
    We use `Finset.fold` with `QSqrt23i.add`, which requires commutativity
    and associativity. We provide these instances. -/

instance : Std.Commutative (α := QSqrt23i) QSqrt23i.add where
  comm a b := by
    simp only [QSqrt23i.add, QSqrt23i.mk.injEq]
    exact ⟨add_comm _ _, add_comm _ _, add_comm _ _, add_comm _ _,
           add_comm _ _, add_comm _ _, add_comm _ _, add_comm _ _⟩

instance : Std.Associative (α := QSqrt23i) QSqrt23i.add where
  assoc a b c := by
    simp only [QSqrt23i.add, QSqrt23i.mk.injEq]
    exact ⟨add_assoc _ _ _, add_assoc _ _ _, add_assoc _ _ _,
           add_assoc _ _ _, add_assoc _ _ _, add_assoc _ _ _,
           add_assoc _ _ _, add_assoc _ _ _⟩

def foldSum (S : Finset (BitString n)) (f : BitString n → QSqrt23i) : QSqrt23i :=
  S.fold QSqrt23i.add QSqrt23i.zero f

/-- One term of the diagonal matrix element sum:
    `(-1)^{z·s} · conj(c_{s⊕x}) · c_s` -/
def diagTerm (c : BitString n → QSqrt23i) (x z : BitString n) (s : BitString n) :
    QSqrt23i :=
  QSqrt23i.signMul (bdot z s) (QSqrt23i.mul (QSqrt23i.conj (c (bxor s x))) (c s))

/-- Evaluate the diagonal matrix element (without the `i^{x·z}` prefactor):
    `∑_{s ∈ S₀ ∩ (S₀ ⊕ x)} (-1)^{z·s} · conj(c_{s⊕x}) · c_s`

    This equals zero iff `⟨0_L|P(x,z)|0_L⟩ = 0` (the prefactor `i^{x·z}` is a nonzero scalar). -/
def diagMatElt (S₀ : Finset (BitString n)) (c : BitString n → QSqrt23i)
    (x z : BitString n) : QSqrt23i :=
  foldSum (diagIntersection S₀ x) (diagTerm c x z)

/-- One term of the off-diagonal matrix element sum:
    `(-1)^{z·s} · conj(c_{s⊕Δ(x)}) · c_s` -/
def offdiagTerm (c : BitString n → QSqrt23i) (x z : BitString n) (s : BitString n) :
    QSqrt23i :=
  QSqrt23i.signMul (bdot z s) (QSqrt23i.mul (QSqrt23i.conj (c (bxor s (delta x)))) (c s))

/-- Evaluate the off-diagonal matrix element (without the `i^{x·z} · (-1)^{z·x}` prefactor):
    `∑_{s ∈ S₀ ∩ (S₀ ⊕ Δ(x))} (-1)^{z·s} · conj(c_{s⊕Δ(x)}) · c_s`

    This equals zero iff `⟨0_L|P(x,z)|1_L⟩ = 0`. -/
def offdiagMatElt (S₀ : Finset (BitString n)) (c : BitString n → QSqrt23i)
    (x z : BitString n) : QSqrt23i :=
  foldSum (offdiagIntersection S₀ x) (offdiagTerm c x z)

/-- Check whether a single Pauli string `P` has vanishing KL matrix elements.
    For non-automatic constraints:
    - Diagonal (odd zWt): check diagMatElt = 0
    - Off-diagonal: check offdiagMatElt = 0
    Returns `true` if the constraint is satisfied (either automatic or evaluates to 0). -/
def klConstraintOK (S₀ : Finset (BitString n)) (c : BitString n → QSqrt23i)
    (P : PauliString n) : Bool :=
  -- Diagonal part
  (diagIsAutomatic S₀ P || (diagMatElt S₀ c P.x P.z).isZero) &&
  -- Off-diagonal part
  (offdiagIsAutomatic S₀ P || (offdiagMatElt S₀ c P.x P.z).isZero)

/-- Check that ALL Pauli strings of weight ≤ `w` satisfy their KL constraints.
    This is the main Layer 2 verification predicate.
    Returns `true` iff every non-automatic constraint evaluates to zero. -/
def allKLSatisfied (S₀ : Finset (BitString n)) (c : BitString n → QSqrt23i)
    (w : ℕ) : Bool :=
  ((Finset.univ : Finset (PauliString n)).filter (fun P => P.wt ≤ w)).fold
    (· && ·) true (fun P => klConstraintOK S₀ c P)

/-- Prop version: all weight-≤-w KL constraints are satisfied. -/
def AllKLSatisfied (S₀ : Finset (BitString n)) (c : BitString n → QSqrt23i)
    (w : ℕ) : Prop :=
  allKLSatisfied S₀ c w = true

instance (S₀ : Finset (BitString n)) (c : BitString n → QSqrt23i) (w : ℕ) :
    Decidable (AllKLSatisfied S₀ c w) :=
  inferInstanceAs (Decidable (_ = true))

end SS
