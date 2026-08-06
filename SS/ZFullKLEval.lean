import SS.ZSqrt235i
import SS.FullKLEval

/-!
# Integer mirror of the Layer-2 Knill--Laflamme evaluator

`SS/FullKLEval.lean` decides Layer 2 by folding `QSqrt235i` arithmetic over the
weight-`≤ w` Pauli strings.  The Lean kernel cannot reduce that fold, because it
cannot reduce `Rat`.  This module runs the same computation over `ZSqrt235i`,
where the kernel reduces immediately, and transports the result.

No `sorry`.
-/

namespace SS

variable {n : ℕ}

instance : Std.Commutative (α := ZSqrt235i) ZSqrt235i.add where
  comm a b := by
    simp only [ZSqrt235i.add, ZSqrt235i.mk.injEq]
    constructor <;> simp [ZSqrt23i.add, add_comm]

instance : Std.Associative (α := ZSqrt235i) ZSqrt235i.add where
  assoc a b c := by
    simp only [ZSqrt235i.add, ZSqrt235i.mk.injEq]
    constructor <;> simp [ZSqrt23i.add, add_assoc]

def foldSumZ (S : Finset (BitString n)) (f : BitString n → ZSqrt235i) : ZSqrt235i :=
  S.fold ZSqrt235i.add ZSqrt235i.zero f

def diagTermZ (c : BitString n → ZSqrt235i) (x z s : BitString n) : ZSqrt235i :=
  ZSqrt235i.signMul (bdot z s) (ZSqrt235i.mul (ZSqrt235i.conj (c (bxor s x))) (c s))

def diagMatEltZ (S₀ : Finset (BitString n)) (c : BitString n → ZSqrt235i)
    (x z : BitString n) : ZSqrt235i :=
  foldSumZ (diagIntersection S₀ x) (diagTermZ c x z)

def offdiagTermZ (c : BitString n → ZSqrt235i) (x z s : BitString n) : ZSqrt235i :=
  ZSqrt235i.signMul (bdot z s)
    (ZSqrt235i.mul (ZSqrt235i.conj (c (bxor s (delta x)))) (c s))

def offdiagMatEltZ (S₀ : Finset (BitString n)) (c : BitString n → ZSqrt235i)
    (x z : BitString n) : ZSqrt235i :=
  foldSumZ (offdiagIntersection S₀ x) (offdiagTermZ c x z)

def klConstraintOKZ (S₀ : Finset (BitString n)) (c : BitString n → ZSqrt235i)
    (P : PauliString n) : Bool :=
  (diagIsAutomatic S₀ P || (diagMatEltZ S₀ c P.x P.z).isZero) &&
  (offdiagIsAutomatic S₀ P || (offdiagMatEltZ S₀ c P.x P.z).isZero)

def allKLSatisfiedZ (S₀ : Finset (BitString n)) (c : BitString n → ZSqrt235i)
    (w : ℕ) : Bool :=
  ((Finset.univ : Finset (PauliString n)).filter (fun P => P.wt ≤ w)).fold
    (· && ·) true (fun P => klConstraintOKZ S₀ c P)

/-! ## Transport -/

lemma toQ_foldSumZ (S : Finset (BitString n)) (f : BitString n → ZSqrt235i) :
    ZSqrt235i.toQ (foldSumZ S f) = foldSum S (fun x => ZSqrt235i.toQ (f x)) := by
  rw [foldSumZ, foldSum, ← Finset.fold_hom (m := ZSqrt235i.toQ) (fun x y => ZSqrt235i.toQ_add x y)]
  simp

lemma toQ_diagMatEltZ (S₀ : Finset (BitString n)) (c : BitString n → ZSqrt235i)
    (x z : BitString n) :
    ZSqrt235i.toQ (diagMatEltZ S₀ c x z)
      = diagMatElt S₀ (fun s => ZSqrt235i.toQ (c s)) x z := by
  rw [diagMatEltZ, toQ_foldSumZ, diagMatElt]
  exact Finset.fold_congr (fun s _ => by simp [diagTermZ, diagTerm])

lemma toQ_offdiagMatEltZ (S₀ : Finset (BitString n)) (c : BitString n → ZSqrt235i)
    (x z : BitString n) :
    ZSqrt235i.toQ (offdiagMatEltZ S₀ c x z)
      = offdiagMatElt S₀ (fun s => ZSqrt235i.toQ (c s)) x z := by
  rw [offdiagMatEltZ, toQ_foldSumZ, offdiagMatElt]
  exact Finset.fold_congr (fun s _ => by simp [offdiagTermZ, offdiagTerm])

