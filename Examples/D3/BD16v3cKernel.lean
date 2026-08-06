import Examples.D3.BD16v3c
import SS.ZFullKLEval

/-!
# BD16v3c certified with the kernel as the only trusted base

Amplitudes lie in `(1/4) · ℤ[√2,√3,√5,i]` and probabilities in `(1/16) · ℤ`,
so every check is decided by the kernel over the integers and transported by
the lemmas of `SS/ZFullKLEval.lean`.  No `native_decide`.
-/

namespace BD16v3cKernel

open SS SS.Verify SS.BD16

set_option maxRecDepth 4000000
set_option maxHeartbeats 2000000

namespace AmpZ
def ir2 (k : Int) : SS.ZSqrt235i := ⟨⟨0, 0, 0, 0, 0, k, 0, 0⟩, ⟨0, 0, 0, 0, 0, 0, 0, 0⟩⟩
def r3 (k : Int) : SS.ZSqrt235i := ⟨⟨0, 0, k, 0, 0, 0, 0, 0⟩, ⟨0, 0, 0, 0, 0, 0, 0, 0⟩⟩
def rat (k : Int) : SS.ZSqrt235i := ⟨⟨k, 0, 0, 0, 0, 0, 0, 0⟩, ⟨0, 0, 0, 0, 0, 0, 0, 0⟩⟩
end AmpZ

/-- Integer mirror of the amplitudes (scaled by 4). -/
def ampZ : SS.BitString 7 → SS.ZSqrt235i := fun x =>
  if x = bs false false true  true  false false true then AmpZ.r3 (-1)
  else if x = bs false true  false false true  false true then AmpZ.r3 (-1)
  else if x = bs false true  true  true  false true  false then AmpZ.ir2 (-1)
  else if x = bs true  false false false false false false then AmpZ.rat (1)
  else if x = bs true  false false true  true  true  false then AmpZ.ir2 (1)
  else if x = bs true  false true  false true  true  false then AmpZ.ir2 (-1)
  else if x = bs true  true  false false false true  true then AmpZ.ir2 (-1)
  else if x = bs true  true  true  true  true  false false then AmpZ.rat (-1)
  else SS.ZSqrt235i.zero

/-- Integer mirror of the probabilities (scaled by 16). -/
def probZ : SS.BitString 7 → Int := fun x =>
  if x = bs false false true  true  false false true then (3)
  else if x = bs false true  false false true  false true then (3)
  else if x = bs false true  true  true  false true  false then (2)
  else if x = bs true  false false false false false false then (1)
  else if x = bs true  false false true  true  true  false then (2)
  else if x = bs true  false true  false true  true  false then (2)
  else if x = bs true  true  false false false true  true then (2)
  else if x = bs true  true  true  true  true  false false then (1)
  else 0

/-- The scaling map back to the declared amplitudes. -/
def scaleD (z : SS.ZSqrt235i) : QSqrt235i := QSqrt235i.smul (1/4) (SS.ZSqrt235i.toQ z)

@[simp] lemma sc_r3_neg1 : scaleD (AmpZ.r3 (-1)) = Amp.r3 (-1/4) := by
  simp [AmpZ.r3, Amp.r3, scaleD, QSqrt235i.smul, QSqrt23i.smul, SS.ZSqrt235i.toQ, SS.ZSqrt23i.toQ,
    SS.ZSqrt23i.zero, QSqrt235i.ofRat, QSqrt23i.ofRat,
    show (0 : QSqrt23i) = QSqrt23i.zero from rfl, QSqrt23i.zero]
  all_goals norm_num

@[simp] lemma sc_ir2_neg1 : scaleD (AmpZ.ir2 (-1)) = Amp.ir2 (-1/4) := by
  simp [AmpZ.ir2, Amp.ir2, scaleD, QSqrt235i.smul, QSqrt23i.smul, SS.ZSqrt235i.toQ, SS.ZSqrt23i.toQ,
    SS.ZSqrt23i.zero, QSqrt235i.ofRat, QSqrt23i.ofRat,
    show (0 : QSqrt23i) = QSqrt23i.zero from rfl, QSqrt23i.zero]
  all_goals norm_num

