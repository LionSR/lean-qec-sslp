import SS.BD16Defs
import SS.BridgeBD16

/-!
# BD16 example #1: ((7,2,3)) code with angle vector (1,2,2,2,2,3,3)

This file verifies the BD16 code from BD16_distance3.tex §4.

## Parameters
- `n = 7` qubits, `m = 8`, `K = 2` logical states
- Angle vector: `a = (1,2,2,2,2,3,3)` in `ZMod 8`
- Residue: `b₀ = 0` (so `b₁ = 7 ≡ -1 mod 8`)
- Complementary convention: `|1_L⟩ = X^⊗7 |0_L⟩`

## Support of `|0_L⟩`
```
  T = {0000000, 0111100, 1001110, 1010101, 1011001, 1110010, 0100011}
```

## Amplitudes (θ₁ = θ₂ = 0 representative)
From `4|0_L⟩ = 1, √3, √3, √2, √2, 1, 2i` on the 7 support strings:

- `1/4` on 0000000 and 1110010
- `√3/4` on 0111100 and 1001110
- `√2/4` on 1010101 and 1011001
- `i/2` on 0100011

## Expected results
- Layer 1 (SS + BD + normalization + Z-balance): passes
- Non-automatic weight-≤2 KL constraints: exactly 25 (Proposition 5.4)
  Counted on the support this file uses, a 7-element subset of the 18-element
  residue class.  The corresponding count on the residue class itself is 83;
  that is the figure the classification table of the paper reports.
- Layer 2 (full KL, weight ≤ 2): passes via `native_decide`
-/

namespace BD16v1

open SS SS.Verify SS.BD16

/-- The BD16 code with angle vector (1,2,2,2,2,3,3). -/
def code : BD16Code where
  a := ![1, 2, 2, 2, 2, 3, 3]
  supp := {
    bs false false false false false false false,  -- 0000000
    bs false true  true  true  true  false false,  -- 0111100
    bs true  false false true  true  true  false,  -- 1001110
    bs true  false true  false true  false true,   -- 1010101
    bs true  false true  true  false false true,   -- 1011001
    bs true  true  true  false false true  false,  -- 1110010
    bs false true  false false false true  true    -- 0100011
  }
  prob := fun x =>
    if x = bs false false false false false false false then 1/16
    else if x = bs false true  true  true  true  false false then 3/16
    else if x = bs true  false false true  true  true  false then 3/16
    else if x = bs true  false true  false true  false true  then 1/8
    else if x = bs true  false true  true  false false true  then 1/8
    else if x = bs true  true  true  false false true  false then 1/16
    else if x = bs false true  false false false true  true  then 1/4
    else 0
  amp := fun x =>
    if x = bs false false false false false false false then Amp.rat (1/4)      -- 1/4
    else if x = bs false true  true  true  true  false false then Amp.r3 (1/4)  -- √3/4
    else if x = bs true  false false true  true  true  false then Amp.r3 (1/4)  -- √3/4
    else if x = bs true  false true  false true  false true  then Amp.r2 (1/4)  -- √2/4
    else if x = bs true  false true  true  false false true  then Amp.r2 (1/4)  -- √2/4
    else if x = bs true  true  true  false false true  false then Amp.rat (1/4) -- 1/4
    else if x = bs false true  false false false true  true  then Amp.im (1/2)  -- i/2
    else Amp.z

/-- Layer 1 verification: SS + BD angle + normalization + Z-balance. -/
theorem layer1_ok : code.layer1OK := by native_decide

/-- The number of non-automatic KL constraints for weight ≤ 2 is exactly 25,
    matching Proposition 5.4 in BD16_distance3.tex. -/
theorem nonAuto_count : code.numNonAuto 2 = 25 := by native_decide

/-- Layer 2 verification: all weight-≤-2 KL constraints satisfied.
    Combined with Layer 1, this is a complete proof that the BD16 code
    with angle vector (1,2,2,2,2,3,3) has distance ≥ 3. -/
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

end BD16v1
