import SS.QSqrt23i

/-!
# The number field ℚ(√2, √3, √5, i)

This module extends `SS.QSqrt23i` (which implements ℚ(√2, √3, i)) by adjoining √5.

We represent an element as

    u + v · √5

where `u v : QSqrt23i`.  This is sufficient for all BD₁₆ (m = 8) distance-3 examples in
`BD16_distance3.tex`, since the remaining analytic solutions involve √10 = √2·√5.

The implementation is designed for **computable exact arithmetic** so that full
Knill–Laflamme constraints can be discharged by `native_decide`.
-/

namespace SS

/-- An element of ℚ(√2, √3, √5, i), represented as `u + v·√5` with `u v : QSqrt23i`. -/
structure QSqrt235i where
  u : QSqrt23i
  v : QSqrt23i
deriving DecidableEq

namespace QSqrt235i

/-- The zero element. -/
def zero : QSqrt235i := ⟨0, 0⟩

instance : Zero QSqrt235i := ⟨zero⟩

/-- The one element. -/
def one : QSqrt235i := ⟨1, 0⟩

instance : One QSqrt235i := ⟨one⟩

/-- Embed a rational number. -/
def ofRat (q : ℚ) : QSqrt235i := ⟨QSqrt23i.ofRat q, 0⟩

/-- The imaginary unit i. -/
def I : QSqrt235i := ⟨QSqrt23i.I, 0⟩

/-- √2 as an element. -/
def sqrt2 : QSqrt235i := ⟨QSqrt23i.sqrt2, 0⟩

/-- √3 as an element. -/
def sqrt3 : QSqrt235i := ⟨QSqrt23i.sqrt3, 0⟩

/-- √6 = √2 · √3 as an element. -/
def sqrt6 : QSqrt235i := ⟨QSqrt23i.sqrt6, 0⟩

/-- √5 as an element. -/
def sqrt5 : QSqrt235i := ⟨0, 1⟩

/-- √10 = √2 · √5 as an element. -/
def sqrt10 : QSqrt235i := ⟨0, QSqrt23i.sqrt2⟩

/-- √15 = √3 · √5 as an element. -/
def sqrt15 : QSqrt235i := ⟨0, QSqrt23i.sqrt3⟩

/-- √30 = √6 · √5 as an element. -/
def sqrt30 : QSqrt235i := ⟨0, QSqrt23i.sqrt6⟩

/-- Addition. -/
def add (x y : QSqrt235i) : QSqrt235i := ⟨x.u + y.u, x.v + y.v⟩

instance : Add QSqrt235i := ⟨add⟩

/-- Negation. -/
def neg (x : QSqrt235i) : QSqrt235i := ⟨-x.u, -x.v⟩

instance : Neg QSqrt235i := ⟨neg⟩

/-- Subtraction. -/
def sub (x y : QSqrt235i) : QSqrt235i := add x (neg y)

instance : Sub QSqrt235i := ⟨sub⟩

/-- Scalar multiplication by a rational. -/
def smul (q : ℚ) (x : QSqrt235i) : QSqrt235i := ⟨q • x.u, q • x.v⟩

instance : HSMul ℚ QSqrt235i QSqrt235i := ⟨smul⟩

/-- Multiplication in ℚ(√2, √3, √5, i).

If `x = u₁ + v₁√5` and `y = u₂ + v₂√5` then

`x*y = (u₁u₂ + 5 v₁v₂) + (u₁v₂ + v₁u₂)√5`.
-/
def mul (x y : QSqrt235i) : QSqrt235i :=
  let uPart : QSqrt23i := x.u * y.u + (5 : ℚ) • (x.v * y.v)
  let vPart : QSqrt23i := x.u * y.v + x.v * y.u
  ⟨uPart, vPart⟩

instance : Mul QSqrt235i := ⟨mul⟩

/-- Complex conjugation: conjugate the `QSqrt23i` coefficients (√5 is real). -/
def conj (x : QSqrt235i) : QSqrt235i := ⟨QSqrt23i.conj x.u, QSqrt23i.conj x.v⟩

/-- Check if an element is zero (all coefficients vanish). -/
def isZero (x : QSqrt235i) : Bool := x.u.isZero && x.v.isZero

/-- Multiply by (-1)^b. -/
def signMul (b : Bool) (x : QSqrt235i) : QSqrt235i := if b then neg x else x

/-- Multiply by i^n for small n. -/
def imulPow (n : ℕ) (x : QSqrt235i) : QSqrt235i :=
  match n % 4 with
  | 0 => x
  | 1 => mul I x
  | 2 => neg x
  | 3 => mul (neg I) x
  | _ => x  -- unreachable

end QSqrt235i

end SS
