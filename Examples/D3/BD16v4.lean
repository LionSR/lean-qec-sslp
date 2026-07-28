import SS.BD16Defs
import SS.BridgeBD16

/-!
# BD16 example #4: ((7,2,3)) code with angle vector (1,1,1,1,3,3,5)

This file verifies the "clean representative" (θ=0, (x,y,z)=(1,2,3)) of the
continuous BD16 family from BD16_distance3.tex §8.

## Parameters
- `n = 7` qubits, `m = 8`, `K = 2` logical states
- Angle vector: `a = (1,1,1,1,3,3,5)` in `ZMod 8`
- Signature norm: λ* = √177/8

## Support of `|0_L⟩` (13 elements)
The full residue class S₀(a) has 13 elements.

## Amplitudes (at θ=0, (x,y,z)=(1,2,3))
All amplitudes are real, in ℚ(√6):
```
  1/4 (|0000000⟩ - |0000011⟩ - |0000101⟩)
  + 1/4 (|0011110⟩ + |1100110⟩)
  + 1/8 (|0101110⟩ + |1010110⟩)
  + 3/8 (|0110110⟩ + |1001110⟩)
  + √6/8 (|1011001⟩ + |1101001⟩ - |0111001⟩ - |1110001⟩)
```
-/

namespace BD16v4

open SS SS.Verify SS.BD16

/-- The BD16 code with angle vector (1,1,1,1,3,3,5), clean representative. -/
def code : BD16Code where
  a := ![1, 1, 1, 1, 3, 3, 5]
  supp := {
    bs false false false false false false false,  -- 0000000
    bs false false false false false true  true,   -- 0000011
    bs false false false false true  false true,   -- 0000101
    bs false false true  true  true  true  false,  -- 0011110
    bs false true  false true  true  true  false,  -- 0101110
    bs false true  true  false true  true  false,  -- 0110110
    bs false true  true  true  false false true,   -- 0111001
    bs true  false false true  true  true  false,  -- 1001110
    bs true  false true  false true  true  false,  -- 1010110
    bs true  false true  true  false false true,   -- 1011001
    bs true  true  false false true  true  false,  -- 1100110
    bs true  true  false true  false false true,   -- 1101001
    bs true  true  true  false false false true    -- 1110001
  }
  prob := fun x =>
    if x = bs false false false false false false false then 1/16      -- 0000000: (1/4)²
    else if x = bs false false false false false true  true  then 1/16 -- 0000011: (1/4)²
    else if x = bs false false false false true  false true  then 1/16 -- 0000101: (1/4)²
    else if x = bs false false true  true  true  true  false then 1/16 -- 0011110: (1/4)²
    else if x = bs false true  false true  true  true  false then 1/64 -- 0101110: (1/8)²
    else if x = bs false true  true  false true  true  false then 9/64 -- 0110110: (3/8)²
    else if x = bs false true  true  true  false false true  then 3/32 -- 0111001: (√6/8)²
    else if x = bs true  false false true  true  true  false then 9/64 -- 1001110: (3/8)²
    else if x = bs true  false true  false true  true  false then 1/64 -- 1010110: (1/8)²
    else if x = bs true  false true  true  false false true  then 3/32 -- 1011001: (√6/8)²
    else if x = bs true  true  false false true  true  false then 1/16 -- 1100110: (1/4)²
    else if x = bs true  true  false true  false false true  then 3/32 -- 1101001: (√6/8)²
    else if x = bs true  true  true  false false false true  then 3/32 -- 1110001: (√6/8)²
    else 0
  amp := fun x =>
    if x = bs false false false false false false false then Amp.rat (1/4)       -- 1/4
    else if x = bs false false false false false true  true  then Amp.rat (-1/4) -- -1/4
    else if x = bs false false false false true  false true  then Amp.rat (-1/4) -- -1/4
    else if x = bs false false true  true  true  true  false then Amp.rat (1/4)  -- 1/4 (y/8 · 2 = 2/8)
    else if x = bs false true  false true  true  true  false then Amp.rat (1/8)  -- 1/8 (x/8 = 1/8)
    else if x = bs false true  true  false true  true  false then Amp.rat (3/8)  -- 3/8 (z/8 = 3/8)
    else if x = bs false true  true  true  false false true  then Amp.r6 (-1/8)  -- -√6/8
    else if x = bs true  false false true  true  true  false then Amp.rat (3/8)  -- 3/8
    else if x = bs true  false true  false true  true  false then Amp.rat (1/8)  -- 1/8
    else if x = bs true  false true  true  false false true  then Amp.r6 (1/8)   -- √6/8
    else if x = bs true  true  false false true  true  false then Amp.rat (1/4)  -- 1/4
    else if x = bs true  true  false true  false false true  then Amp.r6 (1/8)   -- √6/8
    else if x = bs true  true  true  false false false true  then Amp.r6 (-1/8)  -- -√6/8
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

end BD16v4
