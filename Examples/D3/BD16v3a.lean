import SS.BD16Defs
import SS.BridgeBD16

/-!
# BD16 example #3a: ((7,2,3)) code with angle vector (0,1,2,2,3,3,4), Solution A

This file verifies Solution A of the BD16 code from BD16_distance3.tex §6.

## Parameters
- `n = 7` qubits, `m = 8`, `K = 2` logical states
- Angle vector: `a = (0,1,2,2,3,3,4)` in `ZMod 8`
- Residue: `b₀ = 0` (so `b₁ = 7 ≡ -1 mod 8`)
- Complementary convention: `|1_L⟩ = X^⊗7 |0_L⟩`
- Signature norm: λ* = √51/4

## Support of `|0_L⟩` (7 elements)
```
  T = {0100011, 0100101, 0111010, 1000000, 1001110, 1010110, 1011001}
```

## Amplitudes
```
  -i/4 |0100011⟩ - i/2 |0100101⟩ + √3/4 |0111010⟩
  - i/4 |1000000⟩ + √2/4 |1001110⟩ + √2/4 |1010110⟩ + √3/4 |1011001⟩
```

## Probabilities
```
  p = (1/16, 1/4, 3/16, 1/16, 1/8, 1/8, 3/16)
```
-/

namespace BD16v3a

open SS SS.Verify SS.BD16

/-- The BD16 code with angle vector (0,1,2,2,3,3,4), Solution A. -/
def code : BD16Code where
  a := ![0, 1, 2, 2, 3, 3, 4]
  supp := {
    bs false true  false false false true  true,   -- 0100011
    bs false true  false false true  false true,   -- 0100101
    bs false true  true  true  false true  false,  -- 0111010
    bs true  false false false false false false,  -- 1000000
    bs true  false false true  true  true  false,  -- 1001110
    bs true  false true  false true  true  false,  -- 1010110
    bs true  false true  true  false false true    -- 1011001
  }
  prob := fun x =>
    if x = bs false true  false false false true  true  then 1/16  -- 0100011: |i/4|² = 1/16
    else if x = bs false true  false false true  false true  then 1/4   -- 0100101: |i/2|² = 1/4
    else if x = bs false true  true  true  false true  false then 3/16  -- 0111010: |√3/4|² = 3/16
    else if x = bs true  false false false false false false then 1/16  -- 1000000: |i/4|² = 1/16
    else if x = bs true  false false true  true  true  false then 1/8   -- 1001110: |√2/4|² = 1/8
    else if x = bs true  false true  false true  true  false then 1/8   -- 1010110: |√2/4|² = 1/8
    else if x = bs true  false true  true  false false true  then 3/16  -- 1011001: |√3/4|² = 3/16
    else 0
  amp := fun x =>
    if x = bs false true  false false false true  true  then Amp.im (-1/4)  -- -i/4
    else if x = bs false true  false false true  false true  then Amp.im (-1/2)  -- -i/2
    else if x = bs false true  true  true  false true  false then Amp.r3 (1/4)   -- √3/4
    else if x = bs true  false false false false false false then Amp.im (-1/4)  -- -i/4
    else if x = bs true  false false true  true  true  false then Amp.r2 (1/4)   -- √2/4
    else if x = bs true  false true  false true  true  false then Amp.r2 (1/4)   -- √2/4
    else if x = bs true  false true  true  false false true  then Amp.r3 (1/4)   -- √3/4
    else Amp.z

/-- Layer 1 verification: SS + BD angle + normalization + Z-balance. -/
theorem layer1_ok : code.layer1OK := by native_decide

/-- Layer 2 verification: all weight-≤-2 KL constraints satisfied.
    Combined with Layer 1, this is a complete proof that Solution A
    of the BD16 code with angle vector (0,1,2,2,3,3,4) has distance ≥ 3. -/
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

end BD16v3a