@[simp] lemma sc_rat_1 : scaleD (AmpZ.rat 1) = Amp.rat (1/4) := by
  simp [AmpZ.rat, Amp.rat, scaleD, QSqrt235i.smul, QSqrt23i.smul, SS.ZSqrt235i.toQ, SS.ZSqrt23i.toQ,
    SS.ZSqrt23i.zero, QSqrt235i.ofRat, QSqrt23i.ofRat,
    show (0 : QSqrt23i) = QSqrt23i.zero from rfl, QSqrt23i.zero]
  all_goals norm_num

@[simp] lemma sc_ir2_1 : scaleD (AmpZ.ir2 1) = Amp.ir2 (1/4) := by
  simp [AmpZ.ir2, Amp.ir2, scaleD, QSqrt235i.smul, QSqrt23i.smul, SS.ZSqrt235i.toQ, SS.ZSqrt23i.toQ,
    SS.ZSqrt23i.zero, QSqrt235i.ofRat, QSqrt23i.ofRat,
    show (0 : QSqrt23i) = QSqrt23i.zero from rfl, QSqrt23i.zero]
  all_goals norm_num

@[simp] lemma sc_rat_neg1 : scaleD (AmpZ.rat (-1)) = Amp.rat (-1/4) := by
  simp [AmpZ.rat, Amp.rat, scaleD, QSqrt235i.smul, QSqrt23i.smul, SS.ZSqrt235i.toQ, SS.ZSqrt23i.toQ,
    SS.ZSqrt23i.zero, QSqrt235i.ofRat, QSqrt23i.ofRat,
    show (0 : QSqrt23i) = QSqrt23i.zero from rfl, QSqrt23i.zero]
  all_goals norm_num

@[simp] lemma sc_zero : scaleD SS.ZSqrt235i.zero = Amp.z := by
  simp only [scaleD, Amp.z, QSqrt235i.smul, SS.ZSqrt235i.toQ, SS.ZSqrt23i.toQ,
    SS.ZSqrt235i.zero, SS.ZSqrt23i.zero, Int.cast_zero, QSqrt23i.smul_def,
    QSqrt23i.smul, mul_zero]
  rfl

lemma amp_eq : BD16v3c.code.amp = fun s => scaleD (ampZ s) := by
  funext s
  show BD16v3c.code.amp s = scaleD (ampZ s)
  unfold BD16v3c.code ampZ
  simp only [apply_ite scaleD, sc_ir2_1, sc_ir2_neg1, sc_r3_neg1, sc_rat_1, sc_rat_neg1, sc_zero]

/-- Rescaling of the integer probabilities. -/
def probQ (k : Int) : ℚ := (k : ℚ) / 16

@[simp] lemma pq_3 : probQ (3) = 3/16 := by norm_num [probQ]
@[simp] lemma pq_2 : probQ (2) = 1/8 := by norm_num [probQ]
@[simp] lemma pq_1 : probQ (1) = 1/16 := by norm_num [probQ]
@[simp] lemma pq_zero : probQ 0 = 0 := by norm_num [probQ]

lemma prob_eq : BD16v3c.code.prob = fun s => probQ (probZ s) := by
  funext s
  show BD16v3c.code.prob s = probQ (probZ s)
  unfold BD16v3c.code probZ
  simp only [apply_ite probQ, pq_3, pq_2, pq_1, pq_zero]

/-! ## Integer facts, decided by the kernel -/

theorem probZ_off : ∀ x, x ∉ BD16v3c.code.supp → probZ x = 0 := by decide
theorem probZ_nonneg : ∀ x ∈ BD16v3c.code.supp, 0 ≤ probZ x := by decide
theorem probZ_sum : (∑ x ∈ BD16v3c.code.supp, probZ x) = 16 := by decide
theorem zbal_int : ∀ i : Fin 7,
    (∑ x ∈ BD16v3c.code.supp, probZ x * (if x i = true then -1 else 1)) = 0 := by decide
theorem probamp_int : ∀ s ∈ BD16v3c.code.supp,
    SS.ZSqrt235i.mul (SS.ZSqrt235i.conj (ampZ s)) (ampZ s) = AmpZ.rat (probZ s) := by
  decide
theorem ampZ_off : ∀ s, s ∉ BD16v3c.code.supp → ampZ s = SS.ZSqrt235i.zero := by decide
theorem allKLZ : SS.allKLSatisfiedZ BD16v3c.code.supp ampZ 2 = true := by decide


