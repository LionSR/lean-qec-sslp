import SS.Basic

namespace SS

section DiagonalAction

variable {m n : ℕ}
variable {𝕜 : Type*} [MonoidWithZero 𝕜]

/-- Amplitude vectors indexed by computational basis strings. -/
abbrev State (n : ℕ) (k : Type*) : Type _ := BitString n → k

/--
SS condition for a *state* `ψ`: whenever amplitude at `s` is nonzero,
the subset-sum must equal `bk`.
-/
def SSConditionState (a : Fin n → ZMod m) (bk : ZMod m) (ψ : State n 𝕜) : Prop :=
  ∀ s, ψ s ≠ 0 → weight (m := m) a s = bk

/--
Abstract diagonal action associated to `a`:
multiply the `|s⟩`-amplitude by `phase(weight a s)`.
(You can later instantiate `phase` with actual roots of unity.)
-/
def Dact (phase : ZMod m → 𝕜) (a : Fin n → ZMod m) (ψ : State n 𝕜) : State n 𝕜 :=
  fun s => phase (weight (m := m) a s) * ψ s

/--
“Correctness” of SS: if `ψ` satisfies SS for `bk`, then `Dact` acts as a global phase
`phase bk` on `ψ`.
-/
theorem Dact_eq_global_of_SS
    (phase : ZMod m → 𝕜) (a : Fin n → ZMod m) (bk : ZMod m) (ψ : State n 𝕜)
    (hSS : SSConditionState (m := m) a bk ψ) :
    Dact (m := m) phase a ψ = fun s => phase bk * ψ s := by
  classical
  funext s
  by_cases hs : ψ s = 0
  · simp [Dact, hs]
  · have hw : weight (m := m) a s = bk := hSS s hs
    simp [Dact, hw]

end DiagonalAction

end SS
