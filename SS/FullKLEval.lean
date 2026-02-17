import SS.FullKL
import SS.QSqrt235i

/-!
# Evaluation of full Knill–Laflamme matrix elements

This module provides **computable** evaluation functions for the diagonal and off-diagonal
Knill–Laflamme (KL) matrix elements needed for distance-3 verification.

Together with the combinatorial intersection machinery from `SS.FullKL` and the exact
arithmetic from `SS.QSqrt235i`, this enables fully automated `native_decide` proofs of
weight-≤2 KL conditions for BD₁₆ examples.

## Key functions

- `diagMatElt`: evaluates
  `∑_{s ∈ S₀ ∩ (S₀ ⊕ x)} (-1)^{z·s} · conj(c_{s⊕x}) · c_s`
- `offdiagMatElt`: evaluates
  `∑_{s ∈ S₀ ∩ (S₀ ⊕ Δ(x))} (-1)^{z·s} · conj(c_{s⊕Δ(x)}) · c_s`
- `allKLSatisfied`: checks all weight-≤w Pauli constraints

## Notes

We use `Finset.fold` for summation, which requires commutativity and associativity
instances for `QSqrt235i.add`. These are provided in this module.

## References

- BD16_distance3.tex, Sections 2.3–2.4 (intersection formulas)
- BD16_distance3.tex, explicit examples in later sections
-/

namespace SS

open QSqrt235i

variable {n : ℕ}

-- Instances needed for `Finset.fold` over our custom scalar type.

instance : Std.Commutative (α := QSqrt235i) QSqrt235i.add where
  comm a b := by
    -- Reduce to commutativity of the embedded `QSqrt23i` coefficients.
    simp only [QSqrt235i.add, QSqrt235i.mk.injEq]
    constructor
    · change QSqrt23i.add a.u b.u = QSqrt23i.add b.u a.u
      simp [QSqrt23i.add, add_comm]
    · change QSqrt23i.add a.v b.v = QSqrt23i.add b.v a.v
      simp [QSqrt23i.add, add_comm]

instance : Std.Associative (α := QSqrt235i) QSqrt235i.add where
  assoc a b c := by
    -- Reduce to associativity of the embedded `QSqrt23i` coefficients.
    simp only [QSqrt235i.add, QSqrt235i.mk.injEq]
    constructor
    · change QSqrt23i.add (QSqrt23i.add a.u b.u) c.u = QSqrt23i.add a.u (QSqrt23i.add b.u c.u)
      simp [QSqrt23i.add, add_assoc]
    · change QSqrt23i.add (QSqrt23i.add a.v b.v) c.v = QSqrt23i.add a.v (QSqrt23i.add b.v c.v)
      simp [QSqrt23i.add, add_assoc]

/-- Sum a function over a finset of bitstrings, accumulating a `QSqrt235i` result. -/
def foldSum (S : Finset (BitString n)) (f : BitString n → QSqrt235i) : QSqrt235i :=
  S.fold QSqrt235i.add QSqrt235i.zero f

/-- One term of the diagonal matrix element sum:
`(-1)^{z·s} · conj(c_{s⊕x}) · c_s`. -/
def diagTerm (c : BitString n → QSqrt235i) (x z : BitString n) (s : BitString n) :
    QSqrt235i :=
  QSqrt235i.signMul (bdot z s) (QSqrt235i.mul (QSqrt235i.conj (c (bxor s x))) (c s))

/-- Evaluate the diagonal matrix element (without the `i^{x·z}` prefactor):

`∑_{s ∈ S₀ ∩ (S₀ ⊕ x)} (-1)^{z·s} · conj(c_{s⊕x}) · c_s`.

This equals zero iff `⟨0_L|P(x,z)|0_L⟩ = 0` (the prefactor `i^{x·z}` is a nonzero scalar).
-/
def diagMatElt (S₀ : Finset (BitString n)) (c : BitString n → QSqrt235i)
    (x z : BitString n) : QSqrt235i :=
  foldSum (diagIntersection S₀ x) (diagTerm c x z)

/-- One term of the off-diagonal matrix element sum:
`(-1)^{z·s} · conj(c_{s⊕Δ(x)}) · c_s`. -/
def offdiagTerm (c : BitString n → QSqrt235i) (x z : BitString n) (s : BitString n) :
    QSqrt235i :=
  QSqrt235i.signMul (bdot z s)
    (QSqrt235i.mul (QSqrt235i.conj (c (bxor s (delta x)))) (c s))

/-- Evaluate the off-diagonal matrix element (without the `i^{x·z} · (-1)^{z·x}` prefactor):

`∑_{s ∈ S₀ ∩ (S₀ ⊕ Δ(x))} (-1)^{z·s} · conj(c_{s⊕Δ(x)}) · c_s`.

This equals zero iff `⟨0_L|P(x,z)|1_L⟩ = 0`.
-/
def offdiagMatElt (S₀ : Finset (BitString n)) (c : BitString n → QSqrt235i)
    (x z : BitString n) : QSqrt235i :=
  foldSum (offdiagIntersection S₀ x) (offdiagTerm c x z)

/-- Check whether a single Pauli string `P` satisfies its KL constraints.

Returns `true` if the constraint is satisfied (either automatic or evaluates to 0).
-/
def klConstraintOK (S₀ : Finset (BitString n)) (c : BitString n → QSqrt235i)
    (P : PauliString n) : Bool :=
  -- Diagonal part
  (diagIsAutomatic S₀ P || (diagMatElt S₀ c P.x P.z).isZero) &&
  -- Off-diagonal part
  (offdiagIsAutomatic S₀ P || (offdiagMatElt S₀ c P.x P.z).isZero)

/-- Check that ALL Pauli strings of weight ≤ `w` satisfy their KL constraints.

This is the main Layer 2 verification predicate.
Returns `true` iff every non-automatic constraint evaluates to zero.
-/
def allKLSatisfied (S₀ : Finset (BitString n)) (c : BitString n → QSqrt235i)
    (w : ℕ) : Bool :=
  ((Finset.univ : Finset (PauliString n)).filter (fun P => P.wt ≤ w)).fold
    (· && ·) true (fun P => klConstraintOK S₀ c P)

/-- Prop version: all weight-≤w KL constraints are satisfied. -/
def AllKLSatisfied (S₀ : Finset (BitString n)) (c : BitString n → QSqrt235i)
    (w : ℕ) : Prop :=
  allKLSatisfied S₀ c w = true

instance (S₀ : Finset (BitString n)) (c : BitString n → QSqrt235i) (w : ℕ) :
    Decidable (AllKLSatisfied S₀ c w) :=
  inferInstanceAs (Decidable (_ = true))

end SS
