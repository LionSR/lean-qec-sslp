import Mathlib.Data.Rat.Defs

/-!
# The number field ℚ(√2, √3, i)

An element of ℚ(√2, √3, i) is represented as an 8-tuple of rationals:

    (a₀ + a₁√2 + a₂√3 + a₃√6) + (b₀ + b₁√2 + b₂√3 + b₃√6) · i

where aₖ, bₖ ∈ ℚ.

This field is large enough for many BD₁₆ (m = 8) transversal T-gate codes,
since the 8th roots of unity involve √2 and i.
Some distance-3 BD16 examples also involve √5 (via √10); those are handled
in `SS.QSqrt235i`.

The module provides computable ring operations and decidable equality, enabling
`native_decide` verification of Knill–Laflamme matrix element identities.
-/

namespace SS

/-- An element of ℚ(√2, √3, i), represented as 8 rational coefficients.
    `re₀ + re₁·√2 + re₂·√3 + re₃·√6 + (im₀ + im₁·√2 + im₂·√3 + im₃·√6)·i` -/
structure QSqrt23i where
  re₀ : ℚ  -- coefficient of 1
  re₁ : ℚ  -- coefficient of √2
  re₂ : ℚ  -- coefficient of √3
  re₃ : ℚ  -- coefficient of √6
  im₀ : ℚ  -- coefficient of i
  im₁ : ℚ  -- coefficient of i√2
  im₂ : ℚ  -- coefficient of i√3
  im₃ : ℚ  -- coefficient of i√6
deriving DecidableEq

namespace QSqrt23i

/-- The zero element. -/
def zero : QSqrt23i := ⟨0, 0, 0, 0, 0, 0, 0, 0⟩

instance : Zero QSqrt23i := ⟨zero⟩

/-- The one element. -/
def one : QSqrt23i := ⟨1, 0, 0, 0, 0, 0, 0, 0⟩

instance : One QSqrt23i := ⟨one⟩

/-- Embed a rational number. -/
def ofRat (q : ℚ) : QSqrt23i := ⟨q, 0, 0, 0, 0, 0, 0, 0⟩

/-- The imaginary unit i. -/
def I : QSqrt23i := ⟨0, 0, 0, 0, 1, 0, 0, 0⟩

/-- √2 as an element. -/
def sqrt2 : QSqrt23i := ⟨0, 1, 0, 0, 0, 0, 0, 0⟩

/-- √3 as an element. -/
def sqrt3 : QSqrt23i := ⟨0, 0, 1, 0, 0, 0, 0, 0⟩

/-- √6 = √2 · √3 as an element. -/
def sqrt6 : QSqrt23i := ⟨0, 0, 0, 1, 0, 0, 0, 0⟩

/-- Addition. -/
def add (x y : QSqrt23i) : QSqrt23i :=
  ⟨x.re₀ + y.re₀, x.re₁ + y.re₁, x.re₂ + y.re₂, x.re₃ + y.re₃,
   x.im₀ + y.im₀, x.im₁ + y.im₁, x.im₂ + y.im₂, x.im₃ + y.im₃⟩

instance : Add QSqrt23i := ⟨add⟩

/-- Negation. -/
def neg (x : QSqrt23i) : QSqrt23i :=
  ⟨-x.re₀, -x.re₁, -x.re₂, -x.re₃, -x.im₀, -x.im₁, -x.im₂, -x.im₃⟩

instance : Neg QSqrt23i := ⟨neg⟩

/-- Subtraction. -/
def sub (x y : QSqrt23i) : QSqrt23i := add x (neg y)

instance : Sub QSqrt23i := ⟨sub⟩

/-- Multiply two elements of ℚ(√2, √3) (the real subalgebra).
    Given (a₀ + a₁√2 + a₂√3 + a₃√6)(c₀ + c₁√2 + c₂√3 + c₃√6),
    using √2² = 2, √3² = 3, √6² = 6, √2·√3 = √6, √2·√6 = 2√3, √3·√6 = 3√2. -/
private def mulReal (a₀ a₁ a₂ a₃ c₀ c₁ c₂ c₃ : ℚ) : ℚ × ℚ × ℚ × ℚ :=
  ( a₀*c₀ + 2*a₁*c₁ + 3*a₂*c₂ + 6*a₃*c₃,   -- coefficient of 1
    a₀*c₁ + a₁*c₀ + 3*a₂*c₃ + 3*a₃*c₂,       -- coefficient of √2
    a₀*c₂ + a₂*c₀ + 2*a₁*c₃ + 2*a₃*c₁,       -- coefficient of √3
    a₀*c₃ + a₃*c₀ + a₁*c₂ + a₂*c₁ )           -- coefficient of √6

/-- Multiplication in ℚ(√2, √3, i).
    (r₁ + im₁·i)(r₂ + im₂·i) = (r₁r₂ - im₁im₂) + (r₁im₂ + im₁r₂)·i
    where each product is computed via `mulReal`. -/
def mul (x y : QSqrt23i) : QSqrt23i :=
  let r1r2 := mulReal x.re₀ x.re₁ x.re₂ x.re₃ y.re₀ y.re₁ y.re₂ y.re₃
  let i1i2 := mulReal x.im₀ x.im₁ x.im₂ x.im₃ y.im₀ y.im₁ y.im₂ y.im₃
  let r1i2 := mulReal x.re₀ x.re₁ x.re₂ x.re₃ y.im₀ y.im₁ y.im₂ y.im₃
  let i1r2 := mulReal x.im₀ x.im₁ x.im₂ x.im₃ y.re₀ y.re₁ y.re₂ y.re₃
  ⟨r1r2.1 - i1i2.1, r1r2.2.1 - i1i2.2.1, r1r2.2.2.1 - i1i2.2.2.1, r1r2.2.2.2 - i1i2.2.2.2,
   r1i2.1 + i1r2.1, r1i2.2.1 + i1r2.2.1, r1i2.2.2.1 + i1r2.2.2.1, r1i2.2.2.2 + i1r2.2.2.2⟩

instance : Mul QSqrt23i := ⟨mul⟩

/-- Complex conjugation: negate the imaginary part. -/
def conj (x : QSqrt23i) : QSqrt23i :=
  ⟨x.re₀, x.re₁, x.re₂, x.re₃, -x.im₀, -x.im₁, -x.im₂, -x.im₃⟩

/-- Scalar multiplication by a rational. -/
def smul (q : ℚ) (x : QSqrt23i) : QSqrt23i :=
  ⟨q * x.re₀, q * x.re₁, q * x.re₂, q * x.re₃,
   q * x.im₀, q * x.im₁, q * x.im₂, q * x.im₃⟩

instance : HSMul ℚ QSqrt23i QSqrt23i := ⟨smul⟩

/-- Check if an element is zero (all coefficients vanish). -/
def isZero (x : QSqrt23i) : Bool :=
  x.re₀ == 0 && x.re₁ == 0 && x.re₂ == 0 && x.re₃ == 0 &&
  x.im₀ == 0 && x.im₁ == 0 && x.im₂ == 0 && x.im₃ == 0

/-- Multiply by (-1)^b. -/
def signMul (b : Bool) (x : QSqrt23i) : QSqrt23i :=
  if b then neg x else x

/-- Multiply by i^n for small n. -/
def imulPow (n : ℕ) (x : QSqrt23i) : QSqrt23i :=
  match n % 4 with
  | 0 => x
  | 1 => mul I x
  | 2 => neg x
  | 3 => mul (neg I) x
  | _ => x  -- unreachable

end QSqrt23i

end SS
