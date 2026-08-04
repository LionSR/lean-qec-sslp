import Mathlib
import SS.QSqrt235i

/-!
# Integer mirror of `QSqrt235i`

The Lean kernel cannot reduce `Rat` arithmetic: even `(3 : ℚ) + 4 = 7` is not
closed by `decide`, because every `Rat` operation rebuilds a structure carrying
a coprimality proof.  Integer arithmetic, by contrast, is GMP-backed in the
kernel and reduces immediately.

This module mirrors `QSqrt23i` / `QSqrt235i` over `ℤ` and records that the
inclusion `toQ` is a ring homomorphism.  A code whose amplitudes all lie in
`(1/D) · ℤ[√2, √3, √5, i]` can therefore have its Knill--Laflamme constraints
decided by the kernel on the integer side and transported back.

No `sorry`.
-/

namespace SS

/-- Integer mirror of `QSqrt23i`: an element of `ℤ[√2, √3, i]`. -/
structure ZSqrt23i where
  re₀ : Int
  re₁ : Int
  re₂ : Int
  re₃ : Int
  im₀ : Int
  im₁ : Int
  im₂ : Int
  im₃ : Int
deriving DecidableEq, Repr

namespace ZSqrt23i

def zero : ZSqrt23i := ⟨0, 0, 0, 0, 0, 0, 0, 0⟩

def add (x y : ZSqrt23i) : ZSqrt23i :=
  ⟨x.re₀ + y.re₀, x.re₁ + y.re₁, x.re₂ + y.re₂, x.re₃ + y.re₃,
   x.im₀ + y.im₀, x.im₁ + y.im₁, x.im₂ + y.im₂, x.im₃ + y.im₃⟩

def neg (x : ZSqrt23i) : ZSqrt23i :=
  ⟨-x.re₀, -x.re₁, -x.re₂, -x.re₃, -x.im₀, -x.im₁, -x.im₂, -x.im₃⟩

def mulRealZ (a₀ a₁ a₂ a₃ c₀ c₁ c₂ c₃ : Int) : Int × Int × Int × Int :=
  ( a₀*c₀ + 2*a₁*c₁ + 3*a₂*c₂ + 6*a₃*c₃,
    a₀*c₁ + a₁*c₀ + 3*a₂*c₃ + 3*a₃*c₂,
    a₀*c₂ + a₂*c₀ + 2*a₁*c₃ + 2*a₃*c₁,
    a₀*c₃ + a₃*c₀ + a₁*c₂ + a₂*c₁ )

def mul (x y : ZSqrt23i) : ZSqrt23i :=
  let r1r2 := mulRealZ x.re₀ x.re₁ x.re₂ x.re₃ y.re₀ y.re₁ y.re₂ y.re₃
  let i1i2 := mulRealZ x.im₀ x.im₁ x.im₂ x.im₃ y.im₀ y.im₁ y.im₂ y.im₃
  let r1i2 := mulRealZ x.re₀ x.re₁ x.re₂ x.re₃ y.im₀ y.im₁ y.im₂ y.im₃
  let i1r2 := mulRealZ x.im₀ x.im₁ x.im₂ x.im₃ y.re₀ y.re₁ y.re₂ y.re₃
  ⟨r1r2.1 - i1i2.1, r1r2.2.1 - i1i2.2.1, r1r2.2.2.1 - i1i2.2.2.1, r1r2.2.2.2 - i1i2.2.2.2,
   r1i2.1 + i1r2.1, r1i2.2.1 + i1r2.2.1, r1i2.2.2.1 + i1r2.2.2.1, r1i2.2.2.2 + i1r2.2.2.2⟩

def isZero (x : ZSqrt23i) : Bool :=
  x.re₀ == 0 && x.re₁ == 0 && x.re₂ == 0 && x.re₃ == 0 &&
  x.im₀ == 0 && x.im₁ == 0 && x.im₂ == 0 && x.im₃ == 0

def conj (x : ZSqrt23i) : ZSqrt23i :=
  ⟨x.re₀, x.re₁, x.re₂, x.re₃, -x.im₀, -x.im₁, -x.im₂, -x.im₃⟩

def smulInt (k : Int) (x : ZSqrt23i) : ZSqrt23i :=
  ⟨k*x.re₀, k*x.re₁, k*x.re₂, k*x.re₃, k*x.im₀, k*x.im₁, k*x.im₂, k*x.im₃⟩

/-- The inclusion into the rational field. -/
def toQ (x : ZSqrt23i) : QSqrt23i :=
  ⟨(x.re₀ : ℚ), (x.re₁ : ℚ), (x.re₂ : ℚ), (x.re₃ : ℚ),
   (x.im₀ : ℚ), (x.im₁ : ℚ), (x.im₂ : ℚ), (x.im₃ : ℚ)⟩

@[simp] lemma toQ_zero : toQ zero = QSqrt23i.zero := by
  simp [toQ, zero, QSqrt23i.zero]

@[simp] lemma toQ_add (x y : ZSqrt23i) : toQ (add x y) = QSqrt23i.add (toQ x) (toQ y) := by
  simp [toQ, add, QSqrt23i.add]

@[simp] lemma toQ_neg (x : ZSqrt23i) : toQ (neg x) = QSqrt23i.neg (toQ x) := by
  simp [toQ, neg, QSqrt23i.neg]

