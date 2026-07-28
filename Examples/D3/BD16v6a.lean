import SS.BD16Defs
import SS.BridgeBD16

/-!
# BD16 example #6a: ((7,2,3)) code with angle vector (1,1,1,2,2,4,4), Solution A

This file verifies Solution A (uniform-magnitude, λ* = 1) from BD16_distance3.tex §6.

## Parameters
- `n = 7` qubits, `m = 8`, `K = 2` logical states
- Angle vector: `a = (1,1,1,2,2,4,4)` in `ZMod 8`
- Signature norm: λ* = 1

## Support of `|0_L⟩` (16 elements = full S₀)
All amplitudes are ±1/4 or ±i/4 (uniform magnitude 1/4).

## Amplitudes
```
  1/4  |0000000⟩ - 1/4  |0000011⟩ + 1/4  |0001101⟩ + 1/4  |0001110⟩
  + i/4  |0110101⟩ - i/4  |0110110⟩ - i/4  |0111001⟩ + i/4  |0111010⟩
  + i/4  |1010101⟩ + i/4  |1010110⟩ - i/4  |1011001⟩ - i/4  |1011010⟩
  + i/4  |1100101⟩ - i/4  |1100110⟩ + i/4  |1101001⟩ - i/4  |1101010⟩
```
-/

namespace BD16v6a

open SS SS.Verify SS.BD16

/-- The BD16 code with angle vector (1,1,1,2,2,4,4), Solution A. -/
def code : BD16Code where
  a := ![1, 1, 1, 2, 2, 4, 4]
  supp := {
    bs false false false false false false false,  -- 0000000
    bs false false false false false true  true,   -- 0000011
    bs false false false true  true  false true,   -- 0001101
    bs false false false true  true  true  false,  -- 0001110
    bs false true  true  false true  false true,   -- 0110101
    bs false true  true  false true  true  false,  -- 0110110
    bs false true  true  true  false false true,   -- 0111001
    bs false true  true  true  false true  false,  -- 0111010
    bs true  false true  false true  false true,   -- 1010101
    bs true  false true  false true  true  false,  -- 1010110
    bs true  false true  true  false false true,   -- 1011001
    bs true  false true  true  false true  false,  -- 1011010
    bs true  true  false false true  false true,   -- 1100101
    bs true  true  false false true  true  false,  -- 1100110
    bs true  true  false true  false false true,   -- 1101001
    bs true  true  false true  false true  false   -- 1101010
  }
  prob := fun x =>
    if x = bs false false false false false false false then 1/16
    else if x = bs false false false false false true  true  then 1/16
    else if x = bs false false false true  true  false true  then 1/16
    else if x = bs false false false true  true  true  false then 1/16
    else if x = bs false true  true  false true  false true  then 1/16
    else if x = bs false true  true  false true  true  false then 1/16
    else if x = bs false true  true  true  false false true  then 1/16
    else if x = bs false true  true  true  false true  false then 1/16
    else if x = bs true  false true  false true  false true  then 1/16
    else if x = bs true  false true  false true  true  false then 1/16
    else if x = bs true  false true  true  false false true  then 1/16
    else if x = bs true  false true  true  false true  false then 1/16
    else if x = bs true  true  false false true  false true  then 1/16
    else if x = bs true  true  false false true  true  false then 1/16
    else if x = bs true  true  false true  false false true  then 1/16
    else if x = bs true  true  false true  false true  false then 1/16
    else 0
  amp := fun x =>
    if x = bs false false false false false false false then Amp.rat (1/4)         -- 1/4
    else if x = bs false false false false false true  true  then Amp.rat (-1/4)   -- -1/4
    else if x = bs false false false true  true  false true  then Amp.rat (1/4)    -- 1/4
    else if x = bs false false false true  true  true  false then Amp.rat (1/4)    -- 1/4
    else if x = bs false true  true  false true  false true  then Amp.im (1/4)     -- i/4
    else if x = bs false true  true  false true  true  false then Amp.im (-1/4)    -- -i/4
    else if x = bs false true  true  true  false false true  then Amp.im (-1/4)    -- -i/4
    else if x = bs false true  true  true  false true  false then Amp.im (1/4)     -- i/4
    else if x = bs true  false true  false true  false true  then Amp.im (1/4)     -- i/4
    else if x = bs true  false true  false true  true  false then Amp.im (1/4)     -- i/4
    else if x = bs true  false true  true  false false true  then Amp.im (-1/4)    -- -i/4
    else if x = bs true  false true  true  false true  false then Amp.im (-1/4)    -- -i/4
    else if x = bs true  true  false false true  false true  then Amp.im (1/4)     -- i/4
    else if x = bs true  true  false false true  true  false then Amp.im (-1/4)    -- -i/4
    else if x = bs true  true  false true  false false true  then Amp.im (1/4)     -- i/4
    else if x = bs true  true  false true  false true  false then Amp.im (-1/4)    -- -i/4
    else Amp.z

/-- Layer 1 verification: SS + BD angle + normalization + Z-balance. -/
theorem layer1_ok : code.layer1OK := by native_decide

/-- Layer 2 verification: all weight-≤-2 KL constraints satisfied. -/
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

end BD16v6a
