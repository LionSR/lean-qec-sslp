import SS.Basic

namespace SS

section Disjointness

variable {m n K : ℕ}
variable (a : Fin n → ZMod m)
variable (b : Fin K → ZMod m)
variable (supp : Fin K → Finset (BitString n))

/--
If `b` is injective (distinct logical phases) and each support satisfies SS,
then supports for different `k` are disjoint.
-/
theorem supports_disjoint_of_injective
    (hb : Function.Injective b)
    (hSS : ∀ k, SSConditionSupport' (m := m) a (b k) (supp k)) :
    ∀ {k l : Fin K}, k ≠ l → Disjoint (supp k) (supp l) := by
  intro k l hkl
  classical
  refine Finset.disjoint_left.2 ?_
  intro s hsk hsl
  have hk : weight (m := m) a s = b k := hSS k hsk
  have hl : weight (m := m) a s = b l := hSS l hsl
  have hbl : b k = b l := by
    calc
      b k = weight (m := m) a s := hk.symm
      _   = b l               := hl
  exact hkl (hb hbl)

end Disjointness

end SS
