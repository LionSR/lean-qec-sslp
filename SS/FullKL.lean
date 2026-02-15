import SS.Pauli

/-!
# Full Knill–Laflamme conditions for distance ≥ 3

This module provides the combinatorial infrastructure for verifying *all* KL conditions
(not just Z-type) needed for distance-3 quantum codes. It builds on the Pauli string
representation from `SS.Pauli`.

## Key concepts

Under the **complementary convention** `|1_L⟩ = X^⊗n |0_L⟩`, the full KL conditions
for distance 3 (all Paulis of weight ≤ 2) decompose into:

1. **Diagonal KL**: `⟨0_L|P|0_L⟩ = ⟨1_L|P|1_L⟩`.
   - Automatic when `wt(z)` is even (complementary parity).
   - Forces `⟨0_L|P|0_L⟩ = 0` when `wt(z)` is odd.
   - The diagonal matrix element is a sum over `S₀ ∩ (S₀ ⊕ x(P))`.

2. **Off-diagonal KL**: `⟨0_L|P|1_L⟩ = 0`.
   - Reduces to a sum over `S₀ ∩ (S₀ ⊕ Δ(x(P)))` where `Δ(x) := 1ⁿ ⊕ x`.

3. **Automatic vanishing**: If the relevant intersection is empty, the constraint
   holds automatically with no phase conditions needed.

## References

- BD16_distance3.tex, Sections 2.3–2.4 and 3.4
- Zhang–Wu–Huang–Zeng (2504.20847), Section 6
-/

namespace SS

open scoped BigOperators

section XorShift

variable {n : ℕ}

/-- XOR-shift a finset of bitstrings by a fixed bitstring `x`:
    `xorShift S x = { s ⊕ x | s ∈ S }`. -/
def xorShift (S : Finset (BitString n)) (x : BitString n) : Finset (BitString n) :=
  S.image (bxor · x)

@[simp] lemma mem_xorShift (S : Finset (BitString n)) (x t : BitString n) :
    t ∈ xorShift S x ↔ ∃ s ∈ S, bxor s x = t := by
  simp [xorShift]

lemma mem_xorShift' (S : Finset (BitString n)) (x t : BitString n) :
    t ∈ xorShift S x ↔ bxor t x ∈ S := by
  constructor
  · intro h
    rw [mem_xorShift] at h
    obtain ⟨s, hs, hst⟩ := h
    have : bxor t x = s := by
      rw [← hst]; funext i; simp [bxor]
    rwa [this]
  · intro h
    rw [mem_xorShift]
    exact ⟨bxor t x, h, by funext i; simp [bxor]⟩

/-- The **diagonal intersection** for a Pauli `P(x,z)`:
    `S₀ ∩ (S₀ ⊕ x)`, i.e. bitstrings `s ∈ S₀` such that `s ⊕ x ∈ S₀`.
    The diagonal matrix element `⟨0_L|P(x,z)|0_L⟩` is a sum over this set. -/
def diagIntersection (S₀ : Finset (BitString n)) (x : BitString n) :
    Finset (BitString n) :=
  S₀.filter (fun s => bxor s x ∈ S₀)

@[simp] lemma mem_diagIntersection (S₀ : Finset (BitString n)) (x s : BitString n) :
    s ∈ diagIntersection S₀ x ↔ s ∈ S₀ ∧ bxor s x ∈ S₀ := by
  simp [diagIntersection, Finset.mem_filter]

/-- The **off-diagonal shift** `Δ(x) := 1ⁿ ⊕ x`.
    Under the complementary convention, the off-diagonal matrix element
    `⟨0_L|P(x,z)|1_L⟩` involves the intersection `S₀ ∩ (S₀ ⊕ Δ(x))`. -/
def delta (x : BitString n) : BitString n := bxor (ones n) x

lemma delta_eq (x : BitString n) : delta x = complement x := by
  simp [delta, complement_eq_bxor_ones, bxor_comm]

/-- The **off-diagonal intersection** for a Pauli `P(x,z)`:
    `S₀ ∩ (S₀ ⊕ Δ(x))`, i.e. bitstrings `s ∈ S₀` such that `s ⊕ Δ(x) ∈ S₀`.
    The off-diagonal matrix element `⟨0_L|P(x,z)|1_L⟩` is a sum over this set. -/
def offdiagIntersection (S₀ : Finset (BitString n)) (x : BitString n) :
    Finset (BitString n) :=
  diagIntersection S₀ (delta x)

@[simp] lemma mem_offdiagIntersection (S₀ : Finset (BitString n)) (x s : BitString n) :
    s ∈ offdiagIntersection S₀ x ↔ s ∈ S₀ ∧ bxor s (delta x) ∈ S₀ := by
  simp [offdiagIntersection]

end XorShift

section AutomaticVanishing

variable {n : ℕ}

/-- A diagonal KL constraint is **automatic** (needs no phase check) if either:
    - `wt(z)` is even (complementary parity makes `⟨0_L|P|0_L⟩ = ⟨1_L|P|1_L⟩` trivially), or
    - The diagonal intersection `S₀ ∩ (S₀ ⊕ x)` is empty (the matrix element is zero). -/
def diagIsAutomatic (S₀ : Finset (BitString n)) (P : PauliString n) : Bool :=
  -- Even zWt → diagonal equality is automatic (no vanishing required)
  (hammingWt P.z % 2 == 0) ||
  -- Odd zWt but empty intersection → vanishing is automatic
  (diagIntersection S₀ P.x == ∅)

/-- An off-diagonal KL constraint is **automatic** if the off-diagonal intersection
    `S₀ ∩ (S₀ ⊕ Δ(x))` is empty. -/
def offdiagIsAutomatic (S₀ : Finset (BitString n)) (P : PauliString n) : Bool :=
  offdiagIntersection S₀ P.x == ∅

/-- A Pauli constraint is **fully automatic** if both its diagonal and off-diagonal
    parts require no phase verification. -/
def klIsAutomatic (S₀ : Finset (BitString n)) (P : PauliString n) : Bool :=
  diagIsAutomatic S₀ P && offdiagIsAutomatic S₀ P

end AutomaticVanishing

instance PauliString.fintype (n : ℕ) : Fintype (PauliString n) :=
  Fintype.ofEquiv (BitString n × BitString n)
    { toFun := fun p => ⟨p.1, p.2⟩
      invFun := fun P => ⟨P.x, P.z⟩
      left_inv := fun _ => rfl
      right_inv := fun ⟨_, _⟩ => rfl }

section NonAutomaticPaulis

variable {n : ℕ}

/-- Collect all Pauli strings of weight ≤ `w` that have **non-automatic** KL constraints
    for a given support `S₀`. These are the ones that require explicit phase verification. -/
def nonAutomaticPaulis (S₀ : Finset (BitString n)) (w : ℕ) : Finset (PauliString n) :=
  (Finset.univ : Finset (PauliString n)).filter
    (fun P => P.wt ≤ w && !klIsAutomatic S₀ P)

/-- Count of non-automatic Pauli constraints for weight ≤ `w`. -/
def numNonAutomatic (S₀ : Finset (BitString n)) (w : ℕ) : ℕ :=
  (nonAutomaticPaulis S₀ w).card

end NonAutomaticPaulis

end SS
