import SS
import Mathlib.Tactic  -- `native_decide`

namespace Examples.D2.Ex642

open scoped BigOperators
open SS
open SS.Verify

section CatalogueExample_6_4_2

/-!
### Data-only verification: a representative $((6,4,2))$ catalogue instance

This example is taken from `sslp_general_solutions/General_solutions_of_SSLP.tex`.

Parameters:
- `n = 6`, `m = 12`, `K = 4`
- weights `w = (1,1,3,3,5,5)` in `ZMod 12`
- residues `S = (0,2,6,10)` (logical order `O = 6`)

We pick a concrete rational point in the reported affine family so that all
probabilities are nonnegative.

All checks are discharged by a single `native_decide` proof of `ex.OK`.
-/

local notation "n" => 6
local notation "m" => 12
local notation "K" => 4

local instance : NeZero (m : ℕ) := ⟨by decide⟩
local instance : DecidableEq (BitString n) := by infer_instance

/-- weights `w = (1,1,3,3,5,5)` in `ZMod 12` -/
def a642 : Fin n → ZMod m := ![(1 : ZMod m), 1, 3, 3, 5, 5]

/-- residues `(S0,S1,S2,S3) = (0,2,6,10)` in `ZMod 12` -/
def S642 : Fin K → ZMod m := ![(0 : ZMod m), 2, 6, 10]

/-! basis strings as `Fin 6 → Bool` (0-based indexing) -/
def x000000 : BitString n := ![false,false,false,false,false,false]
def x011101 : BitString n := ![false,true ,true ,true ,false,true ]
def x011110 : BitString n := ![false,true ,true ,true ,true ,false]
def x101101 : BitString n := ![true ,false,true ,true ,false,true ]
def x101110 : BitString n := ![true ,false,true ,true ,true ,false]
def x110011 : BitString n := ![true ,true ,false,false,true ,true ]


def x010111 : BitString n := ![false,true ,false,true ,true ,true ]
def x011011 : BitString n := ![false,true ,true ,false,true ,true ]
def x100111 : BitString n := ![true ,false,false,true ,true ,true ]
def x101011 : BitString n := ![true ,false,true ,false,true ,true ]
def x110000 : BitString n := ![true ,true ,false,false,false,false]


def x010001 : BitString n := ![false,true ,false,false,false,true ]
def x010010 : BitString n := ![false,true ,false,false,true ,false]
def x100001 : BitString n := ![true ,false,false,false,false,true ]
def x100010 : BitString n := ![true ,false,false,false,true ,false]
def x111111 : BitString n := ![true ,true ,true ,true ,true ,true ]


def x000011 : BitString n := ![false,false,false,false,true ,true ]
def x110101 : BitString n := ![true ,true ,false,true ,false,true ]
def x110110 : BitString n := ![true ,true ,false,true ,true ,false]
def x111001 : BitString n := ![true ,true ,true ,false,false,true ]
def x111010 : BitString n := ![true ,true ,true ,false,true ,false]

/-- support of $|0_L⟩$ (residue 0) -/
def supp0 : Finset (BitString n) := {x000000, x011101, x011110, x101101, x101110, x110011}

/-- support of $|1_L⟩$ (residue 2) -/
def supp1 : Finset (BitString n) := {x010111, x011011, x100111, x101011, x110000}

/-- support of $|2_L⟩$ (residue 6); we omit one zero-probability basis string from the TeX family -/
def supp2 : Finset (BitString n) := {x010001, x010010, x100001, x100010, x111111}

/-- support of $|3_L⟩$ (residue 10) -/
def supp3 : Finset (BitString n) := {x000011, x110101, x110110, x111001, x111010}

/-- probabilities for $|0_L⟩$ (a concrete rational point in the affine family) -/
def prob0 : BitString n → ℚ :=
  fun s =>
    if s = x000000 then (1 : ℚ) / 6
    else if s = x011101 then (1 : ℚ) / 12
    else if s = x011110 then (1 : ℚ) / 12
    else if s = x101101 then (1 : ℚ) / 12
    else if s = x101110 then (1 : ℚ) / 12
    else if s = x110011 then (1 : ℚ) / 2
    else 0

/-- probabilities for $|1_L⟩$ -/
def prob1 : BitString n → ℚ :=
  fun s =>
    if s = x010111 then (1 : ℚ) / 6
    else if s = x011011 then (1 : ℚ) / 6
    else if s = x100111 then (1 : ℚ) / 6
    else if s = x101011 then (1 : ℚ) / 6
    else if s = x110000 then (1 : ℚ) / 3
    else 0

/-- probabilities for $|2_L⟩$ -/
def prob2 : BitString n → ℚ :=
  fun s =>
    if s = x010001 then (1 : ℚ) / 6
    else if s = x010010 then (1 : ℚ) / 6
    else if s = x100001 then (1 : ℚ) / 6
    else if s = x100010 then (1 : ℚ) / 6
    else if s = x111111 then (1 : ℚ) / 3
    else 0

/-- probabilities for $|3_L⟩$ -/
def prob3 : BitString n → ℚ :=
  fun s =>
    if s = x000011 then (1 : ℚ) / 3
    else if s = x110101 then (1 : ℚ) / 6
    else if s = x110110 then (1 : ℚ) / 6
    else if s = x111001 then (1 : ℚ) / 6
    else if s = x111010 then (1 : ℚ) / 6
    else 0

/-- common Z-expectation target (verified by `native_decide`) -/
def targetZ : Fin n → ℚ :=
  ![(-1 : ℚ) / 3, (-1 : ℚ) / 3, (1 : ℚ) / 3, (1 : ℚ) / 3, (-1 : ℚ) / 3, (-1 : ℚ) / 3]

/-- Bundle all data for the example. -/
def ex642 : ExampleData n m K :=
  { a := a642
    S := S642
    supp := ![supp0, supp1, supp2, supp3]
    prob := ![prob0, prob1, prob2, prob3]
    targetZ := targetZ }

/-- One-line verification of the full example bundle. -/
theorem ex642_ok : ex642.OK := by
  native_decide

end CatalogueExample_6_4_2

end Examples.D2.Ex642
