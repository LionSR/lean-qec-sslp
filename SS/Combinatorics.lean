import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Finset.Powerset
import Mathlib.Data.Finset.Card
import Mathlib.Data.Rat.Defs
import Mathlib.Tactic

/-!
# Small combinatorial lemmas

This file contains a few lightweight combinatorial facts used by analytical code families.

The main result is the classical identity for a uniformly random size-`k` subset of an
`n`-element set:

* `Pr[j ∈ T] = k / n`.

We express it via binomial coefficients and a counting lemma over `Finset.powersetCard`.
-/

namespace SS

open scoped BigOperators

/-- Key identity: `n * C(n-1, k-1) = k * C(n, k)`.

This is a rearrangement of `Nat.add_one_mul_choose_eq`.
-/
lemma mul_choose_pred_eq (n k : ℕ) (hn : 0 < n) (hk : 0 < k) :
    n * (n - 1).choose (k - 1) = k * n.choose k := by
  have hn1 : n - 1 + 1 = n :=
    Nat.sub_add_cancel (Nat.one_le_iff_ne_zero.2 (Nat.pos_iff_ne_zero.1 hn))
  have hk1 : k - 1 + 1 = k :=
    Nat.sub_add_cancel (Nat.one_le_iff_ne_zero.2 (Nat.pos_iff_ne_zero.1 hk))
  have key := Nat.add_one_mul_choose_eq (n - 1) (k - 1)
  rw [hn1, hk1] at key
  -- key : n * (n-1).choose (k-1) = n.choose k * k
  linarith

/-- Ratio form: `C(n-1, k-1) / C(n, k) = k / n` (as rationals), for `k ≤ n`, `k>0`, `n>0`. -/
lemma choose_ratio (n k : ℕ) (hn : 0 < n) (hk : 0 < k) (hkn : k ≤ n) :
    ((n - 1).choose (k - 1) : ℚ) / (n.choose k) = k / n := by
  have hchoose_pos : 0 < n.choose k := Nat.choose_pos hkn
  have hn_pos : (n : ℚ) ≠ 0 := Nat.cast_ne_zero.2 (Nat.pos_iff_ne_zero.1 hn)
  have hchoose_ne : (n.choose k : ℚ) ≠ 0 :=
    Nat.cast_ne_zero.2 (Nat.pos_iff_ne_zero.1 hchoose_pos)
  have key := mul_choose_pred_eq n k hn hk
  field_simp [hn_pos, hchoose_ne]
  -- Goal: (n-1).choose (k-1) * n = n.choose k * k
  calc ((n - 1).choose (k - 1) : ℚ) * n
      = (n * (n - 1).choose (k - 1) : ℕ) := by
          simp only [Nat.cast_mul]
          ring
    _ = (k * n.choose k : ℕ) := by
          rw [key]
    _ = (n.choose k : ℚ) * k := by
          simp only [Nat.cast_mul]
          ring

