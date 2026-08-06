import Examples.D3.BD16v7
import SS.ZFullKLEval

/-!
# BD16v7 certified in the kernel alone

The amplitudes of this code lie in `(1/4) · ℤ[√2,√3,√5,i]`.  Its integer mirror is
therefore decided by the kernel, and `SS.allKLSatisfied_of_Z_smul` transports the
result to the rational statement `code.layer2OK 2`.

No `native_decide`.
-/

namespace BD16v7Kernel

open SS SS.Verify SS.BD16

set_option maxRecDepth 4000000
set_option maxHeartbeats 2000000

namespace AmpZ
/-- Integer rational amplitude. -/
def rat (k : Int) : SS.ZSqrt235i := ⟨⟨k, 0, 0, 0, 0, 0, 0, 0⟩, SS.ZSqrt23i.zero⟩
/-- Integer imaginary amplitude. -/
def im (k : Int) : SS.ZSqrt235i := ⟨⟨0, 0, 0, 0, k, 0, 0, 0⟩, SS.ZSqrt23i.zero⟩
end AmpZ

def ampZ : SS.BitString 7 → SS.ZSqrt235i := fun x =>
    if x = bs false false false false false false false then AmpZ.rat (1)
    else if x = bs false false false true  true  false true  then AmpZ.im (-1)
    else if x = bs false false true  false true  false true  then AmpZ.im (1)
    else if x = bs false false true  true  false false true  then AmpZ.im (-1)
    else if x = bs false true  false false false true  true  then AmpZ.im (-1)
    else if x = bs false true  false true  true  true  false then AmpZ.rat (-1)
    else if x = bs false true  true  false true  true  false then AmpZ.rat (1)
    else if x = bs false true  true  true  false true  false then AmpZ.rat (1)
    else if x = bs true  false false false false true  true  then AmpZ.im (-1)
    else if x = bs true  false false true  true  true  false then AmpZ.rat (1)
    else if x = bs true  false true  false true  true  false then AmpZ.rat (1)
    else if x = bs true  false true  true  false true  false then AmpZ.rat (-1)
    else if x = bs true  true  false false true  false true  then AmpZ.rat (-1)
    else if x = bs true  true  false true  false false true  then AmpZ.rat (-1)
    else if x = bs true  true  true  false false false true  then AmpZ.rat (-1)
    else if x = bs true  true  true  true  true  false false then AmpZ.im (-1)
    else SS.ZSqrt235i.zero

/-- The scaling map taking the integer mirror back to the declared amplitudes. -/
def scale4 (z : SS.ZSqrt235i) : QSqrt235i := QSqrt235i.smul (1/4) (SS.ZSqrt235i.toQ z)

private theorem simp_set : True := trivial

@[simp] lemma scale4_rat_one : scale4 (AmpZ.rat 1) = Amp.rat (1/4) := by
  simp [scale4, AmpZ.rat, Amp.rat, QSqrt235i.ofRat, QSqrt23i.ofRat, QSqrt235i.smul,
    QSqrt23i.smul, SS.ZSqrt235i.toQ, SS.ZSqrt23i.toQ, SS.ZSqrt23i.zero,
    show (0 : QSqrt23i) = QSqrt23i.zero from rfl, QSqrt23i.zero]

@[simp] lemma scale4_rat_negone : scale4 (AmpZ.rat (-1)) = Amp.rat (-1/4) := by
  simp [scale4, AmpZ.rat, Amp.rat, QSqrt235i.ofRat, QSqrt23i.ofRat, QSqrt235i.smul,
    QSqrt23i.smul, SS.ZSqrt235i.toQ, SS.ZSqrt23i.toQ, SS.ZSqrt23i.zero,
    show (0 : QSqrt23i) = QSqrt23i.zero from rfl, QSqrt23i.zero]
  norm_num

@[simp] lemma scale4_im_one : scale4 (AmpZ.im 1) = Amp.im (1/4) := by
  simp [scale4, AmpZ.im, Amp.im, QSqrt235i.smul, QSqrt23i.smul,
    SS.ZSqrt235i.toQ, SS.ZSqrt23i.toQ, SS.ZSqrt23i.zero,
    show (0 : QSqrt23i) = QSqrt23i.zero from rfl, QSqrt23i.zero]

@[simp] lemma scale4_im_negone : scale4 (AmpZ.im (-1)) = Amp.im (-1/4) := by
  simp [scale4, AmpZ.im, Amp.im, QSqrt235i.smul, QSqrt23i.smul,
    SS.ZSqrt235i.toQ, SS.ZSqrt23i.toQ, SS.ZSqrt23i.zero,
    show (0 : QSqrt23i) = QSqrt23i.zero from rfl, QSqrt23i.zero]
  norm_num

@[simp] lemma scale4_zero : scale4 SS.ZSqrt235i.zero = Amp.z := by
  simp only [scale4, Amp.z, QSqrt235i.smul, QSqrt23i.smul, SS.ZSqrt235i.toQ,
    SS.ZSqrt23i.toQ, SS.ZSqrt235i.zero, SS.ZSqrt23i.zero, Int.cast_zero,
    QSqrt23i.smul_def, QSqrt23i.smul, mul_zero]
  rfl

/-- The declared amplitudes are `1/4` times the integer mirror. -/
lemma amp_eq : BD16v7.code.amp = fun s => scale4 (ampZ s) := by
  funext s
  show BD16v7.code.amp s = scale4 (ampZ s)
  unfold BD16v7.code ampZ
  simp only [apply_ite scale4, scale4_rat_one, scale4_rat_negone,
    scale4_im_one, scale4_im_negone, scale4_zero]

