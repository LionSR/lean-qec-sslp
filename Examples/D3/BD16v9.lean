import SS.BD16Defs

/-!
# BD16 example #9: a = (1,1,1,2,3,3,4)

This file verifies the explicit BD16 distance-3 code from BD16_distance3.tex
(see the section titled "Exact BD16 examples for a = (1,1,1,2,3,3,4)").

The amplitudes involve √10, so we rely on `QSqrt235i`.
-/

namespace BD16v9

open SS SS.Verify SS.BD16

def s0 : BitString 7 := bs false false false false false false false  -- 0000000

def s1 : BitString 7 := bs false false false true  true  true  false   -- 0001110

def s2 : BitString 7 := bs false true  true  false true  true  false    -- 0110110

def s3 : BitString 7 := bs false true  true  true  false false true     -- 0111001

def s4 : BitString 7 := bs true  false false false false true  true     -- 1000011

def s5 : BitString 7 := bs true  false false false true  false true     -- 1000101

def s6 : BitString 7 := bs true  true  true  true  false true  false    -- 1111010

def s7 : BitString 7 := bs true  true  true  true  true  false false    -- 1111100

/-- Support of `|0_L⟩` (8 elements). -/
def supp : Finset (BitString 7) := {s0, s1, s2, s3, s4, s5, s6, s7}

/-- BD16 code for a = (1,1,1,2,3,3,4). -/
def code : BD16Code where
  a := ![1, 1, 1, 2, 3, 3, 4]
  supp := supp
  prob := fun x =>
    if x = s0 then 1/16
    else if x = s1 then 1/8
    else if x = s2 then 1/8
    else if x = s3 then 3/16
    else if x = s4 then 5/32
    else if x = s5 then 5/32
    else if x = s6 then 3/32
    else if x = s7 then 3/32
    else 0
  amp := fun x =>
    if x = s0 then Amp.rat (1/4)
    else if x = s1 then Amp.ir2 (1/4)
    else if x = s2 then Amp.r2 (1/4)
    else if x = s3 then Amp.r3 (1/4)
    else if x = s4 then Amp.ir10 (1/8)
    else if x = s5 then Amp.ir10 (1/8)
    else if x = s6 then Amp.ir6 (1/8)
    else if x = s7 then Amp.ir6 (-1/8)
    else Amp.z

/-- Layer 1 verification. -/
theorem layer1_ok : code.layer1OK := by native_decide

/-- Layer 2 verification (full KL for all weight-≤2 Paulis). -/
theorem layer2_ok : code.layer2OK 2 := by native_decide

end BD16v9
