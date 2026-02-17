import SS.BD16Defs

/-!
# BD16 example #10: a = (1,1,1,2,2,3,5)

This file verifies the explicit self-complementary BD16 code from BD16_distance3.tex
(the section titled "An explicit self-complementary BD16 code for a = (1,1,1,2,2,3,5)").

The amplitudes involve √5 and √10, so we rely on `QSqrt235i`.
-/

namespace BD16v10

open SS SS.Verify SS.BD16

/-- Support of `|0_L⟩` (14 elements). -/
def supp : Finset (BitString 7) := {
  bs false false false false false false false,  -- 0000000
  bs false false false false false true  true,   -- 0000011
  bs false false true  false true  false true,   -- 0010101
  bs false false true  true  false false true,   -- 0011001
  bs false true  false false true  false true,   -- 0100101
  bs false true  false true  false false true,   -- 0101001
  bs true  false false false true  false true,   -- 1000101
  bs true  false false true  false false true,   -- 1001001
  bs false false true  true  true  true  false,  -- 0011110
  bs false true  false true  true  true  false,  -- 0101110
  bs true  false false true  true  true  false,  -- 1001110
  bs true  true  true  false false false true,   -- 1110001
  bs true  true  true  false true  true  false,  -- 1110110
  bs true  true  true  true  false true  false   -- 1111010
}

/-- BD16 code for a = (1,1,1,2,2,3,5). -/
def code : BD16Code where
  a := ![1, 1, 1, 2, 2, 3, 5]
  supp := supp
  prob := fun x =>
    if x = bs false false false false false false false then 1/16
    else if x = bs false false false false false true  true  then 1/16
    else if x = bs false false true  false true  false true  then 3/64
    else if x = bs false false true  true  false false true  then 3/64
    else if x = bs false true  false false true  false true  then 3/64
    else if x = bs false true  false true  false false true  then 3/64
    else if x = bs true  false false false true  false true  then 3/64
    else if x = bs true  false false true  false false true  then 3/64
    else if x = bs false false true  true  true  true  false then 3/32
    else if x = bs false true  false true  true  true  false then 3/32
    else if x = bs true  false false true  true  true  false then 3/32
    else if x = bs true  true  true  false false false true  then 5/32
    else if x = bs true  true  true  false true  true  false then 5/64
    else if x = bs true  true  true  true  false true  false then 5/64
    else 0
  amp := fun x =>
    if x = bs false false false false false false false then Amp.rat (1/4)
    else if x = bs false false false false false true  true  then Amp.rat (1/4)
    else if x = bs false false true  false true  false true  then Amp.ir3 (-1/8)
    else if x = bs false false true  true  false false true  then Amp.ir3 (-1/8)
    else if x = bs false true  false false true  false true  then Amp.ir3 (-1/8)
    else if x = bs false true  false true  false false true  then Amp.ir3 (-1/8)
    else if x = bs true  false false false true  false true  then Amp.ir3 (-1/8)
    else if x = bs true  false false true  false false true  then Amp.ir3 (-1/8)
    else if x = bs false false true  true  true  true  false then Amp.r6 (-1/8)
    else if x = bs false true  false true  true  true  false then Amp.r6 (-1/8)
    else if x = bs true  false false true  true  true  false then Amp.r6 (-1/8)
    else if x = bs true  true  true  false false false true  then Amp.r10 (-1/8)
    else if x = bs true  true  true  false true  true  false then Amp.ir5 (1/8)
    else if x = bs true  true  true  true  false true  false then Amp.ir5 (1/8)
    else Amp.z

/-- Layer 1 verification. -/
theorem layer1_ok : code.layer1OK := by native_decide

/-- Layer 2 verification (full KL for all weight-≤2 Paulis). -/
theorem layer2_ok : code.layer2OK 2 := by native_decide

end BD16v10