lemma klConstraintOK_of_Z (S₀ : Finset (BitString n)) (c : BitString n → ZSqrt235i)
    (P : PauliString n) (h : klConstraintOKZ S₀ c P = true) :
    klConstraintOK S₀ (fun s => ZSqrt235i.toQ (c s)) P = true := by
  simp only [klConstraintOKZ, Bool.and_eq_true, Bool.or_eq_true] at h
  simp only [klConstraintOK, Bool.and_eq_true, Bool.or_eq_true]
  obtain ⟨hd, ho⟩ := h
  refine ⟨hd.imp id (fun hz => ?_), ho.imp id (fun hz => ?_)⟩
  · rw [← toQ_diagMatEltZ]; exact ZSqrt235i.toQ_isZero _ hz
  · rw [← toQ_offdiagMatEltZ]; exact ZSqrt235i.toQ_isZero _ hz

private lemma fold_and_eq_true {α : Type*} [DecidableEq α] (s : Finset α) (f : α → Bool) :
    s.fold (· && ·) true f = true ↔ ∀ a ∈ s, f a = true := by
  classical
  induction s using Finset.induction with
  | empty => simp
  | insert a s ha ih => simp [Finset.fold_insert ha, ih]

/-- **Transport of Layer 2.**  If the integer mirror of the code satisfies every
weight-`≤ w` Knill--Laflamme constraint, so does the rational code it maps to. -/
theorem allKLSatisfied_of_Z (S₀ : Finset (BitString n)) (c : BitString n → ZSqrt235i)
    (w : ℕ) (h : allKLSatisfiedZ S₀ c w = true) :
    AllKLSatisfied S₀ (fun s => ZSqrt235i.toQ (c s)) w := by
  classical
  rw [AllKLSatisfied, allKLSatisfied, fold_and_eq_true]
  rw [allKLSatisfiedZ, fold_and_eq_true] at h
  exact fun P hP => klConstraintOK_of_Z S₀ c P (h P hP)


/-! ## Scaling invariance

A code's amplitudes lie in `(1/D) · ℤ[√2,√3,√5,i]` rather than in the integer ring
itself.  The Knill--Laflamme matrix elements are quadratic in the amplitudes, so a
global factor rescales them and does not change whether they vanish. -/

namespace QSqrt23i

@[simp] lemma smul_def (q : ℚ) (x : QSqrt23i) : q • x = smul q x := rfl

@[simp] lemma smul_smul' (p q : ℚ) (x : QSqrt23i) :
    smul p (smul q x) = smul (p * q) x := by
  simp [smul]; refine ⟨by ring, by ring, by ring, by ring, by ring, by ring, by ring, by ring⟩

@[simp] lemma neg_def (x : QSqrt23i) : -x = neg x := rfl

@[simp] lemma neg_smul' (q : ℚ) (x : QSqrt23i) :
    neg (smul q x) = smul q (neg x) := by
  simp only [neg, smul, QSqrt23i.mk.injEq]
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> ring

@[simp] lemma conj_smul (q : ℚ) (a : QSqrt23i) :
    conj (smul q a) = smul q (conj a) := by
  simp [conj, smul]

@[simp] lemma add_smul' (q : ℚ) (a b : QSqrt23i) :
    add (smul q a) (smul q b) = smul q (add a b) := by
  simp [add, smul]; refine ⟨by ring, by ring, by ring, by ring, by ring, by ring, by ring, by ring⟩

open private mulReal from SS.QSqrt23i in
@[simp] lemma mul_smul_smul (q : ℚ) (a b : QSqrt23i) :
    mul (smul q a) (smul q b) = smul (q * q) (mul a b) := by
  dsimp only [mul, smul, mulReal]
  simp only [QSqrt23i.mk.injEq]
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> ring

@[simp] lemma smul_zero' (q : ℚ) : smul q zero = zero := by simp [smul, zero]

lemma isZero_smul {q : ℚ} (hq : q ≠ 0) (a : QSqrt23i) :
    isZero (smul q a) = isZero a := by
  have h : ∀ r : ℚ, (q * r == 0) = (r == 0) := by
    intro r
    by_cases hr : r = 0
    · simp [hr]
    · simp [hr, mul_eq_zero, hq]
  simp only [isZero, smul, h]

end QSqrt23i

namespace QSqrt235i

@[simp] lemma conj_smul (q : ℚ) (a : QSqrt235i) :
    conj (smul q a) = smul q (conj a) := by
  simp [conj, smul]

