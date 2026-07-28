import Mathlib
import SS.QSqrt235i
import SS.HilbertKL

/-!
# The exact number field as complex numbers

`SS.QSqrt23i` and `SS.QSqrt235i` implement exact arithmetic in `ℚ(√2,√3,i)` and
`ℚ(√2,√3,√5,i)` as tuples of rationals with hand-written operations.  For the
distance-3 bridge we must know that those operations really *are* complex
arithmetic, so this module defines the embedding into `ℂ` and proves it is a ring
homomorphism compatible with conjugation.

Only the *easy* direction of faithfulness is needed and proved:
`isZero x = true → toC x = 0`.  The converse would require linear independence of
the radicals over `ℚ`, which the bridge does not use.

`√6` is represented as `√2 · √3`, so the development needs only `√2·√2 = 2` and
`√3·√3 = 3` (plus `√5·√5 = 5`).  Splitting into real and imaginary parts keeps every
proof inside `ℝ`, where those two relations suffice.
-/

namespace SS

noncomputable section

/-! ## The real subfield `ℚ(√2,√3)` -/

/-- The real number `a₀ + a₁√2 + a₂√3 + a₃√6`, with `√6 = √2·√3`. -/
def rp (a₀ a₁ a₂ a₃ : ℚ) : ℝ :=
  (a₀ : ℝ) + (a₁ : ℝ) * Real.sqrt 2 + (a₂ : ℝ) * Real.sqrt 3
    + (a₃ : ℝ) * (Real.sqrt 2 * Real.sqrt 3)

lemma sqrt2_sq : Real.sqrt 2 * Real.sqrt 2 = 2 := Real.mul_self_sqrt (by norm_num)
lemma sqrt3_sq : Real.sqrt 3 * Real.sqrt 3 = 3 := Real.mul_self_sqrt (by norm_num)
lemma sqrt5_sq : Real.sqrt 5 * Real.sqrt 5 = 5 := Real.mul_self_sqrt (by norm_num)

lemma rp_add (a₀ a₁ a₂ a₃ b₀ b₁ b₂ b₃ : ℚ) :
    rp (a₀ + b₀) (a₁ + b₁) (a₂ + b₂) (a₃ + b₃) = rp a₀ a₁ a₂ a₃ + rp b₀ b₁ b₂ b₃ := by
  simp only [rp]; push_cast; ring

lemma rp_sub (a₀ a₁ a₂ a₃ b₀ b₁ b₂ b₃ : ℚ) :
    rp (a₀ - b₀) (a₁ - b₁) (a₂ - b₂) (a₃ - b₃) = rp a₀ a₁ a₂ a₃ - rp b₀ b₁ b₂ b₃ := by
  simp only [rp]; push_cast; ring

lemma rp_neg (a₀ a₁ a₂ a₃ : ℚ) :
    rp (-a₀) (-a₁) (-a₂) (-a₃) = -rp a₀ a₁ a₂ a₃ := by
  simp only [rp]; push_cast; ring

/-- Multiplication in `ℚ(√2,√3)` in coordinates: exactly the convolution used by
`QSqrt23i.mul`. -/
lemma rp_mul (a₀ a₁ a₂ a₃ c₀ c₁ c₂ c₃ : ℚ) :
    rp a₀ a₁ a₂ a₃ * rp c₀ c₁ c₂ c₃
      = rp (a₀*c₀ + 2*a₁*c₁ + 3*a₂*c₂ + 6*a₃*c₃)
           (a₀*c₁ + a₁*c₀ + 3*a₂*c₃ + 3*a₃*c₂)
           (a₀*c₂ + a₂*c₀ + 2*a₁*c₃ + 2*a₃*c₁)
           (a₀*c₃ + a₃*c₀ + a₁*c₂ + a₂*c₁) := by
  simp only [rp]
  push_cast
  linear_combination
    ((a₁:ℝ)*(c₁:ℝ) + ((a₁:ℝ)*(c₃:ℝ) + (a₃:ℝ)*(c₁:ℝ)) * Real.sqrt 3
        + (a₃:ℝ)*(c₃:ℝ) * (Real.sqrt 3 * Real.sqrt 3)) * sqrt2_sq
    + ((a₂:ℝ)*(c₂:ℝ) + ((a₂:ℝ)*(c₃:ℝ) + (a₃:ℝ)*(c₂:ℝ)) * Real.sqrt 2
        + 2*(a₃:ℝ)*(c₃:ℝ)) * sqrt3_sq

/-! ## `ℚ(√2,√3,i) → ℂ` -/

namespace QSqrt23i

