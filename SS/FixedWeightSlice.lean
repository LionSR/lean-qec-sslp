import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.Data.Finset.Powerset
import Mathlib.Data.Finset.Image
import Mathlib.Data.Finset.Card
import Mathlib.Tactic

import SS.BitStringFinset
import SS.Combinatorics
import SS.ZTypeKL

/-!
# Fixed-weight slices of bitstrings

A common pattern in analytical code families is to define a support by choosing a subset of
positions of fixed Hamming weight, then turning it into a bitstring.

This file packages that construction as a reusable `slice` finset and provides basic lemmas:
* cardinality of the slice
* disjointness for different fixed last bits
* a generic Z-expectation computation on a prefix position `j.castSucc` under a uniform
  distribution on the slice.
-/

namespace SS

open scoped BigOperators

/-- The fixed-weight slice: choose a size-`k` subset of the first `n` positions and then extend
with a fixed last bit `bLast`.

This produces a finset of bitstrings of length `n+1`.
-/
def slice (n k : ℕ) (bLast : Bool) : Finset (BitString (n + 1)) :=
  ((Finset.univ : Finset (Fin n)).powersetCard k).image
    (fun t => extendLast (bsOfFinset (n := n) t) bLast)

/-- The map used to build `slice` is injective. -/
lemma slice_map_injective (n : ℕ) (bLast : Bool) :
    Function.Injective (fun t : Finset (Fin n) => extendLast (bsOfFinset (n := n) t) bLast) := by
  intro t₁ t₂ h
  have h' : bsOfFinset (n := n) t₁ = bsOfFinset (n := n) t₂ :=
    (extendLast_injective (n := n) bLast) h
  exact bsOfFinset_injective (n := n) h'

lemma card_slice (n k : ℕ) (bLast : Bool) : (slice n k bLast).card = Nat.choose n k := by
  classical
  have hinj := slice_map_injective (n := n) (bLast := bLast)
  calc
    (slice n k bLast).card
        = ((Finset.univ : Finset (Fin n)).powersetCard k).card := by
            simpa [slice] using
              (Finset.card_image_of_injective
                (s := ((Finset.univ : Finset (Fin n)).powersetCard k))
                (f := fun t : Finset (Fin n) => extendLast (bsOfFinset (n := n) t) bLast) hinj)
    _ = Nat.choose n k := by
          simp [Finset.card_powersetCard]

/-- Slices with different fixed last bits are disjoint. -/
lemma disjoint_slice_lastBit (n k₁ k₂ : ℕ) : Disjoint (slice n k₁ false) (slice n k₂ true) := by
  classical
  refine Finset.disjoint_left.2 ?_
  intro x hx0 hx1
  rcases Finset.mem_image.1 hx0 with ⟨t0, _, rfl⟩
  rcases Finset.mem_image.1 hx1 with ⟨t1, _, hEq⟩
  have hlast := congrArg (fun x => x (Fin.last n)) hEq
  -- last bit is forced to be `false` vs `true`
  simp [extendLast] at hlast

/-- At a prefix position `j.castSucc`, the bit of an extended `bsOfFinset` is `true` iff `j ∈ t`.

(The fixed last bit `bLast` is irrelevant here.)
-/
lemma bit_extendLast_bsOfFinset_castSucc (n : ℕ) (t : Finset (Fin n)) (bLast : Bool) (j : Fin n) :
    extendLast (bsOfFinset (n := n) t) bLast j.castSucc = true ↔ j ∈ t := by
  simp [bsOfFinset, decide_eq_true_eq]

/-- At a prefix position `j.castSucc`, `zSign` for an extended `bsOfFinset` depends only on whether
`j` is in the underlying subset. -/
lemma zSign_extendLast_bsOfFinset_castSucc (n : ℕ) (t : Finset (Fin n)) (bLast : Bool) (j : Fin n) :
    zSign (extendLast (bsOfFinset (n := n) t) bLast) j.castSucc = if j ∈ t then -1 else 1 := by
  simp [zSign, extendLast, bsOfFinset]

/-- Z-expectation on a slice at a prefix position `j.castSucc`, for the *uniform* distribution on
that slice with total mass `mass`.

