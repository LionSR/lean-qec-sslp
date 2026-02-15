import SS.Verify
import SS.FullKL
import SS.BDSymmetry

/-!
# Distance-3 verification bundle

This module extends the distance-2 verification infrastructure (`SS.Verify`) with
the combinatorial checks needed for distance-3 codes under the **complementary convention**
`|1_L⟩ = X^⊗n |0_L⟩`.

## Overview

For a distance-3 code with `K = 2` logical states, verification proceeds in layers:

### Layer 1 (Combinatorial — this module)
All checks are decidable and can be verified via `native_decide`:
- SS condition: support contained in residue class
- BD angle condition: `∑ aᵢ ≡ -1 (mod m)`
- Z-type balance: `⟨0_L|Zᵢ|0_L⟩ = 0` (each qubit balanced)
- Intersection screen: enumerate which weight-≤-2 Paulis have automatic KL
- Count non-automatic constraints (should match the theoretical prediction)

### Layer 2 (Amplitude-dependent — future modules)
For the non-automatic Paulis, verify explicit finite sums over intersection sets
equal zero. This requires exact amplitude data in an appropriate number field.

## References

- BD16_distance3.tex, Sections 2.3–2.4 and Proposition 5.4
-/

namespace SS

namespace Verify

open scoped BigOperators

/-- Data bundle for a distance-3 code under the complementary convention.
    Only the `|0_L⟩` state data is needed; `|1_L⟩` is derived by complement. -/
structure Distance3Data (n m : ℕ) [NeZero m] where
  /-- Angle vector (weights) in `ZMod m`. -/
  a : Fin n → ZMod m
  /-- Residue for `|0_L⟩`. The residue for `|1_L⟩` is `b₀ + ∑ aᵢ`. -/
  b₀ : ZMod m
  /-- Support of `|0_L⟩` as a finset. -/
  supp₀ : Finset (BitString n)
  /-- Probability distribution on `supp₀` (for Z-type / LP checks). -/
  prob₀ : BitString n → ℚ

/-- Layer 1 verification goals for a distance-3 code.
    All are decidable and can be checked via `native_decide`. -/
def Distance3Data.Layer1OK {n m : ℕ} [NeZero m] (d : Distance3Data n m) : Prop :=
  -- (1) SS: support is contained in residue class
  SSConditionSupport' (m := m) d.a d.b₀ d.supp₀ ∧
  -- (2) BD angle condition: ∑ aᵢ = -1 in ZMod m
  BDAngleCondition (m := m) d.a ∧
  -- (3) Probability normalization
  IsNormalizedProb d.supp₀ d.prob₀ ∧
  -- (4) Z-type balance: ⟨0_L|Zᵢ|0_L⟩ = 0 for all i
  (∀ i : Fin n, zExpectation d.supp₀ d.prob₀ i = 0)

/-- The number of non-automatic KL constraints for weight ≤ `w` Paulis.
    For the (1,2,2,2,2,3,3) BD16 example with weight ≤ 2, this should be 25. -/
def Distance3Data.numNonAuto {n m : ℕ} [NeZero m] (d : Distance3Data n m) (w : ℕ) : ℕ :=
  numNonAutomatic d.supp₀ w

-- Decidability instances for Layer 1

instance {n m : ℕ} [NeZero m] (d : Distance3Data n m) :
    Decidable d.Layer1OK := by
  dsimp [Distance3Data.Layer1OK]
  -- Make each conjunct decidable
  letI : DecidablePred (fun (s : BitString n) => s ∈ d.supp₀ → weight (m := m) d.a s = d.b₀) :=
    fun s => by infer_instance
  have : Decidable (SSConditionSupport' (m := m) d.a d.b₀ d.supp₀) := by
    dsimp [SSConditionSupport']
    exact Fintype.decidableForallFintype
  have : Decidable (BDAngleCondition (m := m) d.a) := by
    dsimp [BDAngleCondition]
    infer_instance
  have : Decidable (IsNormalizedProb d.supp₀ d.prob₀) := by
    infer_instance
  have : Decidable (∀ i : Fin n, zExpectation d.supp₀ d.prob₀ i = 0) := by
    exact Fintype.decidableForallFintype
  infer_instance

end Verify

end SS
