import SS.BridgeD3
import SS.BD16Defs

/-!
# From a `BD16Code` distance-3 certificate to the Knill--Laflamme conditions

`BD16Code.isDistance3` is a finite certificate.  This module turns it into the
genuine Knill--Laflamme statement for the two logical states of the complementary
ansatz, using the bridge of `SS/BridgeD3.lean`.

Like the distance-2 bridge, this needs one side condition that `isDistance3` does
*not* imply: the amplitudes must vanish off the support.  (`probAmpConsistent` only
quantifies over `s ∈ supp`, and neither `layer1OK` nor `layer2OK` constrains `amp`
elsewhere.)  It is decidable and holds for all twelve worked examples.
-/

namespace SS.BD16

open SS

noncomputable section

/-- `|0_L⟩` of a `BD16Code`, as a complex state. -/
def state0 (code : BD16Code) : State 7 ℂ := cToState code.amp
/-- `|1_L⟩ = X^{⊗7}|0_L⟩`. -/
def state1 (code : BD16Code) : State 7 ℂ := flipState (cToState code.amp)

/-- **Distance-3 certificate ⟹ Knill--Laflamme conditions.**  For every Pauli of
weight at most two the off-diagonal element vanishes and the two diagonal elements
agree, i.e. the code detects all weight-≤2 errors. -/
theorem detects_weight2 (code : BD16Code) (h : code.isDistance3)
    (hamp : ∀ s, s ∉ code.supp → code.amp s = QSqrt235i.zero)
    (P : PauliString 7) (hw : P.wt ≤ 2) :
    innerC (state0 code) (pauliAct P (state1 code)) = 0
      ∧ innerC (state1 code) (pauliAct P (state1 code))
          = innerC (state0 code) (pauliAct P (state0 code)) :=
  KL_of_allKLSatisfied code.supp code.amp hamp 2 h.2.2 P hw

end

end SS.BD16
