import SS.Basic

open scoped BigOperators

namespace SS

section BDSymmetry

variable {m n : ℕ}

/-- BD₂ₘ angle constraint: the total angle sum is `-1` in `ZMod m`. -/
def BDAngleCondition (a : Fin n → ZMod m) : Prop :=
  ∑ i : Fin n, a i = -1

@[simp] lemma bit_not {m : ℕ} (b : Bool) :
    bit (m := m) (!b) = 1 - bit (m := m) b := by
  cases b <;> simp [bit]

theorem weight_complement (a : Fin n → ZMod m) (s : BitString n) :
    weight (m := m) a (complement s) =
      (∑ i : Fin n, a i) - weight (m := m) a s := by
  classical
  simp [weight, complement, bit_not, mul_sub, Finset.sum_sub_distrib]

theorem complement_mem_S1_of_mem_S0
    (a : Fin n → ZMod m) (hBD : BDAngleCondition (m := m) a)
    (s : BitString n) (hs : s ∈ Sk (m := m) a 0) :
    complement s ∈ Sk (m := m) a (-1) := by
  simp [Sk] at hs ⊢
  have hsum : (∑ i : Fin n, a i) = (-1 : ZMod m) := by
    simpa [BDAngleCondition] using hBD
  calc
    weight (m := m) a (complement s)
        = (∑ i : Fin n, a i) - weight (m := m) a s := weight_complement (m := m) a s
    _ = (-1 : ZMod m) - 0 := by simp [hsum, hs]
    _ = (-1 : ZMod m) := by simp

theorem complement_mem_S0_of_mem_S1
    (a : Fin n → ZMod m) (hBD : BDAngleCondition (m := m) a)
    (s : BitString n) (hs : s ∈ Sk (m := m) a (-1)) :
    complement s ∈ Sk (m := m) a 0 := by
  simp [Sk] at hs ⊢
  have hsum : (∑ i : Fin n, a i) = (-1 : ZMod m) := by
    simpa [BDAngleCondition] using hBD
  calc
    weight (m := m) a (complement s)
        = (∑ i : Fin n, a i) - weight (m := m) a s := weight_complement (m := m) a s
    _ = (-1 : ZMod m) - (-1 : ZMod m) := by simp [hsum, hs]
    _ = 0 := by simp

theorem Sk_complement_eq (a : Fin n → ZMod m) (hBD : BDAngleCondition (m := m) a) :
    Sk (m := m) a (-1) = complement '' Sk (m := m) a 0 := by
  ext s
  constructor
  · intro hs
    refine ⟨complement s, complement_mem_S0_of_mem_S1 (m := m) a hBD s hs, ?_⟩
    simp
  · rintro ⟨t, ht, rfl⟩
    exact complement_mem_S1_of_mem_S0 (m := m) a hBD t ht

end BDSymmetry

end SS
