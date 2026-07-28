import SS.BD16Defs
import SS.BridgeBD16

/-!
# BD16 example #8: a = (1,1,2,2,3,3,3) (θ = 0 representative)

This file verifies the one-parameter BD16 family from BD16_distance3.tex
\S\ref{sec:bd16_1122333} by picking the concrete representative θ = 0.

The resulting amplitudes involve √10, so we rely on `QSqrt235i`.
-/

namespace BD16v8

open SS SS.Verify SS.BD16

def s0 : BitString 7 := bs false false false false false false false  -- 0000000

def s1 : BitString 7 := bs false false false true  false true  true   -- 0001011

def s2 : BitString 7 := bs false false true  false false true  true    -- 0010011

def s3 : BitString 7 := bs false true  true  true  true  false false   -- 0111100

def s4 : BitString 7 := bs true  false true  true  false false true    -- 1011001

def s5 : BitString 7 := bs true  false true  true  false true  false   -- 1011010

def s6 : BitString 7 := bs true  true  false false true  false true    -- 1100101

def s7 : BitString 7 := bs true  true  false false true  true  false   -- 1100110

/-- Support of `|0_L⟩` (8 elements). -/
def supp : Finset (BitString 7) := {s0, s1, s2, s3, s4, s5, s6, s7}

/-- BD16 code for a = (1,1,2,2,3,3,3), θ = 0 representative. -/
def code : BD16Code where
  a := ![1, 1, 2, 2, 3, 3, 3]
  supp := supp
  prob := fun x =>
    if x = s0 then 1/16
    else if x = s1 then 1/8
    else if x = s2 then 1/8
    else if x = s3 then 3/16
    else if x = s4 then 3/32
    else if x = s5 then 3/32
    else if x = s6 then 5/32
    else if x = s7 then 5/32
    else 0
  amp := fun x =>
    if x = s0 then Amp.rat (1/4)
    else if x = s1 then Amp.r2 (1/4)
    else if x = s2 then Amp.r2 (-1/4)
    else if x = s3 then Amp.ir3 (1/4)
    else if x = s4 then Amp.ir6 (1/8)
    else if x = s5 then Amp.ir6 (-1/8)
    else if x = s6 then Amp.ir10 (-1/8)
    else if x = s7 then Amp.ir10 (-1/8)
    else Amp.z

/-- Layer 1 verification. -/
theorem layer1_ok : code.layer1OK := by native_decide

/-- Layer 2 verification (full KL for all weight-≤2 Paulis). -/
theorem layer2_ok : code.layer2OK 2 := by native_decide


/-- Probability–amplitude consistency: `prob s = |amp s|^2` on the support,
    tying the two data fields together (checked by `native_decide` over
    the exact field `QSqrt235i`). -/
theorem probamp_ok : code.probAmpConsistent := by native_decide


/-- Amplitudes vanish off the support (side condition of the KL bridge). -/
theorem amp_vanish : ∀ s, s ∉ code.supp → code.amp s = SS.QSqrt235i.zero := by
  native_decide

/-- **Quantum statement.** This code detects every Pauli error of weight ≤ 2. -/
theorem qec (P : SS.PauliString 7) (hw : P.wt ≤ 2) :
    SS.innerC (SS.BD16.state0 code) (SS.pauliAct P (SS.BD16.state1 code)) = 0
      ∧ SS.innerC (SS.BD16.state1 code) (SS.pauliAct P (SS.BD16.state1 code))
          = SS.innerC (SS.BD16.state0 code) (SS.pauliAct P (SS.BD16.state0 code)) :=
  SS.BD16.detects_weight2 code ⟨probamp_ok, layer1_ok, layer2_ok⟩ amp_vanish P hw

end BD16v8
