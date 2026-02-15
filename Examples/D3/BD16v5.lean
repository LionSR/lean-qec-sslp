import SS.BD16Defs

/-!
# BD16 example #5: ((7,2,3)) code with angle vector (1,1,1,1,3,4,4)

This file verifies the "paste-ready representative" (all αᵢ = +1, τ = 0) of
the 128-element BD16 family from BD16_distance3.tex §7.

## Parameters
- `n = 7` qubits, `m = 8`, `K = 2` logical states
- Angle vector: `a = (1,1,1,1,3,4,4)` in `ZMod 8`
- Signature norm: λ* = √62/4

## Support of `|0_L⟩` (12 elements = full S₀)
All magnitudes are 1/4 or √3/4; all phases are in {±1, ±i}.

## Amplitudes
```
  1/4 |0000000⟩ + 1/4 |0000011⟩
  + i/4 (|0001101⟩ + |0010101⟩ + |0100101⟩ + |1000101⟩)
  - i/4 (|0001110⟩ + |0010110⟩ + |0100110⟩ + |1000110⟩)
  + i√3/4 (|1111001⟩ + |1111010⟩)
```
-/

namespace BD16v5

open SS SS.Verify SS.BD16

/-- The BD16 code with angle vector (1,1,1,1,3,4,4), paste-ready representative. -/
def code : BD16Code where
  a := ![1, 1, 1, 1, 3, 4, 4]
  supp := {
    bs false false false false false false false,  -- 0000000
    bs false false false false false true  true,   -- 0000011
    bs false false false true  true  false true,   -- 0001101
    bs false false false true  true  true  false,  -- 0001110
    bs false false true  false true  false true,   -- 0010101
    bs false false true  false true  true  false,  -- 0010110
    bs false true  false false true  false true,   -- 0100101
    bs false true  false false true  true  false,  -- 0100110
    bs true  false false false true  false true,   -- 1000101
    bs true  false false false true  true  false,  -- 1000110
    bs true  true  true  true  false false true,   -- 1111001
    bs true  true  true  true  false true  false   -- 1111010
  }
  prob := fun x =>
    if x = bs true  true  true  true  false false true  then 3/16     -- 1111001: |i√3/4|² = 3/16
    else if x = bs true  true  true  true  false true  false then 3/16 -- 1111010: |i√3/4|² = 3/16
    else if x = bs false false false false false false false then 1/16 -- 0000000
    else if x = bs false false false false false true  true  then 1/16 -- 0000011
    else if x = bs false false false true  true  false true  then 1/16 -- 0001101
    else if x = bs false false false true  true  true  false then 1/16 -- 0001110
    else if x = bs false false true  false true  false true  then 1/16 -- 0010101
    else if x = bs false false true  false true  true  false then 1/16 -- 0010110
    else if x = bs false true  false false true  false true  then 1/16 -- 0100101
    else if x = bs false true  false false true  true  false then 1/16 -- 0100110
    else if x = bs true  false false false true  false true  then 1/16 -- 1000101
    else if x = bs true  false false false true  true  false then 1/16 -- 1000110
    else 0
  amp := fun x =>
    if x = bs false false false false false false false then Amp.rat (1/4)        -- 1/4
    else if x = bs false false false false false true  true  then Amp.rat (1/4)   -- 1/4
    else if x = bs false false false true  true  false true  then Amp.im (1/4)    -- i/4
    else if x = bs false false false true  true  true  false then Amp.im (-1/4)   -- -i/4
    else if x = bs false false true  false true  false true  then Amp.im (1/4)    -- i/4
    else if x = bs false false true  false true  true  false then Amp.im (-1/4)   -- -i/4
    else if x = bs false true  false false true  false true  then Amp.im (1/4)    -- i/4
    else if x = bs false true  false false true  true  false then Amp.im (-1/4)   -- -i/4
    else if x = bs true  false false false true  false true  then Amp.im (1/4)    -- i/4
    else if x = bs true  false false false true  true  false then Amp.im (-1/4)   -- -i/4
    else if x = bs true  true  true  true  false false true  then Amp.ir3 (1/4)   -- i√3/4
    else if x = bs true  true  true  true  false true  false then Amp.ir3 (1/4)   -- i√3/4
    else Amp.z

/-- Layer 1 verification: SS + BD angle + normalization + Z-balance. -/
theorem layer1_ok : code.layer1OK := by native_decide

/-- Layer 2 verification: all weight-≤-2 KL constraints satisfied. -/
theorem layer2_ok : code.layer2OK 2 := by native_decide

end BD16v5
