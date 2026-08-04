import Mathlib
import SS.HilbertKL

/-!
# The residue-degenerate $((6,4,2))$ controlled-phase code, certified in the kernel

The code of Sec. III C lies outside the nondegenerate-residue ansatz: three of its
four logical states share the residue value 0, so `ExampleData.OK` -- whose second
conjunct is the residue-shift screen -- does not apply.  The Knill--Laflamme
conditions are therefore verified directly in the Hilbert space.

All amplitudes are $\pm 1/4$.  Since the kernel cannot reduce `Rat`, the check is
run over the integer mirror (amplitudes scaled by 4) and transported back; the
global factor $1/16$ is common to every matrix element and so preserves both the
vanishing of the off-diagonals and the equality of the diagonals.

No `native_decide`.
-/

namespace Ex642ControlledPhase

open SS

set_option maxRecDepth 4000000
set_option maxHeartbeats 2000000

/-- Convenience constructor. -/
def bs (b0 b1 b2 b3 b4 b5 : Bool) : SS.BitString 6 := ![b0, b1, b2, b3, b4, b5]

/-- Integer mirror of the four logical states: the amplitudes of Sec.~III\,C
    multiplied by 4, so every value is `0`, `1` or `-1`.

Written arithmetically, following the construction rather than tabulating it.
With `p` the parity of the last four bits, the residue-0 block is `x0 = x1` with
`p = false`, carrying the sign patterns `s0, s1, s2`; the fourth logical state
occupies `x0 x1 ∈ {10, 01}` with `p = false` and `p = true` respectively, carrying
the character `χ5`. -/
def psiZ : Fin 4 → SS.BitString 6 → Int := fun j x =>
  let p : Bool := xor (xor (x 2) (x 3)) (xor (x 4) (x 5))
  if j = 3 then
    (if (x 0 = true ∧ x 1 = false ∧ p = false) ∨ (x 0 = false ∧ x 1 = true ∧ p = true)
     then (if x 4 then -1 else 1) else 0)
  else
    (if x 0 = x 1 ∧ p = false then
       (if j = 0 then 1
        else if j = 1 then (if xor (x 2) (x 3) then -1 else 1)
        else (if xor (x 2) (x 4) then -1 else 1))
     else 0)

/-- The integer matrix element of the Pauli `(x, z)` between logical states `j`, `k`,
    with the global prefactor `i^{#Y}` and the scale `1/16` omitted. -/
def klZ (x z : SS.BitString 6) (j k : Fin 4) : Int :=
  ∑ t : SS.BitString 6,
    psiZ j t * (if SS.bdot z (SS.bxor t x) then -1 else 1) * psiZ k (SS.bxor t x)

private lemma fold_and_eq_true {α : Type*} [DecidableEq α] (s : Finset α) (f : α → Bool) :
    s.fold (· && ·) true f = true ↔ ∀ a ∈ s, f a = true := by
  classical
  induction s using Finset.induction with
  | empty => simp
  | insert a s ha ih => simp [Finset.fold_insert ha, ih]

/-- The whole weight-`≤ 1` check as one Boolean.  Stating it this way rather than
    as a `∀` keeps the `Decidable` instance shallow enough for the kernel. -/
def klAllOK : Bool :=
  ((Finset.univ : Finset (SS.PauliString 6)).filter (fun P => P.wt ≤ 1)).fold (· && ·) true
    (fun P => (Finset.univ : Finset (Fin 4)).fold (· && ·) true
      (fun j => (Finset.univ : Finset (Fin 4)).fold (· && ·) true
        (fun k => klZ P.x P.z j k == (if j = k then klZ P.x P.z 0 0 else 0))))

/-- **The integer Knill--Laflamme check, decided by the kernel.** -/
theorem klAllOK_true : klAllOK = true := by decide

theorem klZ_ok (P : SS.PauliString 6) (hP : P.wt ≤ 1) (j k : Fin 4) :
    klZ P.x P.z j k = if j = k then klZ P.x P.z 0 0 else 0 := by
  classical
  have h := (fold_and_eq_true _ _).mp klAllOK_true P (by simp [hP])
  have hj := (fold_and_eq_true _ _).mp h j (Finset.mem_univ j)
  simpa using (fold_and_eq_true _ _).mp hj k (Finset.mem_univ k)

/-- The four logical states: the integer mirror divided by 4. -/
noncomputable def psi : Fin 4 → SS.State 6 ℂ := fun j x => (1/4 : ℂ) * ((psiZ j x : Int) : ℂ)

/-- Transport: each Knill--Laflamme matrix element is the integer one, times the
    nonzero global factor `i^{#Y} / 16`. -/
theorem innerC_eq (P : SS.PauliString 6) (j k : Fin 4) :
    SS.innerC (psi j) (SS.pauliAct P (psi k))
      = Complex.I ^ P.numY * ((1/16 : ℂ) * ((klZ P.x P.z j k : Int) : ℂ)) := by
  have hk : ((klZ P.x P.z j k : Int) : ℂ)
      = ∑ t : SS.BitString 6, ((psiZ j t * (if SS.bdot P.z (SS.bxor t P.x) then -1 else 1)
          * psiZ k (SS.bxor t P.x) : Int) : ℂ) := by
    rw [klZ]; push_cast; ring
  rw [hk, SS.innerC, Finset.mul_sum, Finset.mul_sum]
  refine Finset.sum_congr rfl (fun t _ => ?_)
  simp only [SS.pauliAct, psi, SS.signC]
  by_cases h : SS.bdot P.z (SS.bxor t P.x) <;> simp [h] <;> push_cast <;> ring

/-- **The code detects every Pauli error of weight at most one**, i.e. it has
    distance at least 2 -- with the kernel as the only trusted base. -/
theorem detects_kernel : SS.Detects psi 1 := by
  intro P hP
  refine ⟨Complex.I ^ P.numY * ((1/16 : ℂ) * ((klZ P.x P.z 0 0 : Int) : ℂ)), ?_⟩
  intro j k
  rw [innerC_eq]
  rw [klZ_ok P hP j k]
  rcases eq_or_ne j k with h | h
  · subst h; simp
  · simp [h]

/-- **Distance 2, certified without `native_decide`.** -/
theorem hasDistance_kernel : SS.HasDistance psi 2 := detects_kernel

/-! ## Non-vacuity

`Detects` is satisfied vacuously by the zero family, so the statement above has
content only together with the fact that the states are unit vectors. -/

theorem klZ_diag : klZ (fun _ => false) (fun _ => false) 0 0 = 16 := by decide

theorem normalized : SS.innerC (psi 0) (psi 0) = 1 := by
  have h := innerC_eq ⟨fun _ => false, fun _ => false⟩ 0 0
  rw [klZ_diag] at h
  have hact : SS.pauliAct (⟨fun _ => false, fun _ => false⟩ : SS.PauliString 6) (psi 0) = psi 0 := by
    funext s
    simp [SS.pauliAct, SS.signC, SS.bdot, SS.bxor, SS.PauliString.numY]
  rw [hact] at h
  rw [h]
  have hy : (⟨fun _ => false, fun _ => false⟩ : SS.PauliString 6).numY = 0 := by decide
  rw [hy]
  norm_num

end Ex642ControlledPhase
