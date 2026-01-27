import SS.Basic
import SS.ResidueShiftScreen
import SS.DiagonalAction
import SS.ZTypeKL

/-!
# Verification helpers for concrete examples

This module provides decidability instances for the *finite* SS/SSLP conditions so that
example files can use `by native_decide` once they provide concrete data.

Design goal: keep examples “data-only”.

Notes:
- We avoid `classical`/`propDecidable` so that `native_decide` has executable code.
- The key trick is to unfold the relevant definitions and then use
  `Fintype.decidableForallFintype` with locally provided `DecidablePred` instances.
-/

namespace SS

namespace Verify

open scoped BigOperators

/-!
## Decidability instances

These are intentionally placed in a separate module so the core library stays lightweight.
Import `SS.Verify` in an example file if you want `native_decide` automation.
-/

/-- Membership in an SS residue class `Sk a bk` is decidable (computably). -/
instance {m n : ℕ} [NeZero m] (a : Fin n → ZMod m) (bk : ZMod m) :
    DecidablePred (Sk (m := m) a bk) :=
  fun s => by
    -- `s ∈ Sk a bk` is definitionally `weight a s = bk`.
    simpa [Sk] using (inferInstance : Decidable (weight (m := m) a s = bk))

/-- The elementwise SS condition on a finite support is decidable (computably). -/
instance {m n : ℕ} [NeZero m] (a : Fin n → ZMod m) (bk : ZMod m)
    (supp : Finset (BitString n)) :
    Decidable (SSConditionSupport' (m := m) a bk supp) := by
  -- unfold to a `∀ s, ...` shape and use finiteness of `BitString n`
  dsimp [SSConditionSupport']
  let p : BitString n → Prop := fun s => s ∈ supp → weight (m := m) a s = bk
  letI : DecidablePred p := fun s => by infer_instance
  -- decide the (finite) `∀ s`
  simpa [p] using (Fintype.decidableForallFintype (p := p))

/-- The residue-shift screen is decidable (computably). -/
instance {m n K : ℕ} [NeZero m] (a : Fin n → ZMod m) (S : Fin K → ZMod m) :
    Decidable (ResidueShiftScreen (m := m) a S) := by
  dsimp [ResidueShiftScreen]
  let p : Fin n → Prop := fun i =>
    ∀ j k : Fin K, j ≠ k → S j - S k ≠ a i ∧ S j - S k ≠ -a i
  letI : DecidablePred p := fun i => by infer_instance
  simpa [p] using (Fintype.decidableForallFintype (p := p))

/-- Z-type KL is decidable (computably). -/
instance {n K : ℕ} (supp : Fin K → Finset (BitString n)) (prob : Fin K → BitString n → ℚ) :
    Decidable (ZTypeKL (n := n) K supp prob) := by
  dsimp [ZTypeKL]
  let p : Fin n → Prop := fun i =>
    ∀ j k : Fin K, zExpectation (supp j) (prob j) i = zExpectation (supp k) (prob k) i
  letI : DecidablePred p := fun i => by infer_instance
  simpa [p] using (Fintype.decidableForallFintype (p := p))

/-- Z-type KL with an explicit target is decidable (computably). -/
instance {n K : ℕ} (supp : Fin K → Finset (BitString n)) (prob : Fin K → BitString n → ℚ)
    (target : Fin n → ℚ) :
    Decidable (ZTypeKL' (n := n) K supp prob target) := by
  dsimp [ZTypeKL']
  let p : Fin K → Prop := fun j => ∀ i : Fin n, zExpectation (supp j) (prob j) i = target i
  letI : DecidablePred p := fun j => by infer_instance
  simpa [p] using (Fintype.decidableForallFintype (p := p))

/-- Probability normalization on a finite support is decidable (computably). -/
instance {n : ℕ} (supp : Finset (BitString n)) (p : BitString n → ℚ) :
    Decidable (IsNormalizedProb (n := n) supp p) := by
  dsimp [IsNormalizedProb]
  -- Make the two `∀ x` conjuncts decidable via `Fintype.decidableForallFintype`.
  let P0 : BitString n → Prop := fun x => x ∉ supp → p x = 0
  letI : DecidablePred P0 := fun x => by infer_instance
  let P1 : BitString n → Prop := fun x => x ∈ supp → 0 ≤ p x
  letI : DecidablePred P1 := fun x => by infer_instance
  -- Now the whole conjunction is decidable by typeclass search.
  infer_instance

/-!
## A small “data-only” bundle for examples

If you define an `ExampleData` value with concrete `n,m,K` and data fields,
you should be able to prove `ex.OK` via `by native_decide`.
-/

/-- Concrete-example data bundle (supports + probabilities + target Z expectations). -/
structure ExampleData (n m K : ℕ) [NeZero m] where
  a : Fin n → ZMod m
  S : Fin K → ZMod m
  supp : Fin K → Finset (BitString n)
  prob : Fin K → BitString n → ℚ
  targetZ : Fin n → ℚ

/-- The bundled verification goals for an example. -/
def ExampleData.OK {n m K : ℕ} [NeZero m] (ex : ExampleData n m K) : Prop :=
  (∀ k : Fin K, SSConditionSupport' (m := m) ex.a (ex.S k) (ex.supp k)) ∧
  ResidueShiftScreen (m := m) ex.a ex.S ∧
  (∀ k : Fin K, IsNormalizedProb (n := n) (ex.supp k) (ex.prob k)) ∧
  ZTypeKL' (n := n) K ex.supp ex.prob ex.targetZ

/-- `ExampleData.OK` is decidable (computably), enabling one-line `native_decide` checks. -/
instance {n m K : ℕ} [NeZero m] (ex : ExampleData n m K) : Decidable ex.OK := by
  dsimp [ExampleData.OK]
  -- make the two `∀ k` conjuncts decidable
  let SSₖ : Fin K → Prop := fun k => SSConditionSupport' (m := m) ex.a (ex.S k) (ex.supp k)
  letI : DecidablePred SSₖ := fun k => by infer_instance
  have _ : Decidable (∀ k : Fin K, SSₖ k) := by
    simpa [SSₖ] using (Fintype.decidableForallFintype (p := SSₖ))

  let Normₖ : Fin K → Prop := fun k => IsNormalizedProb (n := n) (ex.supp k) (ex.prob k)
  letI : DecidablePred Normₖ := fun k => by infer_instance
  have _ : Decidable (∀ k : Fin K, Normₖ k) := by
    simpa [Normₖ] using (Fintype.decidableForallFintype (p := Normₖ))

  -- remaining conjuncts are decidable by the instances above
  infer_instance

/-!
## Small-support probability helpers

These helpers let example files stay “data-only” when their supports have size 3 or 4.
-/

section SmallSupport

variable {n : ℕ} [DecidableEq (BitString n)]

/-- Probability function supported on three explicit basis strings. -/
def probThree (x1 x2 x3 : BitString n) (p1 p2 p3 : ℚ) : BitString n → ℚ :=
  fun x => if x = x1 then p1 else if x = x2 then p2 else if x = x3 then p3 else 0

/-- Probability function supported on four explicit basis strings. -/
def probFour (x1 x2 x3 x4 : BitString n) (p1 p2 p3 p4 : ℚ) : BitString n → ℚ :=
  fun x =>
    if x = x1 then p1 else if x = x2 then p2 else if x = x3 then p3 else if x = x4 then p4 else 0

/-- Expand `zExpectation` for a 3-element support and `probThree`. -/
lemma zExpectation_probThree (x1 x2 x3 : BitString n) (p1 p2 p3 : ℚ) (i : Fin n)
    (h12 : x1 ≠ x2) (h13 : x1 ≠ x3) (h23 : x2 ≠ x3) :
    zExpectation (n := n) ({x1, x2, x3} : Finset (BitString n)) (probThree x1 x2 x3 p1 p2 p3) i
      = p1 * zSign x1 i + p2 * zSign x2 i + p3 * zSign x3 i := by
  classical
  have hx1 : x1 ∉ ({x2, x3} : Finset (BitString n)) := by
    simp [h12, h13]
  have hx2 : x2 ∉ ({x3} : Finset (BitString n)) := by
    simp [h23]
  have h21 : x2 ≠ x1 := h12.symm
  have h31 : x3 ≠ x1 := h13.symm
  have h32 : x3 ≠ x2 := h23.symm
  -- expand the sum over `{x1,x2,x3}`
  simp [zExpectation, probThree, Finset.sum_insert, Finset.sum_singleton, hx1, hx2,
    h21, h31, h32, add_assoc]

/-- Expand `zExpectation` for a 4-element support and `probFour`. -/
lemma zExpectation_probFour (x1 x2 x3 x4 : BitString n) (p1 p2 p3 p4 : ℚ) (i : Fin n)
    (h12 : x1 ≠ x2) (h13 : x1 ≠ x3) (h14 : x1 ≠ x4)
    (h23 : x2 ≠ x3) (h24 : x2 ≠ x4) (h34 : x3 ≠ x4) :
    zExpectation (n := n) ({x1, x2, x3, x4} : Finset (BitString n))
        (probFour x1 x2 x3 x4 p1 p2 p3 p4) i
      = p1 * zSign x1 i + p2 * zSign x2 i + p3 * zSign x3 i + p4 * zSign x4 i := by
  classical
  have hx1 : x1 ∉ ({x2, x3, x4} : Finset (BitString n)) := by
    simp [h12, h13, h14]
  have hx2 : x2 ∉ ({x3, x4} : Finset (BitString n)) := by
    simp [h23, h24]
  have hx3 : x3 ∉ ({x4} : Finset (BitString n)) := by
    simp [h34]
  have h21 : x2 ≠ x1 := h12.symm
  have h31 : x3 ≠ x1 := h13.symm
  have h32 : x3 ≠ x2 := h23.symm
  have h41 : x4 ≠ x1 := h14.symm
  have h42 : x4 ≠ x2 := h24.symm
  have h43 : x4 ≠ x3 := h34.symm
  -- expand the sum over `{x1,x2,x3,x4}`
  simp [zExpectation, probFour, Finset.sum_insert, Finset.sum_singleton, hx1, hx2, hx3,
    h21, h31, h32, h41, h42, h43, add_assoc]

/-- Show `IsNormalizedProb` for a 3-element support and `probThree`. -/
lemma isNormalizedProb_probThree (x1 x2 x3 : BitString n) (p1 p2 p3 : ℚ)
    (h12 : x1 ≠ x2) (h13 : x1 ≠ x3) (h23 : x2 ≠ x3)
    (hp1 : 0 ≤ p1) (hp2 : 0 ≤ p2) (hp3 : 0 ≤ p3) (hsum : p1 + p2 + p3 = 1) :
    IsNormalizedProb (n := n) ({x1, x2, x3} : Finset (BitString n)) (probThree x1 x2 x3 p1 p2 p3) := by
  classical
  refine ⟨?_, ?_, ?_⟩
  · intro x hx
    have hx1 : x ≠ x1 := by intro h; apply hx; simp [h]
    have hx2 : x ≠ x2 := by intro h; apply hx; simp [h]
    have hx3 : x ≠ x3 := by intro h; apply hx; simp [h]
    simp [probThree, hx1, hx2, hx3]
  · intro x hx
    have hx' : x = x1 ∨ x = x2 ∨ x = x3 := by
      simpa using hx
    rcases hx' with rfl | rfl | rfl
    · simpa [probThree] using hp1
    · simpa [probThree, h12.symm] using hp2
    · simpa [probThree, h13.symm, h23.symm] using hp3
  · -- sum
    have hx1 : x1 ∉ ({x2, x3} : Finset (BitString n)) := by
      simp [h12, h13]
    have hx2' : x2 ∉ ({x3} : Finset (BitString n)) := by
      simp [h23]
    calc
      (∑ x ∈ ({x1, x2, x3} : Finset (BitString n)), probThree x1 x2 x3 p1 p2 p3 x)
          = probThree x1 x2 x3 p1 p2 p3 x1
              + probThree x1 x2 x3 p1 p2 p3 x2
              + probThree x1 x2 x3 p1 p2 p3 x3 := by
                simp [Finset.sum_insert, Finset.sum_singleton, hx1, hx2', add_assoc]
      _ = p1 + p2 + p3 := by
          have hx2x1 : x2 ≠ x1 := by simpa using h12.symm
          have hx3x1 : x3 ≠ x1 := by simpa using h13.symm
          have hx3x2 : x3 ≠ x2 := by simpa using h23.symm
          simp [probThree, hx2x1, hx3x1, hx3x2, add_assoc]
      _ = 1 := by
          simpa [add_assoc] using hsum

/-- Show `IsNormalizedProb` for a 4-element support and `probFour`. -/
lemma isNormalizedProb_probFour (x1 x2 x3 x4 : BitString n) (p1 p2 p3 p4 : ℚ)
    (h12 : x1 ≠ x2) (h13 : x1 ≠ x3) (h14 : x1 ≠ x4)
    (h23 : x2 ≠ x3) (h24 : x2 ≠ x4) (h34 : x3 ≠ x4)
    (hp1 : 0 ≤ p1) (hp2 : 0 ≤ p2) (hp3 : 0 ≤ p3) (hp4 : 0 ≤ p4)
    (hsum : p1 + p2 + p3 + p4 = 1) :
    IsNormalizedProb (n := n) ({x1, x2, x3, x4} : Finset (BitString n))
      (probFour x1 x2 x3 x4 p1 p2 p3 p4) := by
  classical
  refine ⟨?_, ?_, ?_⟩
  · intro x hx
    have hx1 : x ≠ x1 := by intro h; apply hx; simp [h]
    have hx2 : x ≠ x2 := by intro h; apply hx; simp [h]
    have hx3 : x ≠ x3 := by intro h; apply hx; simp [h]
    have hx4 : x ≠ x4 := by intro h; apply hx; simp [h]
    simp [probFour, hx1, hx2, hx3, hx4]
  · intro x hx
    have hx' : x = x1 ∨ x = x2 ∨ x = x3 ∨ x = x4 := by
      simpa using hx
    rcases hx' with rfl | rfl | rfl | rfl
    · simpa [probFour] using hp1
    · simpa [probFour, h12.symm] using hp2
    · simpa [probFour, h13.symm, h23.symm] using hp3
    · simpa [probFour, h14.symm, h24.symm, h34.symm] using hp4
  · -- sum
    have hx1 : x1 ∉ ({x2, x3, x4} : Finset (BitString n)) := by
      simp [h12, h13, h14]
    have hx2' : x2 ∉ ({x3, x4} : Finset (BitString n)) := by
      simp [h23, h24]
    have hx3' : x3 ∉ ({x4} : Finset (BitString n)) := by
      simp [h34]
    calc
      (∑ x ∈ ({x1, x2, x3, x4} : Finset (BitString n)), probFour x1 x2 x3 x4 p1 p2 p3 p4 x)
          = probFour x1 x2 x3 x4 p1 p2 p3 p4 x1
              + probFour x1 x2 x3 x4 p1 p2 p3 p4 x2
              + probFour x1 x2 x3 x4 p1 p2 p3 p4 x3
              + probFour x1 x2 x3 x4 p1 p2 p3 p4 x4 := by
                simp [Finset.sum_insert, Finset.sum_singleton, hx1, hx2', hx3', add_assoc]
      _ = p1 + p2 + p3 + p4 := by
          have hx2x1 : x2 ≠ x1 := by simpa using h12.symm
          have hx3x1 : x3 ≠ x1 := by simpa using h13.symm
          have hx3x2 : x3 ≠ x2 := by simpa using h23.symm
          have hx4x1 : x4 ≠ x1 := by simpa using h14.symm
          have hx4x2 : x4 ≠ x2 := by simpa using h24.symm
          have hx4x3 : x4 ≠ x3 := by simpa using h34.symm
          simp [probFour, hx2x1, hx3x1, hx3x2, hx4x1, hx4x2, hx4x3, add_assoc]
      _ = 1 := by
          simpa [add_assoc] using hsum

end SmallSupport

/-!
## Reusable helper: indicator states

This lets you derive the “global phase” statement from the support-level SS condition.
-/

section Indicator

variable {m n : ℕ}
variable {𝕜 : Type*} [MonoidWithZero 𝕜]

/-- Indicator amplitude function for a support finset. -/
def indicatorState (supp : Finset (BitString n)) : State n 𝕜 :=
  fun s => if s ∈ supp then (1 : 𝕜) else 0

lemma indicatorState_SS
    {m n : ℕ} [NeZero m]
    (a : Fin n → ZMod m) (bk : ZMod m) (supp : Finset (BitString n))
    (hSS : SSConditionSupport' (m := m) a bk supp) :
    SSConditionState (𝕜 := 𝕜) (m := m) a bk (indicatorState (𝕜 := 𝕜) supp) := by
  intro s hs
  by_cases hmem : s ∈ supp
  · exact hSS (s := s) hmem
  · simp [indicatorState, hmem] at hs

theorem Dact_indicatorState_eq_global
    {m n : ℕ} [NeZero m]
    (phase : ZMod m → 𝕜) (a : Fin n → ZMod m) (bk : ZMod m) (supp : Finset (BitString n))
    (hSS : SSConditionSupport' (m := m) a bk supp) :
    Dact (𝕜 := 𝕜) (m := m) phase a (indicatorState (𝕜 := 𝕜) supp)
      = fun s => phase bk * indicatorState (𝕜 := 𝕜) supp s := by
  exact Dact_eq_global_of_SS (phase := phase) (a := a) (bk := bk)
    (ψ := indicatorState (𝕜 := 𝕜) supp) (indicatorState_SS (𝕜 := 𝕜) a bk supp hSS)

end Indicator

end Verify

end SS