/-- The integer mirror satisfies every weight-`≤ 2` Knill--Laflamme constraint.
    Decided by the kernel: the arithmetic is over `ℤ`, which the kernel reduces. -/
theorem allKLZ : SS.allKLSatisfiedZ BD16v7.supp ampZ 2 = true := by decide

/-- **Layer 2, certified without `native_decide`.** -/
theorem layer2_kernel : BD16v7.code.layer2OK 2 := by
  have h := SS.allKLSatisfied_of_Z_smul BD16v7.supp ampZ 2
    (q := 1/4) (by norm_num) allKLZ
  rw [BD16Code.layer2OK, amp_eq]
  exact h

/-! ## Layer 1 -/

theorem zbal_int : ∀ i : Fin 7,
    (∑ x ∈ BD16v7.supp, (if x i = true then (-1 : Int) else 1)) = 0 := by decide

theorem card_supp : BD16v7.supp.card = 16 := by decide

/-- **Layer 1, certified without `native_decide`.** -/
theorem layer1_kernel : BD16v7.code.layer1OK := by
  simp only [BD16Code.layer1OK, Distance3Data.Layer1OK, BD16Code.toD3Data]
  refine ⟨by decide, ?_, ⟨?_, ?_, ?_⟩, ?_⟩
  · simp [BDAngleCondition, BD16v7.code]; decide
  · intro x hx
    simp only [BD16v7.code]
    simp [show x ∉ BD16v7.supp from hx]
  · intro x _
    simp only [BD16v7.code]
    split <;> norm_num
  · simp only [BD16v7.code]
    rw [Finset.sum_ite_mem, Finset.inter_self]
    simp [Finset.sum_const, card_supp]
  · intro i
    have h : ∀ x ∈ BD16v7.supp, BD16v7.code.prob x * zSign x i
        = (1/16 : ℚ) * (((if x i = true then (-1 : Int) else 1) : Int) : ℚ) := by
      intro x hx
      simp only [BD16v7.code, zSign, if_pos hx]
    rw [show BD16v7.code.supp = BD16v7.supp from rfl, zExpectation,
      Finset.sum_congr rfl h, ← Finset.mul_sum]
    have hc : (∑ x ∈ BD16v7.supp, (((if x i = true then (-1 : Int) else 1) : Int) : ℚ))
        = (((∑ x ∈ BD16v7.supp, (if x i = true then (-1 : Int) else 1)) : Int) : ℚ) := by
      push_cast; ring
    rw [hc, zbal_int i]
    norm_num

/-! ## Probability-amplitude consistency -/

theorem probamp_int : ∀ s ∈ BD16v7.supp,
    SS.ZSqrt235i.mul (SS.ZSqrt235i.conj (ampZ s)) (ampZ s) = AmpZ.rat 1 := by decide

theorem smul16_one : QSqrt235i.smul (1/16 : ℚ) (SS.ZSqrt235i.toQ (AmpZ.rat 1))
    = QSqrt235i.ofRat (1/16) := by
  simp [QSqrt235i.smul, QSqrt23i.smul, SS.ZSqrt235i.toQ, SS.ZSqrt23i.toQ, AmpZ.rat,
    SS.ZSqrt23i.zero, QSqrt235i.ofRat, QSqrt23i.ofRat,
    show (0 : QSqrt23i) = QSqrt23i.zero from rfl, QSqrt23i.zero]

/-- **Probability-amplitude consistency, certified without `native_decide`.** -/
theorem probamp_kernel : BD16v7.code.probAmpConsistent := by
  intro s hs
  have hz := probamp_int s hs
  rw [show BD16v7.code.amp = fun x => scale4 (ampZ x) from amp_eq]
  simp only [scale4, QSqrt235i.conj_smul, QSqrt235i.mul_smul_smul,
    ← SS.ZSqrt235i.toQ_conj, ← SS.ZSqrt235i.toQ_mul, hz]
  rw [show (1/4 : ℚ) * (1/4) = 1/16 by norm_num, smul16_one]
  simp only [BD16v7.code]
  simp [show s ∈ BD16v7.supp from hs]

/-- **The full distance-3 certificate, with the kernel as the only trusted base.** -/
theorem isDistance3_kernel : BD16v7.code.isDistance3 :=
  ⟨probamp_kernel, layer1_kernel, layer2_kernel⟩

/-- Amplitudes vanish off the support: the side condition of the KL bridge. -/
theorem amp_vanish_kernel :
    ∀ s, s ∉ BD16v7.code.supp → BD16v7.code.amp s = SS.QSqrt235i.zero := by decide

/-- **Quantum statement, with the kernel as the only trusted base.**  The code
detects every Pauli error of weight `≤ 2`. -/
theorem qec_kernel (P : SS.PauliString 7) (hw : P.wt ≤ 2) :
    SS.innerC (SS.BD16.state0 BD16v7.code) (SS.pauliAct P (SS.BD16.state1 BD16v7.code)) = 0
      ∧ SS.innerC (SS.BD16.state1 BD16v7.code) (SS.pauliAct P (SS.BD16.state1 BD16v7.code))
          = SS.innerC (SS.BD16.state0 BD16v7.code)
              (SS.pauliAct P (SS.BD16.state0 BD16v7.code)) :=
  SS.BD16.detects_weight2 BD16v7.code isDistance3_kernel amp_vanish_kernel P hw

end BD16v7Kernel
