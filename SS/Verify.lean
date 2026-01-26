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