@[simp] lemma add_smul' (q : ℚ) (a b : QSqrt235i) :
    add (smul q a) (smul q b) = smul q (add a b) := by
  simp [add, smul, HAdd.hAdd, Add.add]

@[simp] lemma mul_smul_smul (q : ℚ) (a b : QSqrt235i) :
    mul (smul q a) (smul q b) = smul (q * q) (mul a b) := by
  simp only [mul, smul, QSqrt235i.mk.injEq, HAdd.hAdd, Add.add, HMul.hMul, Mul.mul,
    QSqrt23i.smul_def, QSqrt23i.mul_smul_smul, QSqrt23i.smul_smul',
    QSqrt23i.add_smul']
  refine ⟨?_, trivial⟩
  simp only [QSqrt23i.add, QSqrt23i.smul, QSqrt23i.mk.injEq,
    show ∀ a b : ℚ, a.mul b = a * b from fun _ _ => rfl]
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> ring

@[simp] lemma signMul_smul (b : Bool) (q : ℚ) (a : QSqrt235i) :
    signMul b (smul q a) = smul q (signMul b a) := by
  cases b <;>
    simp [signMul, neg, smul, QSqrt23i.smul_def, QSqrt23i.neg_smul']

@[simp] lemma smul_zero' (q : ℚ) : smul q zero = zero := by
  simp [smul, zero, QSqrt23i.smul, show (0 : QSqrt23i) = QSqrt23i.zero from rfl,
    QSqrt23i.zero]

lemma isZero_smul {q : ℚ} (hq : q ≠ 0) (a : QSqrt235i) :
    isZero (smul q a) = isZero a := by
  simp [isZero, smul, QSqrt23i.isZero_smul hq]

end QSqrt235i


/-! ## Transport with a global scale -/

lemma foldSum_smul (S : Finset (BitString n)) (f : BitString n → QSqrt235i) (q : ℚ) :
    foldSum S (fun s => QSqrt235i.smul q (f s))
      = QSqrt235i.smul q (foldSum S f) := by
  rw [foldSum, foldSum, ← Finset.fold_hom (m := QSqrt235i.smul q)
    (fun x y => (QSqrt235i.add_smul' q x y).symm)]
  simp

lemma diagMatElt_smul (S₀ : Finset (BitString n)) (c : BitString n → QSqrt235i)
    (x z : BitString n) (q : ℚ) :
    diagMatElt S₀ (fun s => QSqrt235i.smul q (c s)) x z
      = QSqrt235i.smul (q * q) (diagMatElt S₀ c x z) := by
  rw [diagMatElt, diagMatElt, ← foldSum_smul]
  exact Finset.fold_congr (fun s _ => by simp [diagTerm])

lemma offdiagMatElt_smul (S₀ : Finset (BitString n)) (c : BitString n → QSqrt235i)
    (x z : BitString n) (q : ℚ) :
    offdiagMatElt S₀ (fun s => QSqrt235i.smul q (c s)) x z
      = QSqrt235i.smul (q * q) (offdiagMatElt S₀ c x z) := by
  rw [offdiagMatElt, offdiagMatElt, ← foldSum_smul]
  exact Finset.fold_congr (fun s _ => by simp [offdiagTerm])

/-- **Transport of Layer 2 through a global scale.**  A code whose amplitudes are
`q · (integer element)` satisfies the weight-`≤ w` Knill--Laflamme constraints as
soon as its integer mirror does; the constraints are quadratic, so the factor `q`
rescales each matrix element and cannot affect whether it vanishes. -/
theorem allKLSatisfied_of_Z_smul (S₀ : Finset (BitString n))
    (cZ : BitString n → ZSqrt235i) (w : ℕ) {q : ℚ} (hq : q ≠ 0)
    (h : allKLSatisfiedZ S₀ cZ w = true) :
    AllKLSatisfied S₀ (fun s => QSqrt235i.smul q (ZSqrt235i.toQ (cZ s))) w := by
  classical
  have hbase := allKLSatisfied_of_Z S₀ cZ w h
  rw [AllKLSatisfied, allKLSatisfied, fold_and_eq_true] at hbase ⊢
  intro P hP
  have := hbase P hP
  simp only [klConstraintOK, Bool.and_eq_true, Bool.or_eq_true] at this ⊢
  refine ⟨this.1.imp id (fun hz => ?_), this.2.imp id (fun hz => ?_)⟩
  · rw [diagMatElt_smul, QSqrt235i.isZero_smul (mul_ne_zero hq hq)]; exact hz
  · rw [offdiagMatElt_smul, QSqrt235i.isZero_smul (mul_ne_zero hq hq)]; exact hz

end SS
