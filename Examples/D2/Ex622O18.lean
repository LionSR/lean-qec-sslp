import SS
import Mathlib.Tactic  -- `native_decide`

namespace Examples.D2.Ex622O18

open scoped BigOperators
open SS
open SS.Verify

section CatalogueExample_6_2_2_Order18

/-!
### Data-only verification: a high-order $((6,2,2))$ catalogue instance (order 18)

This example is taken from `sslp_general_solutions/General_solutions_of_SSLP.tex`.

Parameters:
- `n = 6`, `m = 18`, `K = 2`
- weights `w = (1,2,3,4,5,6)` in `ZMod 18`
- residues `S = (0,11)` (logical order `O = 18`)

All checks are discharged by a single `native_decide` proof of `ex.OK`.
-/

local notation "n" => 6
local notation "m" => 18
local notation "K" => 2

local instance : NeZero (m : ℕ) := ⟨by decide⟩
local instance : DecidableEq (BitString n) := by infer_instance

/-- weights `w = (1,2,3,4,5,6)` in `ZMod 18` -/
def a622O18 : Fin n → ZMod m :=
  ![(1 : ZMod m), 2, 3, 4, 5, 6]

/-- residues `(S0,S1) = (0,11)` in `ZMod 18` -/
def S622O18 : Fin K → ZMod m := ![(0 : ZMod m), 11]

/-! basis strings as `Fin 6 → Bool` (0-based indexing) -/
def x000000 : BitString n := ![false,false,false,false,false,false]
def x001111 : BitString n := ![false,false,true ,true ,true ,true ]
def x110111 : BitString n := ![true ,true ,false,true ,true ,true ]

/-- support of $|0_L⟩$ -/
def supp0 : Finset (BitString n) := {x000000, x001111, x110111}


def x000011 : BitString n := ![false,false,false,false,true ,true ]
def x010110 : BitString n := ![false,true ,false,true ,true ,false]
def x011001 : BitString n := ![false,true ,true ,false,false,true ]
def x100101 : BitString n := ![true ,false,false,true ,false,true ]
def x111010 : BitString n := ![true ,true ,true ,false,true ,false]

/-- support of $|1_L⟩$ -/
def supp1 : Finset (BitString n) := {x000011, x010110, x011001, x100101, x111010}

/-- probabilities for $|0_L⟩$ (from the TeX catalogue) -/
def prob0 : BitString n → ℚ :=
  fun s =>
    if s = x000000 then (7 : ℚ) / 18
    else if s = x001111 then (1 : ℚ) / 6
    else if s = x110111 then (4 : ℚ) / 9
    else 0

/-- probabilities for $|1_L⟩$ (from the TeX catalogue) -/
def prob1 : BitString n → ℚ :=
  fun s =>
    if s = x000011 then (2 : ℚ) / 9
    else if s = x010110 then (5 : ℚ) / 18
    else if s = x011001 then (1 : ℚ) / 18
    else if s = x100101 then (1 : ℚ) / 3
    else if s = x111010 then (1 : ℚ) / 9
    else 0

/-- common Z-expectation target -/
def targetZ : Fin n → ℚ :=
  ![(1 : ℚ) / 9, (1 : ℚ) / 9, (2 : ℚ) / 3, (-2 : ℚ) / 9, (-2 : ℚ) / 9, (-2 : ℚ) / 9]

/-- Bundle all data for the example. -/
def ex622O18 : ExampleData n m K :=
  { a := a622O18
    S := S622O18
    supp := ![supp0, supp1]
    prob := ![prob0, prob1]
    targetZ := targetZ }

/-- One-line verification of the full example bundle. -/
theorem ex622O18_ok : ex622O18.OK := by
  native_decide

end CatalogueExample_6_2_2_Order18

end Examples.D2.Ex622O18
