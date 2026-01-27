import Mathlib.Data.Fin.SuccPred
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Finset.Card

import SS.BitString

/-!
# BitStrings and Finsets

This module provides small helpers relating `BitString n := Fin n → Bool` to finsets of indices,
plus a convenient “extend by one last bit” operation.

These utilities are useful for analytical families (e.g. Family I) where supports are defined by
choosing subsets of positions of fixed Hamming weight.
-/

namespace SS

/-- A bitstring of length `n` associated to a `Finset` of indices. -/
def bsOfFinset {n : ℕ} (t : Finset (Fin n)) : BitString n := fun i => decide (i ∈ t)

/-- Indices where a bitstring is `true`, as a finset. -/
def support {n : ℕ} (u : BitString n) : Finset (Fin n) :=
  (Finset.univ : Finset (Fin n)).filter (fun i => u i = true)

@[simp] lemma mem_support {n : ℕ} (u : BitString n) (i : Fin n) :
    i ∈ support u ↔ u i = true := by
  simp [support]

@[simp] lemma support_bsOfFinset {n : ℕ} (t : Finset (Fin n)) :
    support (bsOfFinset (n := n) t) = t := by
  classical
  ext i
  simp [support, bsOfFinset]

lemma bsOfFinset_injective {n : ℕ} :
    Function.Injective (bsOfFinset (n := n)) := by
  intro t₁ t₂ h
  have := congrArg support h
  simpa using this

/-- Extend a length-`n` bitstring by specifying the last bit, producing length `n+1`. -/
def extendLast {n : ℕ} (u : BitString n) (bLast : Bool) : BitString (n + 1) :=
  fun i => Fin.lastCases bLast (fun j => u j) i

@[simp] lemma extendLast_castSucc {n : ℕ} (u : BitString n) (b : Bool) (i : Fin n) :
    extendLast u b i.castSucc = u i := by
  simp [extendLast]

@[simp] lemma extendLast_last {n : ℕ} (u : BitString n) (b : Bool) :
    extendLast u b (Fin.last n) = b := by
  simp [extendLast]

lemma extendLast_injective {n : ℕ} (b : Bool) :
    Function.Injective (fun u : BitString n => extendLast u b) := by
  intro u v h
  funext i
  have := congrArg (fun x => x i.castSucc) h
  simpa using this

end SS