/-! ## The rational statements -/

/-- **Layer 1, certified without `native_decide`.** -/
theorem layer1_kernel : BD16v3c.code.layer1OK := by
  simp only [BD16Code.layer1OK, Distance3Data.Layer1OK, BD16Code.toD3Data, prob_eq]
  refine ⟨by decide, ?_, ⟨?_, ?_, ?_⟩, ?_⟩
  · simp [BDAngleCondition, BD16v3c.code]; decide
  · intro x hx; simp [probZ_off x hx]
  · intro x hx
    have h := probZ_nonneg x hx
    simp only [probQ]
    exact div_nonneg (by exact_mod_cast h) (by norm_num)
  · simp only [probQ, ← Finset.sum_div]
    rw [show (∑ x ∈ BD16v3c.code.supp, ((probZ x : ℚ))) = ((16 : Int) : ℚ) by
      rw [← probZ_sum]; push_cast; ring]
    norm_num
  · intro i
    simp only [zExpectation, zSign, probQ]
    have h : ∀ x ∈ BD16v3c.code.supp, ((probZ x : ℚ)) / 16 * (((if x i = true then (-1 : Int) else 1) : Int) : ℚ)
        = ((((probZ x * (if x i = true then (-1 : Int) else 1)) : Int) : ℚ)) / 16 := by
      intro x _; push_cast; ring
    rw [Finset.sum_congr rfl h, ← Finset.sum_div]
    rw [show (∑ x ∈ BD16v3c.code.supp, ((((probZ x * (if x i = true then (-1 : Int) else 1)) : Int) : ℚ)))
        = ((((∑ x ∈ BD16v3c.code.supp, probZ x * (if x i = true then (-1 : Int) else 1)) : Int) : ℚ)) by
      push_cast; ring, zbal_int i]
    norm_num

/-- **Probability-amplitude consistency, certified without `native_decide`.** -/
theorem probamp_kernel : BD16v3c.code.probAmpConsistent := by
  intro s hs
  have hz := probamp_int s hs
  rw [amp_eq, prob_eq]
  simp only [scaleD, QSqrt235i.conj_smul, QSqrt235i.mul_smul_smul,
    ← SS.ZSqrt235i.toQ_conj, ← SS.ZSqrt235i.toQ_mul, hz]
  simp [AmpZ.rat, SS.ZSqrt235i.toQ, SS.ZSqrt23i.toQ, SS.ZSqrt23i.zero, QSqrt235i.smul,
    QSqrt23i.smul, QSqrt235i.ofRat, QSqrt23i.ofRat, probQ,
    show (0 : QSqrt23i) = QSqrt23i.zero from rfl, QSqrt23i.zero]
  ring

/-- **Layer 2, certified without `native_decide`.** -/
theorem layer2_kernel : BD16v3c.code.layer2OK 2 := by
  have h := SS.allKLSatisfied_of_Z_smul BD16v3c.code.supp ampZ 2 (q := 1/4) (by norm_num) allKLZ
  rw [BD16Code.layer2OK, amp_eq]
  exact h

/-- **The full distance-3 certificate.** -/
theorem isDistance3_kernel : BD16v3c.code.isDistance3 :=
  ⟨probamp_kernel, layer1_kernel, layer2_kernel⟩

theorem amp_vanish_kernel :
    ∀ s, s ∉ BD16v3c.code.supp → BD16v3c.code.amp s = SS.QSqrt235i.zero := by
  intro s hs
  rw [amp_eq]
  simp [ampZ_off s hs, Amp.z]
  rfl

/-- **Quantum statement, with the kernel as the only trusted base.** -/
theorem qec_kernel (P : SS.PauliString 7) (hw : P.wt ≤ 2) :
    SS.innerC (SS.BD16.state0 BD16v3c.code) (SS.pauliAct P (SS.BD16.state1 BD16v3c.code)) = 0
      ∧ SS.innerC (SS.BD16.state1 BD16v3c.code) (SS.pauliAct P (SS.BD16.state1 BD16v3c.code))
          = SS.innerC (SS.BD16.state0 BD16v3c.code) (SS.pauliAct P (SS.BD16.state0 BD16v3c.code)) :=
  SS.BD16.detects_weight2 BD16v3c.code isDistance3_kernel amp_vanish_kernel P hw

end BD16v3cKernel
