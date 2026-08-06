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

/-- The bundled verification goals for an example.

The semantic content of this predicate is given by `SS.OK_detects_weight1`
(`SS/BridgeD2.lean`), which derives the Hilbert-space Knill--Laflamme conditions for
all weight-one Pauli errors.  That theorem also takes two decidable structural
hypotheses on the parameters --- `∀ i, ex.a i ≠ 0` and `Function.Injective ex.S` ---
which are standard for the SSLP construction.  They are discharged in the kernel by
`decide` wherever the bridge is applied, i.e. in every per-code `code_i_qec` of the
`full_native/`, `kernel_b1b2/` and `pure/` catalogue builds; the `packed/` build
certifies `OK` alone and does not instantiate the bridge.  Both hypotheses should be
supplied when applying `OK` to new data. -/
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

/-- Probability function supported on two explicit basis strings. -/
def probTwo (x1 x2 : BitString n) (p1 p2 : ℚ) : BitString n → ℚ :=
  fun x => if x = x1 then p1 else if x = x2 then p2 else 0

/-- Show `IsNormalizedProb` for a 2-element support and `probTwo`. -/
lemma isNormalizedProb_probTwo (x1 x2 : BitString n) (p1 p2 : ℚ)
    (h12 : x1 ≠ x2)
    (hp1 : 0 ≤ p1) (hp2 : 0 ≤ p2) (hsum : p1 + p2 = 1) :
    IsNormalizedProb (n := n) ({x1, x2} : Finset (BitString n))
      (probTwo x1 x2 p1 p2) := by
  classical
  refine ⟨?_, ?_, ?_⟩
  · intro x hx
    have hx1 : x ≠ x1 := by intro h; apply hx; simp [h]
    have hx2 : x ≠ x2 := by intro h; apply hx; simp [h]
    simp [probTwo, hx1, hx2]
  · intro x hx
    have hx' : x = x1 ∨ x = x2 := by simpa using hx
    rcases hx' with rfl | rfl
    · simpa [probTwo] using hp1
    · simpa [probTwo, h12.symm] using hp2
  · have hx1 : x1 ∉ ({x2} : Finset (BitString n)) := by simp [h12]
    calc
      (∑ x ∈ ({x1, x2} : Finset (BitString n)), probTwo x1 x2 p1 p2 x)
          = probTwo x1 x2 p1 p2 x1 + probTwo x1 x2 p1 p2 x2 := by
                simp [Finset.sum_insert, Finset.sum_singleton, hx1]
      _ = p1 + p2 := by
          have hx2x1 : x2 ≠ x1 := by simpa using h12.symm
          simp [probTwo, hx2x1]
      _ = 1 := hsum

/-- Probability function supported on five explicit basis strings. -/
def probFive (x1 x2 x3 x4 x5 : BitString n) (p1 p2 p3 p4 p5 : ℚ) : BitString n → ℚ :=
  fun x =>
    if x = x1 then p1 else if x = x2 then p2 else if x = x3 then p3
    else if x = x4 then p4 else if x = x5 then p5 else 0

