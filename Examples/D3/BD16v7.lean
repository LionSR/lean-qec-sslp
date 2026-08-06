import SS.BD16Defs
import SS.BridgeBD16

/-!
# BD16 example #7: ((7,2,3)) code with angle vector (1,1,2,2,2,3,4)

This file verifies a uniform-magnitude (phase-only) BD16 solution from
BD16_distance3.tex \S\ref{sec:bd16_1122234}.

We take the explicit "Solution 1" with λ* = √7/4.

## Parameters
- `n = 7`, `m = 8`, `K = 2`
- Angle vector: `a = (1,1,2,2,2,3,4)`
- Residues `(b₀,b₁) = (0,7)` and complementary convention `|1_L⟩ = X^⊗7 |0_L⟩`

## Support
Here `S₀(a)` has size 16 and we use the full residue-0 class as support.
All probabilities are uniform: `p_s = 1/16`.
-/

namespace BD16v7

open SS SS.Verify SS.BD16

/-- The residue-0 subset-sum support `S₀` for a = (1,1,2,2,2,3,4). -/
def supp : Finset (BitString 7) := {
  bs false false false false false false false,  -- 0000000
  bs false false false true  true  false true,   -- 0001101
  bs false false true  false true  false true,   -- 0010101
  bs false false true  true  false false true,   -- 0011001
  bs false true  false false false true  true,   -- 0100011
  bs false true  false true  true  true  false,  -- 0101110
  bs false true  true  false true  true  false,  -- 0110110
  bs false true  true  true  false true  false,  -- 0111010
  bs true  false false false false true  true,   -- 1000011
  bs true  false false true  true  true  false,  -- 1001110
  bs true  false true  false true  true  false,  -- 1010110
  bs true  false true  true  false true  false,  -- 1011010
  bs true  true  false false true  false true,   -- 1100101
  bs true  true  false true  false false true,   -- 1101001
  bs true  true  true  false false false true,   -- 1110001
  bs true  true  true  true  true  false false   -- 1111100
}

/-- Uniform-magnitude BD16 code for a = (1,1,2,2,2,3,4), Solution 1 (λ* = √7/4). -/
def code : BD16Code where
  a := ![1, 1, 2, 2, 2, 3, 4]
  supp := supp
  prob := fun x => if x ∈ supp then 1/16 else 0
  amp := fun x =>
    if x = bs false false false false false false false then Amp.rat (1/4)
    else if x = bs false false false true  true  false true  then Amp.im (-1/4)
    else if x = bs false false true  false true  false true  then Amp.im (1/4)
    else if x = bs false false true  true  false false true  then Amp.im (-1/4)
    else if x = bs false true  false false false true  true  then Amp.im (-1/4)
    else if x = bs false true  false true  true  true  false then Amp.rat (-1/4)
    else if x = bs false true  true  false true  true  false then Amp.rat (1/4)
    else if x = bs false true  true  true  false true  false then Amp.rat (1/4)
    else if x = bs true  false false false false true  true  then Amp.im (-1/4)
    else if x = bs true  false false true  true  true  false then Amp.rat (1/4)
    else if x = bs true  false true  false true  true  false then Amp.rat (1/4)
    else if x = bs true  false true  true  false true  false then Amp.rat (-1/4)
    else if x = bs true  true  false false true  false true  then Amp.rat (-1/4)
    else if x = bs true  true  false true  false false true  then Amp.rat (-1/4)
    else if x = bs true  true  true  false false false true  then Amp.rat (-1/4)
    else if x = bs true  true  true  true  true  false false then Amp.im (-1/4)
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

end BD16v7
