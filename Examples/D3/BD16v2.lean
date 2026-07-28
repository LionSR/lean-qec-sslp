import SS.BD16Defs
import SS.BridgeBD16

/-!
# BD16 example #2: ((7,2,3)) code with angle vector (1,1,2,2,2,2,5)

This file verifies a BD16 code from BD16_distance3.tex §5.

## Parameters
- `n = 7` qubits, `m = 8`, `K = 2` logical states
- Angle vector: `a = (1,1,2,2,2,2,5)` in `ZMod 8`
- Residue: `b₀ = 0` (so `b₁ = 7 ≡ -1 mod 8`)
- Complementary convention: `|1_L⟩ = X^⊗7 |0_L⟩`

## Support of `|0_L⟩` (10 elements)
```
  T = {0000000, 0011110, 0100101, 0110001, 1000011,
       1001001, 1101110, 1110110, 1111010, 1111100}
```

## Amplitudes (from `4|0_L⟩`)
```
  1/4 |0000000⟩ - √3/4 |0011110⟩
  + i√2/4 (|0100101⟩ - |0110001⟩ - |1000011⟩ + |1001001⟩)
  + i/4 (|1101110⟩ + |1110110⟩ + |1111010⟩ + |1111100⟩)
```

## Probabilities
```
  p = (1/16, 3/16, 1/8, 1/8, 1/8, 1/8, 1/16, 1/16, 1/16, 1/16)
```
-/

namespace BD16v2

open SS SS.Verify SS.BD16

/-- The BD16 code with angle vector (1,1,2,2,2,2,5). -/
def code : BD16Code where
  a := ![1, 1, 2, 2, 2, 2, 5]
  supp := {
    bs false false false false false false false,  -- 0000000
    bs false false true  true  true  true  false,  -- 0011110
    bs false true  false false true  false true,   -- 0100101
    bs false true  true  false false false true,   -- 0110001
    bs true  false false false false true  true,   -- 1000011
    bs true  false false true  false false true,   -- 1001001
    bs true  true  false true  true  true  false,  -- 1101110
    bs true  true  true  false true  true  false,  -- 1110110
    bs true  true  true  true  false true  false,  -- 1111010
    bs true  true  true  true  true  false false   -- 1111100
  }
  prob := fun x =>
    if x = bs false false false false false false false then 1/16      -- 0000000: |1/4|² = 1/16
    else if x = bs false false true  true  true  true  false then 3/16 -- 0011110: |√3/4|² = 3/16
    else if x = bs false true  false false true  false true  then 1/8  -- 0100101: |i√2/4|² = 2/16
    else if x = bs false true  true  false false false true  then 1/8  -- 0110001: |-i√2/4|² = 2/16
    else if x = bs true  false false false false true  true  then 1/8  -- 1000011: |-i√2/4|² = 2/16
    else if x = bs true  false false true  false false true  then 1/8  -- 1001001: |i√2/4|² = 2/16
    else if x = bs true  true  false true  true  true  false then 1/16 -- 1101110: |i/4|² = 1/16
    else if x = bs true  true  true  false true  true  false then 1/16 -- 1110110: |i/4|² = 1/16
    else if x = bs true  true  true  true  false true  false then 1/16 -- 1111010: |i/4|² = 1/16
    else if x = bs true  true  true  true  true  false false then 1/16 -- 1111100: |i/4|² = 1/16
    else 0
  amp := fun x =>
    if x = bs false false false false false false false then Amp.rat (1/4)       -- 1/4
    else if x = bs false false true  true  true  true  false then Amp.r3 (-1/4)  -- -√3/4
    else if x = bs false true  false false true  false true  then Amp.ir2 (1/4)  -- i√2/4
    else if x = bs false true  true  false false false true  then Amp.ir2 (-1/4) -- -i√2/4
    else if x = bs true  false false false false true  true  then Amp.ir2 (-1/4) -- -i√2/4
    else if x = bs true  false false true  false false true  then Amp.ir2 (1/4)  -- i√2/4
    else if x = bs true  true  false true  true  true  false then Amp.im (1/4)   -- i/4
    else if x = bs true  true  true  false true  true  false then Amp.im (1/4)   -- i/4
    else if x = bs true  true  true  true  false true  false then Amp.im (1/4)   -- i/4
    else if x = bs true  true  true  true  true  false false then Amp.im (1/4)   -- i/4
    else Amp.z

/-- Layer 1 verification: SS + BD angle + normalization + Z-balance. -/
theorem layer1_ok : code.layer1OK := by native_decide

/-- Layer 2 verification: all weight-≤-2 KL constraints satisfied.
    Combined with Layer 1, this is a complete proof that the BD16 code
    with angle vector (1,1,2,2,2,2,5) has distance ≥ 3. -/
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

end BD16v2