Concretely, this is the sum
`∑ x ∈ slice, (mass / |slice|) * zSign x j.castSucc`.
-/
lemma zExpectation_slice_castSucc (n k : ℕ) (bLast : Bool) (j : Fin n) (mass : ℚ)
    (hn : 0 < n) (hkn : k ≤ n) :
    ∑ x ∈ slice n k bLast, (mass / (Nat.choose n k)) * zSign x j.castSucc
      = mass * (1 - 2 * (k : ℚ) / n) := by
  classical
  -- rewrite the sum over the image defining `slice`
  let P : Finset (Finset (Fin n)) := (Finset.univ : Finset (Fin n)).powersetCard k
  let f : Finset (Fin n) → BitString (n + 1) := fun t => extendLast (bsOfFinset (n := n) t) bLast
  have hf_inj : Set.InjOn f (↑P : Set (Finset (Fin n))) := by
    intro u hu v hv hEq
    exact (slice_map_injective (n := n) (bLast := bLast)) hEq

  have hsum_image :
      (∑ x ∈ slice n k bLast, (mass / (Nat.choose n k)) * zSign x j.castSucc)
        = ∑ t ∈ P, (mass / (Nat.choose n k)) * zSign (f t) j.castSucc := by
    -- `slice n k bLast = P.image f`
    simpa [slice, P, f] using
      (Finset.sum_image (s := P) (g := f)
        (f := fun x => (mass / (Nat.choose n k)) * zSign x j.castSucc) hf_inj)

  -- now reduce `zSign (f t) j.castSucc` to an `if j ∈ t then -1 else 1`
  have hsum_simpl :
      (∑ t ∈ P, (mass / (Nat.choose n k)) * zSign (f t) j.castSucc)
        = ∑ t ∈ P, (mass / (Nat.choose n k)) * ((if j ∈ t then (-1 : ℤ) else 1) : ℚ) := by
    refine Finset.sum_congr rfl ?_
    intro t ht
    simp [f, zSign_extendLast_bsOfFinset_castSucc]

  -- factor out the constant `mass / choose n k` (working entirely in `ℚ`).
  have hfactor :
      (∑ t ∈ P, (mass / (Nat.choose n k)) * ((if j ∈ t then (-1 : ℤ) else 1) : ℚ))
        = (mass / (Nat.choose n k)) * ∑ t ∈ P, ((if j ∈ t then (-1 : ℤ) else 1) : ℚ) := by
    simpa [mul_assoc] using
      (Finset.mul_sum (s := P)
        (f := fun t : Finset (Fin n) => ((if j ∈ t then (-1 : ℤ) else 1) : ℚ))
        (a := mass / (Nat.choose n k))).symm

  -- compute the inner sum via counting
  have hchoose_pos : 0 < Nat.choose n k := Nat.choose_pos hkn
  have hchoose_ne : (Nat.choose n k : ℚ) ≠ 0 :=
    Nat.cast_ne_zero.2 (Nat.pos_iff_ne_zero.1 hchoose_pos)

  -- abbreviate the count of subsets containing `j`
  have hcard_mem :
      ((P.filter (fun t => j ∈ t)).card : ℚ) / (Nat.choose n k) = (k : ℚ) / n := by
    by_cases hk0 : k = 0
    · subst hk0
      simp [P]
    · have hk : 0 < k := Nat.pos_of_ne_zero hk0
      have hA : (P.filter (fun t => j ∈ t)).card = Nat.choose (n - 1) (k - 1) := by
        simpa [P] using card_filter_mem_powersetCard_univ n k j hk
      -- use the ratio lemma
      have hratio : ((n - 1).choose (k - 1) : ℚ) / (n.choose k) = k / n :=
        choose_ratio n k hn hk hkn
      simpa [hA] using hratio

  have hsum_inner :
      (∑ t ∈ P, (if j ∈ t then (-1 : ℤ) else 1) : ℚ)
        = (Nat.choose n k : ℚ) * (1 - 2 * (k : ℚ) / n) := by
    -- split the sum into the `j ∈ t` and `j ∉ t` parts
    have hsplit :
        (∑ t ∈ P, (if j ∈ t then (-1 : ℤ) else 1) : ℚ)
          = (∑ t ∈ P with j ∈ t, (-1 : ℚ)) + (∑ t ∈ P with ¬ (j ∈ t), (1 : ℚ)) := by
      simpa using
        (Finset.sum_ite (s := P) (p := fun t : Finset (Fin n) => j ∈ t)
          (f := fun _ => (-1 : ℚ)) (g := fun _ => (1 : ℚ)))

    have hsum_mem : (∑ t ∈ P with j ∈ t, (-1 : ℚ)) = -((P.filter (fun t => j ∈ t)).card : ℚ) := by
      -- constant sum over the filter
      simp [Finset.sum_const]

    have hsum_not :
        (∑ t ∈ P with ¬ (j ∈ t), (1 : ℚ)) = (({t ∈ P | ¬ (j ∈ t)}).card : ℚ) := by
      simp [Finset.sum_const]

    -- use `card_filter_add_card_filter_not` to rewrite the `¬`-card
    have hcard_add :
        (P.filter (fun t => j ∈ t)).card + ({t ∈ P | ¬ (j ∈ t)}).card = P.card := by
      simpa using (Finset.card_filter_add_card_filter_not (s := P) (p := fun t : Finset (Fin n) => j ∈ t))

    -- `P.card = choose n k`
    have hPcard : (P.card : ℚ) = Nat.choose n k := by
      simp [P, Finset.card_powersetCard]

    -- combine everything
    have : (∑ t ∈ P, (if j ∈ t then (-1 : ℤ) else 1) : ℚ)
        = (Nat.choose n k : ℚ) - 2 * ((P.filter (fun t => j ∈ t)).card : ℚ) := by
      -- from hsplit + constant sums + card relation
      have hcard_not : (({t ∈ P | ¬ (j ∈ t)}).card : ℚ) = (P.card : ℚ) - ((P.filter (fun t => j ∈ t)).card : ℚ) := by
        -- Rearrange `a + b = c` at the `ℕ` level, then cast.
        have hle : (P.filter (fun t => j ∈ t)).card ≤ P.card := by
          -- `a ≤ a + b = c`
          have : (P.filter (fun t => j ∈ t)).card ≤
              (P.filter (fun t => j ∈ t)).card + ({t ∈ P | ¬ (j ∈ t)}).card :=
            Nat.le_add_right _ _
          simpa [hcard_add] using this

        have hsub : P.card - (P.filter (fun t => j ∈ t)).card = ({t ∈ P | ¬ (j ∈ t)}).card := by
          calc
            P.card - (P.filter (fun t => j ∈ t)).card
                = ((P.filter (fun t => j ∈ t)).card + ({t ∈ P | ¬ (j ∈ t)}).card)
                    - (P.filter (fun t => j ∈ t)).card := by
                      simp [hcard_add]
            _ = ({t ∈ P | ¬ (j ∈ t)}).card := by
                  simp

        have hcast : ((P.card - (P.filter (fun t => j ∈ t)).card : ℕ) : ℚ)
            = (P.card : ℚ) - ((P.filter (fun t => j ∈ t)).card : ℚ) := by
          simpa using (Nat.cast_sub (R := ℚ) hle)

        -- rewrite `P.card - card_mem` as `card_not`.
        -- (`hcast` already has the desired orientation.)
        simpa [hsub] using hcast
      -- now compute
      calc
        (∑ t ∈ P, (if j ∈ t then (-1 : ℤ) else 1) : ℚ)
            = (∑ t ∈ P with j ∈ t, (-1 : ℚ)) + (∑ t ∈ P with ¬ (j ∈ t), (1 : ℚ)) := hsplit
        _ = (-((P.filter (fun t => j ∈ t)).card : ℚ)) + (({t ∈ P | ¬ (j ∈ t)}).card : ℚ) := by
              simp [hsum_mem, hsum_not]
        _ = (-((P.filter (fun t => j ∈ t)).card : ℚ)) + ((P.card : ℚ) - ((P.filter (fun t => j ∈ t)).card : ℚ)) := by
              simp [hcard_not]
        _ = (P.card : ℚ) - 2 * ((P.filter (fun t => j ∈ t)).card : ℚ) := by ring
        _ = (Nat.choose n k : ℚ) - 2 * ((P.filter (fun t => j ∈ t)).card : ℚ) := by
              simp [hPcard]

    -- rewrite using the ratio `card_mem / choose = k/n`
    -- `choose * (1 - 2*k/n) = choose - 2*choose*(k/n)`
    have : (∑ t ∈ P, (if j ∈ t then (-1 : ℤ) else 1) : ℚ)
        = (Nat.choose n k : ℚ) * (1 - 2 * ((P.filter (fun t => j ∈ t)).card : ℚ) / (Nat.choose n k)) := by
      -- factor out `choose n k` from `choose - 2*card_mem`
      -- use `choose ≠ 0` and the `this` from above
      calc
        (∑ t ∈ P, (if j ∈ t then (-1 : ℤ) else 1) : ℚ)
            = (Nat.choose n k : ℚ) - 2 * ((P.filter (fun t => j ∈ t)).card : ℚ) := this
        _ = (Nat.choose n k : ℚ) * (1 - 2 * ((P.filter (fun t => j ∈ t)).card : ℚ) / (Nat.choose n k)) := by
              field_simp [hchoose_ne]

    -- finally substitute `card_mem/choose = k/n`
    simpa [mul_div_assoc, hcard_mem] using this

  -- finish
  calc
    ∑ x ∈ slice n k bLast, (mass / (Nat.choose n k)) * zSign x j.castSucc
        = ∑ t ∈ P, (mass / (Nat.choose n k)) * zSign (f t) j.castSucc := by
            simp [hsum_image]
    _ = ∑ t ∈ P, (mass / (Nat.choose n k)) * ((if j ∈ t then (-1 : ℤ) else 1) : ℚ) := hsum_simpl
    _ = (mass / (Nat.choose n k)) * ∑ t ∈ P, ((if j ∈ t then (-1 : ℤ) else 1) : ℚ) := hfactor
    _ = (mass / (Nat.choose n k)) * ((Nat.choose n k : ℚ) * (1 - 2 * (k : ℚ) / n)) := by
          -- use the computed inner sum
          rw [hsum_inner]
    _ = mass * (1 - 2 * (k : ℚ) / n) := by
          -- cancel `choose n k`
          field_simp [hchoose_ne]

end SS