/-- Show `IsNormalizedProb` for a 5-element support and `probFive`. -/
lemma isNormalizedProb_probFive (x1 x2 x3 x4 x5 : BitString n) (p1 p2 p3 p4 p5 : ℚ)
    (h12 : x1 ≠ x2) (h13 : x1 ≠ x3) (h14 : x1 ≠ x4) (h15 : x1 ≠ x5)
    (h23 : x2 ≠ x3) (h24 : x2 ≠ x4) (h25 : x2 ≠ x5)
    (h34 : x3 ≠ x4) (h35 : x3 ≠ x5) (h45 : x4 ≠ x5)
    (hp1 : 0 ≤ p1) (hp2 : 0 ≤ p2) (hp3 : 0 ≤ p3) (hp4 : 0 ≤ p4) (hp5 : 0 ≤ p5)
    (hsum : p1 + p2 + p3 + p4 + p5 = 1) :
    IsNormalizedProb (n := n) ({x1, x2, x3, x4, x5} : Finset (BitString n))
      (probFive x1 x2 x3 x4 x5 p1 p2 p3 p4 p5) := by
  classical
  refine ⟨?_, ?_, ?_⟩
  · intro x hx
    have hx1 : x ≠ x1 := by intro h; apply hx; simp [h]
    have hx2 : x ≠ x2 := by intro h; apply hx; simp [h]
    have hx3 : x ≠ x3 := by intro h; apply hx; simp [h]
    have hx4 : x ≠ x4 := by intro h; apply hx; simp [h]
    have hx5 : x ≠ x5 := by intro h; apply hx; simp [h]
    simp [probFive, hx1, hx2, hx3, hx4, hx5]
  · intro x hx
    have hx' : x = x1 ∨ x = x2 ∨ x = x3 ∨ x = x4 ∨ x = x5 := by simpa using hx
    rcases hx' with rfl | rfl | rfl | rfl | rfl
    · simpa [probFive] using hp1
    · simpa [probFive, h12.symm] using hp2
    · simpa [probFive, h13.symm, h23.symm] using hp3
    · simpa [probFive, h14.symm, h24.symm, h34.symm] using hp4
    · simpa [probFive, h15.symm, h25.symm, h35.symm, h45.symm] using hp5
  · have hx1 : x1 ∉ ({x2, x3, x4, x5} : Finset (BitString n)) := by simp [h12, h13, h14, h15]
    have hx2' : x2 ∉ ({x3, x4, x5} : Finset (BitString n)) := by simp [h23, h24, h25]
    have hx3' : x3 ∉ ({x4, x5} : Finset (BitString n)) := by simp [h34, h35]
    have hx4' : x4 ∉ ({x5} : Finset (BitString n)) := by simp [h45]
    calc
      (∑ x ∈ ({x1, x2, x3, x4, x5} : Finset (BitString n)),
            probFive x1 x2 x3 x4 x5 p1 p2 p3 p4 p5 x)
          = probFive x1 x2 x3 x4 x5 p1 p2 p3 p4 p5 x1
              + probFive x1 x2 x3 x4 x5 p1 p2 p3 p4 p5 x2
              + probFive x1 x2 x3 x4 x5 p1 p2 p3 p4 p5 x3
              + probFive x1 x2 x3 x4 x5 p1 p2 p3 p4 p5 x4
              + probFive x1 x2 x3 x4 x5 p1 p2 p3 p4 p5 x5 := by
                simp [Finset.sum_insert, Finset.sum_singleton, hx1, hx2', hx3', hx4', add_assoc]
      _ = p1 + p2 + p3 + p4 + p5 := by
          have h21 : x2 ≠ x1 := by simpa using h12.symm
          have h31 : x3 ≠ x1 := by simpa using h13.symm
          have h32 : x3 ≠ x2 := by simpa using h23.symm
          have h41 : x4 ≠ x1 := by simpa using h14.symm
          have h42 : x4 ≠ x2 := by simpa using h24.symm
          have h43 : x4 ≠ x3 := by simpa using h34.symm
          have h51 : x5 ≠ x1 := by simpa using h15.symm
          have h52 : x5 ≠ x2 := by simpa using h25.symm
          have h53 : x5 ≠ x3 := by simpa using h35.symm
          have h54 : x5 ≠ x4 := by simpa using h45.symm
          simp [probFive, h21, h31, h32, h41, h42, h43, h51, h52, h53, h54, add_assoc]
      _ = 1 := by simpa [add_assoc] using hsum

/-- Probability function supported on six explicit basis strings. -/
def probSix (x1 x2 x3 x4 x5 x6 : BitString n) (p1 p2 p3 p4 p5 p6 : ℚ) : BitString n → ℚ :=
  fun x =>
    if x = x1 then p1 else if x = x2 then p2 else if x = x3 then p3
    else if x = x4 then p4 else if x = x5 then p5 else if x = x6 then p6 else 0

/-- Show `IsNormalizedProb` for a 6-element support and `probSix`. -/
lemma isNormalizedProb_probSix (x1 x2 x3 x4 x5 x6 : BitString n) (p1 p2 p3 p4 p5 p6 : ℚ)
    (h12 : x1 ≠ x2) (h13 : x1 ≠ x3) (h14 : x1 ≠ x4) (h15 : x1 ≠ x5) (h16 : x1 ≠ x6)
    (h23 : x2 ≠ x3) (h24 : x2 ≠ x4) (h25 : x2 ≠ x5) (h26 : x2 ≠ x6)
    (h34 : x3 ≠ x4) (h35 : x3 ≠ x5) (h36 : x3 ≠ x6)
    (h45 : x4 ≠ x5) (h46 : x4 ≠ x6) (h56 : x5 ≠ x6)
    (hp1 : 0 ≤ p1) (hp2 : 0 ≤ p2) (hp3 : 0 ≤ p3) (hp4 : 0 ≤ p4) (hp5 : 0 ≤ p5) (hp6 : 0 ≤ p6)
    (hsum : p1 + p2 + p3 + p4 + p5 + p6 = 1) :
    IsNormalizedProb (n := n) ({x1, x2, x3, x4, x5, x6} : Finset (BitString n))
      (probSix x1 x2 x3 x4 x5 x6 p1 p2 p3 p4 p5 p6) := by
  classical
  refine ⟨?_, ?_, ?_⟩
  · intro x hx
    have hx1 : x ≠ x1 := by intro h; apply hx; simp [h]
    have hx2 : x ≠ x2 := by intro h; apply hx; simp [h]
    have hx3 : x ≠ x3 := by intro h; apply hx; simp [h]
    have hx4 : x ≠ x4 := by intro h; apply hx; simp [h]
    have hx5 : x ≠ x5 := by intro h; apply hx; simp [h]
    have hx6 : x ≠ x6 := by intro h; apply hx; simp [h]
    simp [probSix, hx1, hx2, hx3, hx4, hx5, hx6]
  · intro x hx
    have hx' : x = x1 ∨ x = x2 ∨ x = x3 ∨ x = x4 ∨ x = x5 ∨ x = x6 := by simpa using hx
    rcases hx' with rfl | rfl | rfl | rfl | rfl | rfl
    · simpa [probSix] using hp1
    · simpa [probSix, h12.symm] using hp2
    · simpa [probSix, h13.symm, h23.symm] using hp3
    · simpa [probSix, h14.symm, h24.symm, h34.symm] using hp4
    · simpa [probSix, h15.symm, h25.symm, h35.symm, h45.symm] using hp5
    · simpa [probSix, h16.symm, h26.symm, h36.symm, h46.symm, h56.symm] using hp6
  · have hx1 : x1 ∉ ({x2, x3, x4, x5, x6} : Finset (BitString n)) := by
      simp [h12, h13, h14, h15, h16]
    have hx2' : x2 ∉ ({x3, x4, x5, x6} : Finset (BitString n)) := by simp [h23, h24, h25, h26]
    have hx3' : x3 ∉ ({x4, x5, x6} : Finset (BitString n)) := by simp [h34, h35, h36]
    have hx4' : x4 ∉ ({x5, x6} : Finset (BitString n)) := by simp [h45, h46]
    have hx5' : x5 ∉ ({x6} : Finset (BitString n)) := by simp [h56]
    calc
      (∑ x ∈ ({x1, x2, x3, x4, x5, x6} : Finset (BitString n)),
            probSix x1 x2 x3 x4 x5 x6 p1 p2 p3 p4 p5 p6 x)
          = probSix x1 x2 x3 x4 x5 x6 p1 p2 p3 p4 p5 p6 x1
              + probSix x1 x2 x3 x4 x5 x6 p1 p2 p3 p4 p5 p6 x2
              + probSix x1 x2 x3 x4 x5 x6 p1 p2 p3 p4 p5 p6 x3
              + probSix x1 x2 x3 x4 x5 x6 p1 p2 p3 p4 p5 p6 x4
              + probSix x1 x2 x3 x4 x5 x6 p1 p2 p3 p4 p5 p6 x5
              + probSix x1 x2 x3 x4 x5 x6 p1 p2 p3 p4 p5 p6 x6 := by
                simp [Finset.sum_insert, Finset.sum_singleton, hx1, hx2', hx3', hx4', hx5',
                  add_assoc]
      _ = p1 + p2 + p3 + p4 + p5 + p6 := by
          have h21 : x2 ≠ x1 := by simpa using h12.symm
          have h31 : x3 ≠ x1 := by simpa using h13.symm
          have h32 : x3 ≠ x2 := by simpa using h23.symm
          have h41 : x4 ≠ x1 := by simpa using h14.symm
          have h42 : x4 ≠ x2 := by simpa using h24.symm
          have h43 : x4 ≠ x3 := by simpa using h34.symm
          have h51 : x5 ≠ x1 := by simpa using h15.symm
          have h52 : x5 ≠ x2 := by simpa using h25.symm
          have h53 : x5 ≠ x3 := by simpa using h35.symm
          have h54 : x5 ≠ x4 := by simpa using h45.symm
          have h61 : x6 ≠ x1 := by simpa using h16.symm
          have h62 : x6 ≠ x2 := by simpa using h26.symm
          have h63 : x6 ≠ x3 := by simpa using h36.symm
          have h64 : x6 ≠ x4 := by simpa using h46.symm
          have h65 : x6 ≠ x5 := by simpa using h56.symm
          simp [probSix, h21, h31, h32, h41, h42, h43, h51, h52, h53, h54,
            h61, h62, h63, h64, h65, add_assoc]
      _ = 1 := by simpa [add_assoc] using hsum

/-- Probability function supported on eight explicit basis strings. -/
def probEight (x1 x2 x3 x4 x5 x6 x7 x8 : BitString n) (p1 p2 p3 p4 p5 p6 p7 p8 : ℚ) : BitString n → ℚ :=
  fun x =>
    if x = x1 then p1 else if x = x2 then p2 else if x = x3 then p3 else if x = x4 then p4 else if x = x5 then p5 else if x = x6 then p6 else if x = x7 then p7 else if x = x8 then p8 else 0

/-- Show `IsNormalizedProb` for an 8-element support and `probEight`. -/
lemma isNormalizedProb_probEight (x1 x2 x3 x4 x5 x6 x7 x8 : BitString n) (p1 p2 p3 p4 p5 p6 p7 p8 : ℚ)
    (h12 : x1 ≠ x2) (h13 : x1 ≠ x3) (h14 : x1 ≠ x4) (h15 : x1 ≠ x5) (h16 : x1 ≠ x6)
    (h17 : x1 ≠ x7) (h18 : x1 ≠ x8) (h23 : x2 ≠ x3) (h24 : x2 ≠ x4) (h25 : x2 ≠ x5)
    (h26 : x2 ≠ x6) (h27 : x2 ≠ x7) (h28 : x2 ≠ x8) (h34 : x3 ≠ x4) (h35 : x3 ≠ x5)
    (h36 : x3 ≠ x6) (h37 : x3 ≠ x7) (h38 : x3 ≠ x8) (h45 : x4 ≠ x5) (h46 : x4 ≠ x6)
    (h47 : x4 ≠ x7) (h48 : x4 ≠ x8) (h56 : x5 ≠ x6) (h57 : x5 ≠ x7) (h58 : x5 ≠ x8)
    (h67 : x6 ≠ x7) (h68 : x6 ≠ x8) (h78 : x7 ≠ x8)
    (hp1 : 0 ≤ p1) (hp2 : 0 ≤ p2) (hp3 : 0 ≤ p3) (hp4 : 0 ≤ p4) (hp5 : 0 ≤ p5) (hp6 : 0 ≤ p6) (hp7 : 0 ≤ p7) (hp8 : 0 ≤ p8)
    (hsum : p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 = 1) :
    IsNormalizedProb (n := n) ({x1, x2, x3, x4, x5, x6, x7, x8} : Finset (BitString n))
      (probEight x1 x2 x3 x4 x5 x6 x7 x8 p1 p2 p3 p4 p5 p6 p7 p8) := by
  classical
  refine ⟨?_, ?_, ?_⟩
  · intro x hx
    have hx1 : x ≠ x1 := by intro h; apply hx; simp [h]
    have hx2 : x ≠ x2 := by intro h; apply hx; simp [h]
    have hx3 : x ≠ x3 := by intro h; apply hx; simp [h]
    have hx4 : x ≠ x4 := by intro h; apply hx; simp [h]
    have hx5 : x ≠ x5 := by intro h; apply hx; simp [h]
    have hx6 : x ≠ x6 := by intro h; apply hx; simp [h]
    have hx7 : x ≠ x7 := by intro h; apply hx; simp [h]
    have hx8 : x ≠ x8 := by intro h; apply hx; simp [h]
    simp [probEight, hx1, hx2, hx3, hx4, hx5, hx6, hx7, hx8]
  · intro x hx
    have hx' : x = x1 ∨ x = x2 ∨ x = x3 ∨ x = x4 ∨ x = x5 ∨ x = x6 ∨ x = x7 ∨ x = x8 := by simpa using hx
    rcases hx' with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · simpa [probEight] using hp1
    · simpa [probEight, h12.symm] using hp2
    · simpa [probEight, h13.symm, h23.symm] using hp3
    · simpa [probEight, h14.symm, h24.symm, h34.symm] using hp4
    · simpa [probEight, h15.symm, h25.symm, h35.symm, h45.symm] using hp5
    · simpa [probEight, h16.symm, h26.symm, h36.symm, h46.symm, h56.symm] using hp6
    · simpa [probEight, h17.symm, h27.symm, h37.symm, h47.symm, h57.symm, h67.symm] using hp7
    · simpa [probEight, h18.symm, h28.symm, h38.symm, h48.symm, h58.symm, h68.symm, h78.symm] using hp8
  · have hx1 : x1 ∉ ({x2, x3, x4, x5, x6, x7, x8} : Finset (BitString n)) := by
      simp [h12, h13, h14, h15, h16, h17, h18]
    have hx2' : x2 ∉ ({x3, x4, x5, x6, x7, x8} : Finset (BitString n)) := by simp [h23, h24, h25, h26, h27, h28]
    have hx3' : x3 ∉ ({x4, x5, x6, x7, x8} : Finset (BitString n)) := by simp [h34, h35, h36, h37, h38]
    have hx4' : x4 ∉ ({x5, x6, x7, x8} : Finset (BitString n)) := by simp [h45, h46, h47, h48]
    have hx5' : x5 ∉ ({x6, x7, x8} : Finset (BitString n)) := by simp [h56, h57, h58]
    have hx6' : x6 ∉ ({x7, x8} : Finset (BitString n)) := by simp [h67, h68]
    have hx7' : x7 ∉ ({x8} : Finset (BitString n)) := by simp [h78]
    calc
      (∑ x ∈ ({x1, x2, x3, x4, x5, x6, x7, x8} : Finset (BitString n)), probEight x1 x2 x3 x4 x5 x6 x7 x8 p1 p2 p3 p4 p5 p6 p7 p8 x)
          = probEight x1 x2 x3 x4 x5 x6 x7 x8 p1 p2 p3 p4 p5 p6 p7 p8 x1
              + probEight x1 x2 x3 x4 x5 x6 x7 x8 p1 p2 p3 p4 p5 p6 p7 p8 x2
              + probEight x1 x2 x3 x4 x5 x6 x7 x8 p1 p2 p3 p4 p5 p6 p7 p8 x3
              + probEight x1 x2 x3 x4 x5 x6 x7 x8 p1 p2 p3 p4 p5 p6 p7 p8 x4
              + probEight x1 x2 x3 x4 x5 x6 x7 x8 p1 p2 p3 p4 p5 p6 p7 p8 x5
              + probEight x1 x2 x3 x4 x5 x6 x7 x8 p1 p2 p3 p4 p5 p6 p7 p8 x6
              + probEight x1 x2 x3 x4 x5 x6 x7 x8 p1 p2 p3 p4 p5 p6 p7 p8 x7
              + probEight x1 x2 x3 x4 x5 x6 x7 x8 p1 p2 p3 p4 p5 p6 p7 p8 x8 := by
                simp [Finset.sum_insert, Finset.sum_singleton, hx1, hx2', hx3', hx4', hx5', hx6', hx7', add_assoc]
      _ = p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 := by
          have h21 : x2 ≠ x1 := by simpa using h12.symm
          have h31 : x3 ≠ x1 := by simpa using h13.symm
          have h32 : x3 ≠ x2 := by simpa using h23.symm
          have h41 : x4 ≠ x1 := by simpa using h14.symm
          have h42 : x4 ≠ x2 := by simpa using h24.symm
          have h43 : x4 ≠ x3 := by simpa using h34.symm
          have h51 : x5 ≠ x1 := by simpa using h15.symm
          have h52 : x5 ≠ x2 := by simpa using h25.symm
          have h53 : x5 ≠ x3 := by simpa using h35.symm
          have h54 : x5 ≠ x4 := by simpa using h45.symm
          have h61 : x6 ≠ x1 := by simpa using h16.symm
          have h62 : x6 ≠ x2 := by simpa using h26.symm
          have h63 : x6 ≠ x3 := by simpa using h36.symm
          have h64 : x6 ≠ x4 := by simpa using h46.symm
          have h65 : x6 ≠ x5 := by simpa using h56.symm
          have h71 : x7 ≠ x1 := by simpa using h17.symm
          have h72 : x7 ≠ x2 := by simpa using h27.symm
          have h73 : x7 ≠ x3 := by simpa using h37.symm
          have h74 : x7 ≠ x4 := by simpa using h47.symm
          have h75 : x7 ≠ x5 := by simpa using h57.symm
          have h76 : x7 ≠ x6 := by simpa using h67.symm
          have h81 : x8 ≠ x1 := by simpa using h18.symm
          have h82 : x8 ≠ x2 := by simpa using h28.symm
          have h83 : x8 ≠ x3 := by simpa using h38.symm
          have h84 : x8 ≠ x4 := by simpa using h48.symm
          have h85 : x8 ≠ x5 := by simpa using h58.symm
          have h86 : x8 ≠ x6 := by simpa using h68.symm
          have h87 : x8 ≠ x7 := by simpa using h78.symm
          simp [probEight, h21, h31, h32, h41, h42, h43, h51, h52, h53, h54, h61, h62, h63, h64, h65, h71, h72, h73, h74, h75, h76, h81, h82, h83, h84, h85, h86, h87, add_assoc]
      _ = 1 := by simpa [add_assoc] using hsum

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