/-- Real part of the embedding. -/
def reC (x : QSqrt23i) : ℝ := rp x.re₀ x.re₁ x.re₂ x.re₃
/-- Imaginary part of the embedding. -/
def imC (x : QSqrt23i) : ℝ := rp x.im₀ x.im₁ x.im₂ x.im₃

/-- The embedding of `QSqrt23i` into `ℂ`. -/
def toC (x : QSqrt23i) : ℂ := ⟨x.reC, x.imC⟩

@[simp] lemma toC_re (x : QSqrt23i) : (toC x).re = x.reC := rfl
@[simp] lemma toC_im (x : QSqrt23i) : (toC x).im = x.imC := rfl

/-- `QSqrt23i.mul` in explicit coordinates (definitional). -/
lemma mul_def (x y : QSqrt23i) :
    QSqrt23i.mul x y =
      ⟨(x.re₀*y.re₀ + 2*x.re₁*y.re₁ + 3*x.re₂*y.re₂ + 6*x.re₃*y.re₃)
         - (x.im₀*y.im₀ + 2*x.im₁*y.im₁ + 3*x.im₂*y.im₂ + 6*x.im₃*y.im₃),
       (x.re₀*y.re₁ + x.re₁*y.re₀ + 3*x.re₂*y.re₃ + 3*x.re₃*y.re₂)
         - (x.im₀*y.im₁ + x.im₁*y.im₀ + 3*x.im₂*y.im₃ + 3*x.im₃*y.im₂),
       (x.re₀*y.re₂ + x.re₂*y.re₀ + 2*x.re₁*y.re₃ + 2*x.re₃*y.re₁)
         - (x.im₀*y.im₂ + x.im₂*y.im₀ + 2*x.im₁*y.im₃ + 2*x.im₃*y.im₁),
       (x.re₀*y.re₃ + x.re₃*y.re₀ + x.re₁*y.re₂ + x.re₂*y.re₁)
         - (x.im₀*y.im₃ + x.im₃*y.im₀ + x.im₁*y.im₂ + x.im₂*y.im₁),
       (x.re₀*y.im₀ + 2*x.re₁*y.im₁ + 3*x.re₂*y.im₂ + 6*x.re₃*y.im₃)
         + (x.im₀*y.re₀ + 2*x.im₁*y.re₁ + 3*x.im₂*y.re₂ + 6*x.im₃*y.re₃),
       (x.re₀*y.im₁ + x.re₁*y.im₀ + 3*x.re₂*y.im₃ + 3*x.re₃*y.im₂)
         + (x.im₀*y.re₁ + x.im₁*y.re₀ + 3*x.im₂*y.re₃ + 3*x.im₃*y.re₂),
       (x.re₀*y.im₂ + x.re₂*y.im₀ + 2*x.re₁*y.im₃ + 2*x.re₃*y.im₁)
         + (x.im₀*y.re₂ + x.im₂*y.re₀ + 2*x.im₁*y.re₃ + 2*x.im₃*y.re₁),
       (x.re₀*y.im₃ + x.re₃*y.im₀ + x.re₁*y.im₂ + x.re₂*y.im₁)
         + (x.im₀*y.re₃ + x.im₃*y.re₀ + x.im₁*y.re₂ + x.im₂*y.re₁)⟩ := rfl

lemma reC_mul (x y : QSqrt23i) :
    (QSqrt23i.mul x y).reC = x.reC * y.reC - x.imC * y.imC := by
  simp only [reC, imC, mul_def]
  rw [rp_mul, rp_mul, ← rp_sub]

lemma imC_mul (x y : QSqrt23i) :
    (QSqrt23i.mul x y).imC = x.reC * y.imC + x.imC * y.reC := by
  simp only [reC, imC, mul_def]
  rw [rp_mul, rp_mul, ← rp_add]

lemma toC_mul (x y : QSqrt23i) : toC (QSqrt23i.mul x y) = toC x * toC y := by
  apply Complex.ext
  · simpa [Complex.mul_re] using reC_mul x y
  · simpa [Complex.mul_im] using imC_mul x y

lemma toC_add (x y : QSqrt23i) : toC (QSqrt23i.add x y) = toC x + toC y := by
  apply Complex.ext <;> simp [toC, reC, imC, QSqrt23i.add, rp_add]

lemma toC_neg (x : QSqrt23i) : toC (QSqrt23i.neg x) = -toC x := by
  apply Complex.ext <;> simp [toC, reC, imC, QSqrt23i.neg, rp_neg]

lemma toC_conj (x : QSqrt23i) : toC (QSqrt23i.conj x) = star (toC x) := by
  apply Complex.ext <;>
    simp [toC, reC, imC, QSqrt23i.conj, rp_neg, Complex.star_def,
      Complex.conj_re, Complex.conj_im]

