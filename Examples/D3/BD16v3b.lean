import SS.BD16Defs

/-!
# BD16 example #3b: ((7,2,3)) code with angle vector (0,1,2,2,3,3,4), Solution B

This file verifies Solution B of the BD16 code from BD16_distance3.tex §6.

## Parameters
- `n = 7` qubits, `m = 8`, `K = 2` logical states
- Angle vector: `a = (0,1,2,2,3,3,4)` in `ZMod 8`
- Signature norm: λ* = √23/4

## Support of `|0_L⟩` (8 elements)
```
  T = {0000000, 0010110, 0100011, 0111100, 1001110, 1011001, 1100101, 1111010}
```

## Amplitudes
```
  1/4 |0000000⟩ + i√2/4 |0010110⟩ - i√3/4 |0100011⟩ - √2/4 |0111100⟩
  + √2/4 |1001110⟩ - √3/4 |1011001⟩ + √2/4 |1100101⟩ + i/4 |1111010⟩
```
-/

namespace BD16v3b

open SS SS.Verify SS.BD16

/-- The BD16 code with angle vector (0,1,2,2,3,3,4), Solution B. -/
def code : BD16Code where
  a := ![0, 1, 2, 2, 3, 3, 4]
  supp := {
    bs false false false false false false false,  -- 0000000
    bs false false true  false true  true  false,  -- 0010110
    bs false true  false false false true  true,   -- 0100011
    bs false true  true  true  true  false false,  -- 0111100
    bs true  false false true  true  true  false,  -- 1001110
    bs true  false true  true  false false true,   -- 1011001
    bs true  true  false false true  false true,   -- 1100101
    bs true  true  true  true  false true  false   -- 1111010
  }
  prob := fun x =>
    if x = bs false false false false false false false then 1/16      -- 0000000
    else if x = bs false false true  false true  true  false then 1/8  -- 0010110
    else if x = bs false true  false false false true  true  then 3/16 -- 0100011
    else if x = bs false true  true  true  true  false false then 1/8  -- 0111100
    else if x = bs true  false false true  true  true  false then 1/8  -- 1001110
    else if x = bs true  false true  true  false false true  then 3/16 -- 1011001
    else if x = bs true  true  false false true  false true  then 1/8  -- 1100101
    else if x = bs true  true  true  true  false true  false then 1/16 -- 1111010
    else 0
  amp := fun x =>
    if x = bs false false false false false false false then Amp.rat (1/4)        -- 1/4
    else if x = bs false false true  false true  true  false then Amp.ir2 (1/4)   -- i√2/4
    else if x = bs false true  false false false true  true  then Amp.ir3 (-1/4)  -- -i√3/4
    else if x = bs false true  true  true  true  false false then Amp.r2 (-1/4)   -- -√2/4
    else if x = bs true  false false true  true  true  false then Amp.r2 (1/4)    -- √2/4
    else if x = bs true  false true  true  false false true  then Amp.r3 (-1/4)   -- -√3/4
    else if x = bs true  true  false false true  false true  then Amp.r2 (1/4)    -- √2/4
    else if x = bs true  true  true  true  false true  false then Amp.im (1/4)    -- i/4
    else Amp.z

/-- Layer 1 verification: SS + BD angle + normalization + Z-balance. -/
theorem layer1_ok : code.layer1OK := by native_decide

/-- Layer 2 verification: all weight-≤-2 KL constraints satisfied. -/
theorem layer2_ok : code.layer2OK 2 := by native_decide

end BD16v3b
