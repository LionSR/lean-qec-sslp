import SS.Distance3Verify
import SS.FullKLEval

/-!
# Shared definitions for BD16 ((7,2,3)) distance-3 codes

This module provides a bundle and shared utilities for verifying BD16 codes
(transversal T gate, m=8, n=7, K=2) from BD16_distance3.tex.

All BD16 codes share:
- `n = 7` qubits, `m = 8`, `K = 2` logical states
- Residues `(b₀, b₁) = (0, 7)` (since ∑aᵢ ≡ 7 mod 8 for all vectors)
- Complementary convention: `|1_L⟩ = X^⊗7 |0_L⟩`

For full distance-3 verification (Layer 2), we work over the exact number field
`ℚ(√2, √3, √5, i)` implemented as `SS.QSqrt235i`.

Each concrete example supplies:
- Angle vector `a : Fin 7 → ZMod 8`
- Support `T : Finset (BitString 7)` (support of |0_L⟩)
- Probabilities `p : BitString 7 → ℚ` (|cₛ|² for each s ∈ T)
- Amplitudes `c : BitString 7 → QSqrt235i` (exact complex amplitudes)
-/

namespace SS

namespace BD16

open SS.Verify

/-- A complete BD16 code specification, bundling all data needed for verification. -/
structure BD16Code where
  /-- Angle vector in ZMod 8. -/
  a : Fin 7 → ZMod 8
  /-- Support of |0_L⟩. -/
  supp : Finset (BitString 7)
  /-- Probability distribution (|cₛ|²) on the support. -/
  prob : BitString 7 → ℚ
  /-- Exact amplitudes in ℚ(√2, √3, √5, i). -/
  amp : BitString 7 → QSqrt235i

/-- Extract the Layer 1 (combinatorial) data from a BD16 code. -/
def BD16Code.toD3Data (code : BD16Code) : Distance3Data 7 8 where
  a := code.a
  b₀ := 0  -- all BD16 codes use b₀ = 0
  supp₀ := code.supp
  prob₀ := code.prob

/-- Layer 1 verification: SS + BD angle + normalization + Z-balance. -/
def BD16Code.layer1OK (code : BD16Code) : Prop :=
  code.toD3Data.Layer1OK

/-- Count of non-automatic KL constraints for weight ≤ w. -/
def BD16Code.numNonAuto (code : BD16Code) (w : ℕ) : ℕ :=
  code.toD3Data.numNonAuto w

/-- Layer 2 verification: all weight-≤-w KL constraints satisfied. -/
def BD16Code.layer2OK (code : BD16Code) (w : ℕ) : Prop :=
  AllKLSatisfied code.supp code.amp w

/-- **Probability–amplitude consistency.**
For every support string `s`, the declared probability equals the squared modulus
of the exact amplitude, `prob s = |amp s|² = conj(amp s) · amp s`, computed exactly
in `QSqrt235i`.  This ties the two data fields together: `layer1OK` normalizes
`prob`, so once `prob s = |amp s|²` holds on the support, the amplitudes are pinned
to the right scale there, `∑_{s ∈ supp} |amp s|² = 1`.  Without this predicate an
arbitrarily rescaled (unnormalized) `amp` could in principle pass Layer 2 in
isolation.

Note that this fixes the amplitudes only *on* the support.  Normalization of the
state as a vector additionally needs `amp` to vanish off the support, which
`isDistance3` does not imply; that condition is carried separately as `amp_vanish`
in each example and is a hypothesis of the bridge (see `SS/BridgeBD16.lean`). -/
def BD16Code.probAmpConsistent (code : BD16Code) : Prop :=
  ∀ s ∈ code.supp,
    QSqrt235i.mul (QSqrt235i.conj (code.amp s)) (code.amp s)
      = QSqrt235i.ofRat (code.prob s)

/-- Full distance-3 verification: probability–amplitude consistency,
Layer 1 (finite rational checks), and Layer 2 (weight-≤ 2 exact KL). -/
def BD16Code.isDistance3 (code : BD16Code) : Prop :=
  code.probAmpConsistent ∧ code.layer1OK ∧ code.layer2OK 2

-- Decidability instances

instance (code : BD16Code) : Decidable code.layer1OK :=
  inferInstanceAs (Decidable code.toD3Data.Layer1OK)

instance (code : BD16Code) (w : ℕ) : Decidable (code.layer2OK w) :=
  inferInstanceAs (Decidable (AllKLSatisfied code.supp code.amp w))

instance (code : BD16Code) : Decidable code.probAmpConsistent := by
  unfold BD16Code.probAmpConsistent
  infer_instance

instance (code : BD16Code) : Decidable code.isDistance3 := by
  dsimp [BD16Code.isDistance3]
  infer_instance

/-- Convenience: bitstring from a list of bools. -/
def bs (b₀ b₁ b₂ b₃ b₄ b₅ b₆ : Bool) : BitString 7 :=
  ![b₀, b₁, b₂, b₃, b₄, b₅, b₆]

-- Common shorthands for writing amplitudes
namespace Amp

open QSqrt23i QSqrt235i

/-- Rational amplitude: q (real, no surds). -/
def rat (q : ℚ) : QSqrt235i := QSqrt235i.ofRat q

/-- √2 · q -/
def r2 (q : ℚ) : QSqrt235i := ⟨⟨0, q, 0, 0, 0, 0, 0, 0⟩, 0⟩

/-- √3 · q -/
def r3 (q : ℚ) : QSqrt235i := ⟨⟨0, 0, q, 0, 0, 0, 0, 0⟩, 0⟩

/-- √6 · q -/
def r6 (q : ℚ) : QSqrt235i := ⟨⟨0, 0, 0, q, 0, 0, 0, 0⟩, 0⟩

/-- √5 · q -/
def r5 (q : ℚ) : QSqrt235i := ⟨0, QSqrt23i.ofRat q⟩

/-- √10 · q -/
def r10 (q : ℚ) : QSqrt235i := ⟨0, ⟨0, q, 0, 0, 0, 0, 0, 0⟩⟩

/-- i · q -/
def im (q : ℚ) : QSqrt235i := ⟨⟨0, 0, 0, 0, q, 0, 0, 0⟩, 0⟩

/-- i√2 · q -/
def ir2 (q : ℚ) : QSqrt235i := ⟨⟨0, 0, 0, 0, 0, q, 0, 0⟩, 0⟩

/-- i√3 · q -/
def ir3 (q : ℚ) : QSqrt235i := ⟨⟨0, 0, 0, 0, 0, 0, q, 0⟩, 0⟩

/-- i√6 · q -/
def ir6 (q : ℚ) : QSqrt235i := ⟨⟨0, 0, 0, 0, 0, 0, 0, q⟩, 0⟩

/-- i√5 · q -/
def ir5 (q : ℚ) : QSqrt235i := ⟨0, ⟨0, 0, 0, 0, q, 0, 0, 0⟩⟩

/-- i√10 · q -/
def ir10 (q : ℚ) : QSqrt235i := ⟨0, ⟨0, 0, 0, 0, 0, q, 0, 0⟩⟩

/-- Zero amplitude (for non-support strings). -/
def z : QSqrt235i := 0

end Amp

end BD16

end SS