/-- Easy faithfulness: all-zero coefficients give the complex number `0`. -/
lemma toC_eq_zero_of_isZero {x : QSqrt23i} (h : x.isZero = true) : toC x = 0 := by
  unfold QSqrt23i.isZero at h
  simp only [Bool.and_eq_true, beq_iff_eq] at h
  obtain ⟨⟨⟨⟨⟨⟨⟨h0, h1⟩, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩, h7⟩ := h
  apply Complex.ext <;> simp [toC, reC, imC, rp, h0, h1, h2, h3, h4, h5, h6, h7]

end QSqrt23i

/-! ## `ℚ(√2,√3,√5,i) → ℂ`

An element is `u + v·√5` with `u v : QSqrt23i`. -/

namespace QSqrt235i

/-- The embedding of `QSqrt235i` into `ℂ`. -/
def toC (x : QSqrt235i) : ℂ :=
  x.u.toC + x.v.toC * ((Real.sqrt 5 : ℝ) : ℂ)

lemma toC_add (x y : QSqrt235i) : toC (QSqrt235i.add x y) = toC x + toC y := by
  simp only [toC, QSqrt235i.add]
  show (QSqrt23i.toC (QSqrt23i.add x.u y.u)) + (QSqrt23i.toC (QSqrt23i.add x.v y.v)) * _ = _
  rw [QSqrt23i.toC_add, QSqrt23i.toC_add]
  ring

lemma toC_neg (x : QSqrt235i) : toC (QSqrt235i.neg x) = -toC x := by
  simp only [toC, QSqrt235i.neg]
  show (QSqrt23i.toC (QSqrt23i.neg x.u)) + (QSqrt23i.toC (QSqrt23i.neg x.v)) * _ = _
  rw [QSqrt23i.toC_neg, QSqrt23i.toC_neg]
  ring

/-- `QSqrt23i.smul` by a rational agrees with multiplication by that rational. -/
lemma _root_.SS.QSqrt23i.toC_smul (q : ℚ) (x : QSqrt23i) :
    QSqrt23i.toC (QSqrt23i.smul q x) = (q : ℂ) * QSqrt23i.toC x := by
  apply Complex.ext <;>
    simp [QSqrt23i.toC, QSqrt23i.reC, QSqrt23i.imC, QSqrt23i.smul, rp] <;> push_cast <;> ring

lemma toC_mul (x y : QSqrt235i) : toC (QSqrt235i.mul x y) = toC x * toC y := by
  have h5 : ((Real.sqrt 5 : ℝ) : ℂ) * ((Real.sqrt 5 : ℝ) : ℂ) = 5 := by
    rw [← Complex.ofReal_mul, sqrt5_sq]; norm_num
  simp only [toC, QSqrt235i.mul]
  show (QSqrt23i.toC (QSqrt23i.add (QSqrt23i.mul x.u y.u)
          (QSqrt23i.smul 5 (QSqrt23i.mul x.v y.v))))
        + (QSqrt23i.toC (QSqrt23i.add (QSqrt23i.mul x.u y.v) (QSqrt23i.mul x.v y.u))) * _ = _
  rw [QSqrt23i.toC_add, QSqrt23i.toC_add, QSqrt23i.toC_smul,
    QSqrt23i.toC_mul, QSqrt23i.toC_mul, QSqrt23i.toC_mul, QSqrt23i.toC_mul]
  push_cast
  linear_combination (-(QSqrt23i.toC x.v * QSqrt23i.toC y.v)) * h5

lemma toC_conj (x : QSqrt235i) : toC (QSqrt235i.conj x) = star (toC x) := by
  simp only [toC, QSqrt235i.conj]
  rw [QSqrt23i.toC_conj, QSqrt23i.toC_conj]
  simp [star_mul', Complex.conj_ofReal]

/-- Easy faithfulness: an element whose coefficients all vanish maps to `0`. -/
lemma toC_eq_zero_of_isZero {x : QSqrt235i} (h : x.isZero = true) : toC x = 0 := by
  unfold QSqrt235i.isZero at h
  simp only [Bool.and_eq_true] at h
  rw [toC, QSqrt23i.toC_eq_zero_of_isZero h.1, QSqrt23i.toC_eq_zero_of_isZero h.2]
  ring

/-- Multiplication by `(-1)^b` maps to the corresponding sign in `ℂ`. -/
lemma toC_signMul (b : Bool) (x : QSqrt235i) :
    toC (QSqrt235i.signMul b x) = SS.signC b (toC x) := by
  cases b
  · simp [QSqrt235i.signMul, SS.signC]
  · simp [QSqrt235i.signMul, SS.signC, toC_neg]

end QSqrt235i

end

end SS
