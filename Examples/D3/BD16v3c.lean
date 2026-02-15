import SS.BD16Defs

/-!
# BD16 example #3c: ((7,2,3)) code with angle vector (0,1,2,2,3,3,4), Solution C

This file verifies Solution C of the BD16 code from BD16_distance3.tex §6.

## Parameters
- `n = 7` qubits, `m = 8`, `K = 2` logical states
- Angle vector: `a = (0,1,2,2,3,3,4)` in `ZMod 8`
- Signature norm: λ* = √30/4

## Support of `|0_L⟩` (8 elements)
```
  T = {0011001, 0100101, 0111010, 1000000, 1001110, 1010110, 1100011, 1111100}
```

## Amplitudes
```
  -√3/4 |0011001⟩ - √3/4 |0100101⟩ - i√2/4 |0111010⟩ + 1/4 |1000000⟩
  + i√2/4 |1001110⟩ - i√2/4 |1010110⟩ - i√2/4 |1100011⟩ - 1/4 |1111100⟩
```
-/

namespace BD16v3c

open SS SS.Verify SS.BD16

/-- The BD16 code with angle vector (0,1,2,2,3,3,4), Solution C. -/
def code : BD16Code where
  a := ![0, 1, 2, 2, 3, 3, 4]
  supp := {
    bs false false true  true  false false true,   -- 0011001
    bs false true  false false true  false true,   -- 0100101
    bs false true  true  true  false true  false,  -- 0111010
    bs true  false false false false false false,  -- 1000000
    bs true  false false true  true  true  false,  -- 1001110
    bs true  false true  false true  true  false,  -- 1010110
    bs true  true  false false false true  true,   -- 1100011
    bs true  true  true  true  true  false false   -- 1111100
  }
  prob := fun x =>
    if x = bs false false true  true  false false true  then 3/16      -- 0011001
    else if x = bs false true  false false true  false true  then 3/16 -- 0100101
    else if x = bs false true  true  true  false true  false then 1/8  -- 0111010
    else if x = bs true  false false false false false false then 1/16 -- 1000000
    else if x = bs true  false false true  true  true  false then 1/8  -- 1001110
    else if x = bs true  false true  false true  true  false then 1/8  -- 1010110
    else if x = bs true  true  false false false true  true  then 1/8  -- 1100011
    else if x = bs true  true  true  true  true  false false then 1/16 -- 1111100
    else 0
  amp := fun x =>
    if x = bs false false true  true  false false true  then Amp.r3 (-1/4)       -- -√3/4
    else if x = bs false true  false false true  false true  then Amp.r3 (-1/4)  -- -√3/4
    else if x = bs false true  true  true  false true  false then Amp.ir2 (-1/4) -- -i√2/4
    else if x = bs true  false false false false false false then Amp.rat (1/4)   -- 1/4
    else if x = bs true  false false true  true  true  false then Amp.ir2 (1/4)  -- i√2/4
    else if x = bs true  false true  false true  true  false then Amp.ir2 (-1/4) -- -i√2/4
    else if x = bs true  true  false false false true  true  then Amp.ir2 (-1/4) -- -i√2/4
    else if x = bs true  true  true  true  true  false false then Amp.rat (-1/4) -- -1/4
    else Amp.z

/-- Layer 1 verification: SS + BD angle + normalization + Z-balance. -/
theorem layer1_ok : code.layer1OK := by native_decide

/-- Layer 2 verification: all weight-≤-2 KL constraints satisfied. -/
theorem layer2_ok : code.layer2OK 2 := by native_decide

end BD16v3c