/-- Number of size-`k` subsets of `Fin n` containing a fixed element `j`. -/
lemma card_filter_mem_powersetCard_univ (n k : ℕ) (j : Fin n) (hk : 0 < k) :
    (((Finset.univ : Finset (Fin n)).powersetCard k).filter (fun t => j ∈ t)).card
      = Nat.choose (n - 1) (k - 1) := by
  classical
  -- Abbreviate the relevant finsets of subsets.
  let P : Finset (Finset (Fin n)) := (Finset.univ : Finset (Fin n)).powersetCard k
  let Q : Finset (Finset (Fin n)) := ((Finset.univ : Finset (Fin n)).erase j).powersetCard (k - 1)

  have hEq : P.filter (fun t => j ∈ t) = Q.image (fun u => insert j u) := by
    ext t
    constructor
    · intro ht
      have htP : t ∈ P := (Finset.mem_filter.1 ht).1
      have hjt : j ∈ t := (Finset.mem_filter.1 ht).2
      refine Finset.mem_image.2 ?_
      refine ⟨t.erase j, ?_, ?_⟩
      · -- `t.erase j` has size `k-1` and avoids `j`.
        have hsub : t ⊆ (Finset.univ : Finset (Fin n)) := (Finset.mem_powersetCard.1 htP).1
        have hcard : t.card = k := (Finset.mem_powersetCard.1 htP).2
        have hsub' : t.erase j ⊆ ((Finset.univ : Finset (Fin n)).erase j) :=
          Finset.erase_subset_erase j hsub
        have hcard' : (t.erase j).card = k - 1 := by
          -- `card (t \ {j}) = card t - 1` since `j ∈ t`.
          simpa [hcard] using (Finset.card_erase_of_mem (s := t) (a := j) hjt)
        exact (Finset.mem_powersetCard.2 ⟨hsub', hcard'⟩)
      · -- Reinsert `j`.
        simpa using (Finset.insert_erase hjt)
    · intro ht
      rcases Finset.mem_image.1 ht with ⟨u, huQ, rfl⟩
      refine Finset.mem_filter.2 ?_
      constructor
      · -- `insert j u` has size `k`.
        have huSub : u ⊆ ((Finset.univ : Finset (Fin n)).erase j) :=
          (Finset.mem_powersetCard.1 huQ).1
        have huCard : u.card = k - 1 := (Finset.mem_powersetCard.1 huQ).2
        have hj_u : j ∉ u := by
          intro hj
          have : j ∈ ((Finset.univ : Finset (Fin n)).erase j) := huSub hj
          simp at this
        have hcardIns : (insert j u).card = k := by
          have hk1 : k - 1 + 1 = k := Nat.sub_add_cancel (Nat.one_le_of_lt hk)
          simpa [huCard, hk1] using
            (Finset.card_insert_of_notMem (s := u) (a := j) hj_u)
        have hsubIns : insert j u ⊆ (Finset.univ : Finset (Fin n)) := by
          intro x hx
          simp
        exact Finset.mem_powersetCard.2 ⟨hsubIns, hcardIns⟩
      · -- `j` is certainly in `insert j u`.
        simp

  -- Compute the card of the image using injectivity of `insert j` on `Q`.
  have hinjOn : Set.InjOn (fun u : Finset (Fin n) => insert j u) (↑Q : Set (Finset (Fin n))) := by
    intro u hu v hv hEqIns
    -- Convert Set-membership (from `InjOn`) back to Finset-membership so we can use `mem_powersetCard`.
    have hu' : u ∈ Q := by simpa using hu
    have hv' : v ∈ Q := by simpa using hv
    have huSub : u ⊆ ((Finset.univ : Finset (Fin n)).erase j) :=
      (Finset.mem_powersetCard.1 (by simpa [Q] using hu')).1
    have hvSub : v ⊆ ((Finset.univ : Finset (Fin n)).erase j) :=
      (Finset.mem_powersetCard.1 (by simpa [Q] using hv')).1
    have hj_u : j ∉ u := by
      intro hj
      have : j ∈ ((Finset.univ : Finset (Fin n)).erase j) := huSub hj
      simp at this
    have hj_v : j ∉ v := by
      intro hj
      have : j ∈ ((Finset.univ : Finset (Fin n)).erase j) := hvSub hj
      simp at this
    have := congrArg (fun t : Finset (Fin n) => t.erase j) hEqIns
    simpa [Finset.erase_insert hj_u, Finset.erase_insert hj_v] using this

  have hcardImage : (Q.image (fun u : Finset (Fin n) => insert j u)).card = Q.card := by
    simpa using
      (Finset.card_image_of_injOn (s := Q) (f := fun u : Finset (Fin n) => insert j u) hinjOn)

  have hcardErase : (((Finset.univ : Finset (Fin n)).erase j).card) = n - 1 := by
    simp [Finset.card_erase_of_mem (a := j) (Finset.mem_univ j)]

  have hQcard : Q.card = Nat.choose (n - 1) (k - 1) := by
    -- `#Q = choose (n-1) (k-1)`.
    simp [Q, hcardErase, Finset.card_powersetCard]

  -- Put everything together.
  have hcardFilter : (P.filter (fun t => j ∈ t)).card = Nat.choose (n - 1) (k - 1) := by
    have := congrArg Finset.card hEq
    -- rewrite the RHS via `hcardImage` and then `hQcard`
    simpa [hcardImage, hQcard] using this

  simpa [P] using hcardFilter

end SS
