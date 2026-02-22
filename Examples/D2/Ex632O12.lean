import SS

namespace Examples.D2.Ex632O12

open SS SS.Verify

section CatalogueExample_6_3_2_Order12

/-!
### Data-only verification: a $((6,3,2))$ catalogue instance (order 12)

This example is taken from `sslp_general_solutions/General_solutions_of_SSLP.tex`
(the `K=3`, `O=12` entry).

Parameters:
- `n = 6`, `m = 12`, `K = 3`
- weights `w = (2,2,3,3,4,4)` in `ZMod 12`
- residues `S = (0,6,7)` (logical order `O = 12`)

We choose a concrete rational point in the reported affine family so that all
probabilities are nonnegative (some become exactly `0` and are omitted from supports).

All checks are discharged by a single `native_decide` proof of `ex.OK`.
-/

local notation "n" => 6
local notation "m" => 12
local notation "K" => 3

local instance : NeZero (m : ℕ) := ⟨by decide⟩

/-- weights `w = (2,2,3,3,4,4)` in `ZMod 12` -/
def a632O12 : Fin n → ZMod m := ![(2 : ZMod m), 2, 3, 3, 4, 4]

/-- residues `(S0,S1,S2) = (0,6,7)` in `ZMod 12` -/
def S632O12 : Fin K → ZMod m := ![(0 : ZMod m), 6, 7]

/-! basis strings as `Fin 6 → Bool` (0-based indexing) -/
def x000000 : BitString n := ![false,false,false,false,false,false]
def x011101 : BitString n := ![false,true ,true ,true ,false,true ]
def x101101 : BitString n := ![true ,false,true ,true ,false,true ]
def x110011 : BitString n := ![true ,true ,false,false,true ,true ]

/-- support of $|0_L⟩$ (residue 0) -/
def supp0 : Finset (BitString n) := {x000000, x011101, x101101, x110011}


def x001100 : BitString n := ![false,false,true ,true ,false,false]
def x010001 : BitString n := ![false,true ,false,false,false,true ]
def x100001 : BitString n := ![true ,false,false,false,false,true ]
def x111111 : BitString n := ![true ,true ,true ,true ,true ,true ]

/-- support of $|1_L⟩$ (residue 6) -/
def supp1 : Finset (BitString n) := {x001100, x010001, x100001, x111111}


def x000101 : BitString n := ![false,false,false,true ,false,true ]
def x000110 : BitString n := ![false,false,false,true ,true ,false]
def x001001 : BitString n := ![false,false,true ,false,false,true ]
def x110100 : BitString n := ![true ,true ,false,true ,false,false]

/-- support of $|2_L⟩$ (residue 7) -/
def supp2 : Finset (BitString n) := {x000101, x000110, x001001, x110100}

/-- probabilities for $|0_L⟩$ (fixed rational point in the affine family) -/
def prob0 : BitString n → ℚ :=
  fun s =>
    if s = x000000 then (5 : ℚ) / 12
    else if s = x011101 then (1 : ℚ) / 4
    else if s = x101101 then (1 : ℚ) / 4
    else if s = x110011 then (1 : ℚ) / 12
    else 0

/-- probabilities for $|1_L⟩$ (fixed rational point in the affine family) -/
def prob1 : BitString n → ℚ :=
  fun s =>
    if s = x001100 then (5 : ℚ) / 12
    else if s = x010001 then (1 : ℚ) / 4
    else if s = x100001 then (1 : ℚ) / 4
    else if s = x111111 then (1 : ℚ) / 12
    else 0

/-- probabilities for $|2_L⟩$ (fixed rational point in the affine family) -/
def prob2 : BitString n → ℚ :=
  fun s =>
    if s = x000101 then (1 : ℚ) / 12
    else if s = x000110 then (1 : ℚ) / 12
    else if s = x001001 then (1 : ℚ) / 2
    else if s = x110100 then (1 : ℚ) / 3
    else 0

/-- common Z-expectation target -/
def targetZ : Fin n → ℚ :=
  ![(1 : ℚ) / 3, (1 : ℚ) / 3, 0, 0, (5 : ℚ) / 6, (-1 : ℚ) / 6]

/-- Bundle all data for the example. -/
def ex632O12 : ExampleData n m K :=
  { a := a632O12
    S := S632O12
    supp := ![supp0, supp1, supp2]
    prob := ![prob0, prob1, prob2]
    targetZ := targetZ }

/-- One-line verification of the full example bundle. -/
theorem ex632O12_ok : ex632O12.OK := by
  native_decide

end CatalogueExample_6_3_2_Order12

end Examples.D2.Ex632O12
