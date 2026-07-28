import Examples.D3.NoGo.BD16_0112335_Equations
import Examples.D3.NoGo.BD16_0112335_FromKL
import Examples.D3.NoGo.Bridge

/-!
# BD16 no-go: `a = (0,1,1,2,3,3,5)` (mod 8)

This file glues the two parts of the §17.6 no-go from `BD16_distance3.tex`:

1. `KLSubsys.toSystem`: a small explicit KL subsystem on the SS support `S0`
   implies the 19 explicit quadratic equations (E1)–(E19).
2. `System.no_solution` (exported as `no_solution`): the 19 equations have no solution.

Hence the KL subsystem (and therefore any full distance-3 KL system, which implies this subsystem)
has no solution under the complementary SS ansatz.

No `sorry`.
-/

namespace Examples.D3.NoGo.BD16_0112335

/-- No solution to the selected KL subsystem (TeX §17.6). -/
theorem no_KLSubsys : ¬ ∃ c : Fin 14 → ℂ, KLSubsys c := by
  rintro ⟨c, hc⟩
  have hsys : System c := KLSubsys.toSystem (c := c) hc
  exact no_solution ⟨c, hsys⟩

end Examples.D3.NoGo.BD16_0112335

namespace Examples.D3.NoGo.BD16_0112335

/-! ## Necessity: a genuine code would satisfy the subsystem

`no_KLSubsys` rules out solutions of the algebraic subsystem.  The lemmas below
close the remaining gap by showing that a *quantum state* satisfying the
Knill--Laflamme conditions gives such a solution, so no such state exists. -/

lemma coeff_vanish (c : Fin 14 → ℂ) : ∀ s, s ∉ S0 → coeff c s = 0 := by
  intro s hs
  simp only [S0, Finset.mem_insert, Finset.mem_singleton, not_or] at hs
  obtain ⟨h0,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13⟩ := hs
  unfold coeff
  simp [h0,h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13]

/-- **The subsystem is necessary.**  If the state `coeff c` is normalized and its
Knill--Laflamme matrix elements vanish where the ansatz forces them to (odd `wt(z)`
diagonals, and the off-diagonals), then `c` solves `KLSubsys`.

Both hypotheses are restricted to Pauli weight `≤ 2`, which is exactly the range a
distance-3 code must correct and the only range the eighteen instantiations below
use.  The restriction is essential and not cosmetic: an unrestricted hypothesis is
already contradicted by `hnorm`.  Taking `P = ⟨1, 0⟩` (all-`X`, weight 7) gives
`numY = 0` and `bdot 0 _ = false`, so `pauliAct P (flipState ψ) = ψ` and the
off-diagonal element equals `∑ₖ |cₖ|² = 1`, not `0`. -/
theorem KLSubsys_of_KL (c : Fin 14 → ℂ)
    (hnorm : p0 c + p1 c + p2 c + p3 c + p4 c + p5 c + p6 c +
      p7 c + p8 c + p9 c + p10 c + p11 c + p12 c + p13 c = 1)
    (hdiag : ∀ P : SS.PauliString 7, P.wt ≤ 2 → SS.hammingWt P.z % 2 = 1 →
      SS.innerC (coeff c) (SS.pauliAct P (coeff c)) = 0)
    (hoff : ∀ P : SS.PauliString 7, P.wt ≤ 2 →
      SS.innerC (coeff c) (SS.pauliAct P (SS.flipState (coeff c))) = 0) :
    KLSubsys c := by
  have hv := coeff_vanish c
  refine
  { norm := hnorm
    z1 := diagMatElt_eq_zero_of_innerC S0 _ hv ⟨b0, e1⟩ (hdiag _ (by decide) (by decide))
    z2 := diagMatElt_eq_zero_of_innerC S0 _ hv ⟨b0, e2⟩ (hdiag _ (by decide) (by decide))
    z3 := diagMatElt_eq_zero_of_innerC S0 _ hv ⟨b0, e3⟩ (hdiag _ (by decide) (by decide))
    z4 := diagMatElt_eq_zero_of_innerC S0 _ hv ⟨b0, e4⟩ (hdiag _ (by decide) (by decide))
    z5 := diagMatElt_eq_zero_of_innerC S0 _ hv ⟨b0, e5⟩ (hdiag _ (by decide) (by decide))
    z6 := diagMatElt_eq_zero_of_innerC S0 _ hv ⟨b0, e6⟩ (hdiag _ (by decide) (by decide))
    z7 := diagMatElt_eq_zero_of_innerC S0 _ hv ⟨b0, e7⟩ (hdiag _ (by decide) (by decide))
    y1 := diagMatElt_eq_zero_of_innerC S0 _ hv ⟨e1, e1⟩ (hdiag _ (by decide) (by decide))
    x2_z0  := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨e2, b0⟩ (hoff _ (by decide))
    x2_ze1 := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨e2, e1⟩ (hoff _ (by decide))
    x2_ze3 := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨e2, e3⟩ (hoff _ (by decide))
    x3_z0  := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨e3, b0⟩ (hoff _ (by decide))
    x3_ze1 := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨e3, e1⟩ (hoff _ (by decide))
    x3_ze2 := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨e3, e2⟩ (hoff _ (by decide))
    x12_z0  := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨x12, b0⟩ (hoff _ (by decide))
    x12_ze1 := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨x12, e1⟩ (hoff _ (by decide))
    x13_z0  := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨x13, b0⟩ (hoff _ (by decide))
    x13_ze1 := offdiagMatElt_eq_zero_of_innerC S0 _ hv ⟨x13, e1⟩ (hoff _ (by decide)) }

/-- **No-go, stated for quantum states.**  No normalized state on the SS support
`S0` satisfies the Knill--Laflamme conditions of the complementary ansatz for the
Pauli errors of weight `≤ 2` — that is, for exactly the errors a distance-3 code is
required to handle.

The weight bound is what gives the statement content: it must not be dropped, since
an unrestricted version is contradicted by normalization alone (see
`KLSubsys_of_KL`) and would therefore rule out nothing. -/
theorem no_KL_state :
    ¬ ∃ c : Fin 14 → ℂ,
        (p0 c + p1 c + p2 c + p3 c + p4 c + p5 c + p6 c +
          p7 c + p8 c + p9 c + p10 c + p11 c + p12 c + p13 c = 1)
        ∧ (∀ P : SS.PauliString 7, P.wt ≤ 2 → SS.hammingWt P.z % 2 = 1 →
            SS.innerC (coeff c) (SS.pauliAct P (coeff c)) = 0)
        ∧ (∀ P : SS.PauliString 7, P.wt ≤ 2 →
            SS.innerC (coeff c) (SS.pauliAct P (SS.flipState (coeff c))) = 0) := by
  rintro ⟨c, h1, h2, h3⟩
  exact no_KLSubsys ⟨c, KLSubsys_of_KL c h1 h2 h3⟩

end Examples.D3.NoGo.BD16_0112335