@[simp] lemma toQ_conj (x : ZSqrt23i) : toQ (conj x) = QSqrt23i.conj (toQ x) := by
  simp [toQ, conj, QSqrt23i.conj]

open private mulReal from SS.QSqrt23i in
@[simp] lemma toQ_mul (x y : ZSqrt23i) : toQ (mul x y) = QSqrt23i.mul (toQ x) (toQ y) := by
  dsimp only [toQ, mul, mulRealZ, QSqrt23i.mul, mulReal]
  simp only [QSqrt23i.mk.injEq]
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> push_cast <;> ring

/-- Vanishing transfers: the integer element is zero iff its image is. -/
lemma toQ_eq_zero_iff (x : ZSqrt23i) : toQ x = QSqrt23i.zero ↔ x = zero := by
  cases x
  simp [toQ, zero, QSqrt23i.zero]


@[simp] lemma toQ_smulInt (k : Int) (x : ZSqrt23i) :
    toQ (smulInt k x) = QSqrt23i.smul (k : ℚ) (toQ x) := by
  simp [toQ, smulInt, QSqrt23i.smul]

lemma isZero_iff (x : ZSqrt23i) : isZero x = true ↔ x = zero := by
  cases x; simp [isZero, zero, and_assoc]

end ZSqrt23i

/-- Integer mirror of `QSqrt235i`: an element of `ℤ[√2, √3, √5, i]`. -/
structure ZSqrt235i where
  u : ZSqrt23i
  v : ZSqrt23i
deriving DecidableEq, Repr

namespace ZSqrt235i

def zero : ZSqrt235i := ⟨ZSqrt23i.zero, ZSqrt23i.zero⟩

def add (x y : ZSqrt235i) : ZSqrt235i :=
  ⟨ZSqrt23i.add x.u y.u, ZSqrt23i.add x.v y.v⟩

def neg (x : ZSqrt235i) : ZSqrt235i := ⟨ZSqrt23i.neg x.u, ZSqrt23i.neg x.v⟩

/-- `(u₁ + v₁√5)(u₂ + v₂√5) = (u₁u₂ + 5 v₁v₂) + (u₁v₂ + v₁u₂)√5`. -/
def mul (x y : ZSqrt235i) : ZSqrt235i :=
  ⟨ZSqrt23i.add (ZSqrt23i.mul x.u y.u) (ZSqrt23i.smulInt 5 (ZSqrt23i.mul x.v y.v)),
   ZSqrt23i.add (ZSqrt23i.mul x.u y.v) (ZSqrt23i.mul x.v y.u)⟩

def conj (x : ZSqrt235i) : ZSqrt235i := ⟨ZSqrt23i.conj x.u, ZSqrt23i.conj x.v⟩

def isZero (x : ZSqrt235i) : Bool := ZSqrt23i.isZero x.u && ZSqrt23i.isZero x.v

def signMul (b : Bool) (x : ZSqrt235i) : ZSqrt235i := if b then neg x else x

def toQ (x : ZSqrt235i) : QSqrt235i := ⟨ZSqrt23i.toQ x.u, ZSqrt23i.toQ x.v⟩

@[simp] lemma toQ_zero : toQ zero = QSqrt235i.zero := by
  simp only [toQ, zero, QSqrt235i.zero, ZSqrt23i.toQ_zero]
  rfl

@[simp] lemma toQ_add (x y : ZSqrt235i) :
    toQ (add x y) = QSqrt235i.add (toQ x) (toQ y) := by
  simp [toQ, add, QSqrt235i.add, HAdd.hAdd, Add.add]

@[simp] lemma toQ_neg (x : ZSqrt235i) : toQ (neg x) = QSqrt235i.neg (toQ x) := by
  simp [toQ, neg, QSqrt235i.neg, Neg.neg]

@[simp] lemma toQ_conj (x : ZSqrt235i) : toQ (conj x) = QSqrt235i.conj (toQ x) := by
  simp [toQ, conj, QSqrt235i.conj]

@[simp] lemma toQ_mul (x y : ZSqrt235i) :
    toQ (mul x y) = QSqrt235i.mul (toQ x) (toQ y) := by
  simp [toQ, mul, QSqrt235i.mul, HAdd.hAdd, Add.add, HMul.hMul, Mul.mul, HSMul.hSMul]

@[simp] lemma toQ_signMul (b : Bool) (x : ZSqrt235i) :
    toQ (signMul b x) = QSqrt235i.signMul b (toQ x) := by
  cases b <;> simp [signMul, QSqrt235i.signMul]

lemma isZero_iff (x : ZSqrt235i) : isZero x = true ↔ x = zero := by
  cases x
  simp [isZero, zero, ZSqrt23i.isZero_iff]

/-- Vanishing transfers between the two sides. -/
lemma toQ_isZero (x : ZSqrt235i) (h : isZero x = true) :
    QSqrt235i.isZero (toQ x) = true := by
  rw [isZero_iff] at h
  subst h
  simp [toQ, zero, QSqrt235i.isZero, ZSqrt23i.toQ, ZSqrt23i.zero, QSqrt23i.isZero]

end ZSqrt235i

end SS
