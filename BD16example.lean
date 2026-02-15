import SS.Distance3Verify
import SS.FullKLEval

/-!
# BD16 example: ((7,2,3)) code with transversal T gate

This file verifies Layer 1 (combinatorial) properties of the BD16 code with
angle vector `a = (1,2,2,2,2,3,3)` from BD16_distance3.tex §4.

## Parameters
- `n = 7` qubits, `m = 8`, `K = 2` logical states
- Angle vector: `a = (1,2,2,2,2,3,3)` in `ZMod 8`
- Residue: `b₀ = 0` (so `b₁ = 7 ≡ -1 mod 8`)
- Complementary convention: `|1_L⟩ = X^⊗7 |0_L⟩`

## Support of `|0_L⟩`
```
  T = {0000000, 0111100, 1001110, 1010101, 1011001, 1110010, 0100011}
```

## Probabilities (from `4|0_L⟩` normalization)
```
  p = (1/16, 3/16, 3/16, 1/8, 1/8, 1/16, 1/4)
```

## Expected results
- Layer 1 (SS + BD + normalization + Z-balance): all pass
- Non-automatic KL constraints for weight ≤ 2: exactly 25
  (Proposition 5.4 in BD16_distance3.tex)
-/

namespace BD16Example

open SS SS.Verify

-- Bitstring shorthand: `![b₀, b₁, ..., b₆]` for `Fin 7 → Bool`

def s0 : BitString 7 := ![false, false, false, false, false, false, false]  -- 0000000
def s1 : BitString 7 := ![false, true,  true,  true,  true,  false, false]  -- 0111100
def s2 : BitString 7 := ![true,  false, false, true,  true,  true,  false]  -- 1001110
def s3 : BitString 7 := ![true,  false, true,  false, true,  false, true ]  -- 1010101
def s4 : BitString 7 := ![true,  false, true,  true,  false, false, true ]  -- 1011001
def s5 : BitString 7 := ![true,  true,  true,  false, false, true,  false]  -- 1110010
def s6 : BitString 7 := ![false, true,  false, false, false, true,  true ]  -- 0100011

/-- Support of `|0_L⟩`. -/
def supp₀ : Finset (BitString 7) := {s0, s1, s2, s3, s4, s5, s6}

/-- Probability function: p(sᵢ) for each support element.
    From `4|0_L⟩` with amplitudes `1, √3, √3, √2, √2, 1, 2i`,
    so `p = |c|²` gives `(1, 3, 3, 2, 2, 1, 4)/16`. -/
def prob₀ : BitString 7 → ℚ := fun x =>
  if x = s0 then 1/16
  else if x = s1 then 3/16
  else if x = s2 then 3/16
  else if x = s3 then 1/8
  else if x = s4 then 1/8
  else if x = s5 then 1/16
  else if x = s6 then 1/4
  else 0

/-- The BD16 distance-3 data bundle. -/
def bd16Data : Distance3Data 7 8 where
  a := ![1, 2, 2, 2, 2, 3, 3]
  b₀ := 0
  supp₀ := supp₀
  prob₀ := prob₀

/-- Layer 1 verification: SS + BD angle + normalization + Z-balance. -/
theorem bd16_layer1_ok : bd16Data.Layer1OK := by native_decide

/-- The number of non-automatic KL constraints for weight ≤ 2 is exactly 25,
    matching Proposition 5.4 in BD16_distance3.tex. -/
theorem bd16_nonAuto_count : bd16Data.numNonAuto 2 = 25 := by native_decide

/-! ### Layer 2: Full KL verification with exact amplitudes

We use the specialization `θ₁ = θ₂ = 0`, giving amplitudes in `ℚ(√2, √3, i)`:

```
  c₀ = 1/4,  c₁ = √3/4,  c₂ = √3/4,  c₃ = √2/4,
  c₄ = √2/4,  c₅ = 1/4,  c₆ = i/2
```

All 25 non-automatic KL constraints (7 single-Z + 2 diagonal XY + 16 off-diagonal)
evaluate to zero, confirming distance 3.
-/

open SS.QSqrt23i in
/-- Amplitude vector for `|0_L⟩` with `θ₁ = θ₂ = 0`. -/
def amp₀ : BitString 7 → SS.QSqrt23i := fun x =>
  if x = s0 then ⟨1/4, 0, 0, 0, 0, 0, 0, 0⟩          -- 1/4
  else if x = s1 then ⟨0, 0, 1/4, 0, 0, 0, 0, 0⟩      -- √3/4
  else if x = s2 then ⟨0, 0, 1/4, 0, 0, 0, 0, 0⟩      -- √3/4
  else if x = s3 then ⟨0, 1/4, 0, 0, 0, 0, 0, 0⟩      -- √2/4
  else if x = s4 then ⟨0, 1/4, 0, 0, 0, 0, 0, 0⟩      -- √2/4
  else if x = s5 then ⟨1/4, 0, 0, 0, 0, 0, 0, 0⟩      -- 1/4
  else if x = s6 then ⟨0, 0, 0, 0, 1/2, 0, 0, 0⟩      -- i/2
  else ⟨0, 0, 0, 0, 0, 0, 0, 0⟩

/-- Layer 2 verification: all KL constraints for weight ≤ 2 Paulis are satisfied.
    This verifies the full distance-3 condition:
    - All 7 single-Z diagonal vanishing conditions
    - Both X₄Y₅ and Y₄X₅ diagonal vanishing conditions
    - All 16 off-diagonal {XX,XY,YX,YY} conditions on pairs (1,2),(3,6),(4,7),(5,7)
    Combined with Layer 1, this constitutes a complete machine-checked proof
    that the BD16 code with angle vector (1,2,2,2,2,3,3) has distance 3. -/
theorem bd16_layer2_ok : SS.AllKLSatisfied supp₀ amp₀ 2 := by native_decide

end BD16Example
