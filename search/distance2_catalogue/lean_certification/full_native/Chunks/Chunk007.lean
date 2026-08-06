import SS

namespace Catalogue.Chunk007

open SS SS.Verify

/-- Catalogue code #3500: ((6,2,2)), m=11, a=[2, 3, 3, 4, 7, 10], S=[0, 6]. -/
def code_3500 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3500_ok : code_3500.OK := by native_decide
/-- Code #3500 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3500_qec :
    ∃ ψ, SS.IsAmplitudes code_3500 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3500 code_3500_ok (by decide) (by decide)

/-- Catalogue code #3501: ((6,2,2)), m=11, a=[2, 3, 3, 4, 9, 10], S=[0, 5]. -/
def code_3501 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3501_ok : code_3501.OK := by native_decide
/-- Code #3501 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3501_qec :
    ∃ ψ, SS.IsAmplitudes code_3501 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3501 code_3501_ok (by decide) (by decide)

/-- Catalogue code #3502: ((6,2,2)), m=11, a=[2, 3, 3, 4, 10, 10], S=[0, 5]. -/
def code_3502 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3502_ok : code_3502.OK := by native_decide
/-- Code #3502 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3502_qec :
    ∃ ψ, SS.IsAmplitudes code_3502 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3502 code_3502_ok (by decide) (by decide)

/-- Catalogue code #3503: ((6,2,2)), m=11, a=[2, 3, 3, 4, 10, 10], S=[0, 6]. -/
def code_3503 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3503_ok : code_3503.OK := by native_decide
/-- Code #3503 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3503_qec :
    ∃ ψ, SS.IsAmplitudes code_3503 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3503 code_3503_ok (by decide) (by decide)

/-- Catalogue code #3504: ((6,2,2)), m=11, a=[2, 3, 3, 5, 5, 6], S=[0, 1]. -/
def code_3504 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3504_ok : code_3504.OK := by native_decide
/-- Code #3504 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3504_qec :
    ∃ ψ, SS.IsAmplitudes code_3504 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3504 code_3504_ok (by decide) (by decide)

/-- Catalogue code #3505: ((6,2,2)), m=11, a=[2, 3, 3, 5, 5, 10], S=[0, 4]. -/
def code_3505 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3505_ok : code_3505.OK := by native_decide
/-- Code #3505 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3505_qec :
    ∃ ψ, SS.IsAmplitudes code_3505 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3505 code_3505_ok (by decide) (by decide)

/-- Catalogue code #3506: ((6,2,2)), m=11, a=[2, 3, 3, 5, 6, 6], S=[0, 7]. -/
def code_3506 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3506_ok : code_3506.OK := by native_decide
/-- Code #3506 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3506_qec :
    ∃ ψ, SS.IsAmplitudes code_3506 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3506 code_3506_ok (by decide) (by decide)

/-- Catalogue code #3507: ((6,2,2)), m=11, a=[2, 3, 3, 5, 6, 9], S=[0, 7]. -/
def code_3507 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3507_ok : code_3507.OK := by native_decide
/-- Code #3507 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3507_qec :
    ∃ ψ, SS.IsAmplitudes code_3507 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3507 code_3507_ok (by decide) (by decide)

/-- Catalogue code #3508: ((6,2,2)), m=11, a=[2, 3, 3, 5, 6, 9], S=[0, 10]. -/
def code_3508 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3508_ok : code_3508.OK := by native_decide
/-- Code #3508 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3508_qec :
    ∃ ψ, SS.IsAmplitudes code_3508 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3508 code_3508_ok (by decide) (by decide)

/-- Catalogue code #3509: ((6,2,2)), m=11, a=[2, 3, 3, 5, 8, 9], S=[0, 4]. -/
def code_3509 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3509_ok : code_3509.OK := by native_decide
/-- Code #3509 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3509_qec :
    ∃ ψ, SS.IsAmplitudes code_3509 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3509 code_3509_ok (by decide) (by decide)

/-- Catalogue code #3510: ((6,2,2)), m=11, a=[2, 3, 3, 5, 9, 10], S=[0, 4]. -/
def code_3510 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3510_ok : code_3510.OK := by native_decide
/-- Code #3510 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3510_qec :
    ∃ ψ, SS.IsAmplitudes code_3510 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3510 code_3510_ok (by decide) (by decide)

/-- Catalogue code #3511: ((6,2,2)), m=11, a=[2, 3, 3, 5, 10, 10], S=[0, 4]. -/
def code_3511 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3511_ok : code_3511.OK := by native_decide
/-- Code #3511 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3511_qec :
    ∃ ψ, SS.IsAmplitudes code_3511 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3511 code_3511_ok (by decide) (by decide)

/-- Catalogue code #3512: ((6,2,2)), m=11, a=[2, 3, 3, 6, 6, 7], S=[0, 1]. -/
def code_3512 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3512_ok : code_3512.OK := by native_decide
/-- Code #3512 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3512_qec :
    ∃ ψ, SS.IsAmplitudes code_3512 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3512 code_3512_ok (by decide) (by decide)

/-- Catalogue code #3513: ((6,2,2)), m=11, a=[2, 3, 3, 6, 6, 10], S=[0, 4]. -/
def code_3513 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3513_ok : code_3513.OK := by native_decide
/-- Code #3513 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3513_qec :
    ∃ ψ, SS.IsAmplitudes code_3513 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3513 code_3513_ok (by decide) (by decide)

/-- Catalogue code #3514: ((6,2,2)), m=11, a=[2, 3, 3, 6, 7, 7], S=[0, 1]. -/
def code_3514 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3514_ok : code_3514.OK := by native_decide
/-- Code #3514 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3514_qec :
    ∃ ψ, SS.IsAmplitudes code_3514 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3514 code_3514_ok (by decide) (by decide)

/-- Catalogue code #3515: ((6,2,2)), m=11, a=[2, 3, 3, 6, 7, 9], S=[0, 10]. -/
def code_3515 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3515_ok : code_3515.OK := by native_decide
/-- Code #3515 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3515_qec :
    ∃ ψ, SS.IsAmplitudes code_3515 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3515 code_3515_ok (by decide) (by decide)

/-- Catalogue code #3516: ((6,2,2)), m=11, a=[2, 3, 3, 6, 9, 10], S=[0, 4]. -/
def code_3516 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3516_ok : code_3516.OK := by native_decide
/-- Code #3516 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3516_qec :
    ∃ ψ, SS.IsAmplitudes code_3516 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3516 code_3516_ok (by decide) (by decide)

/-- Catalogue code #3517: ((6,2,2)), m=11, a=[2, 3, 3, 6, 9, 10], S=[0, 7]. -/
def code_3517 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3517_ok : code_3517.OK := by native_decide
/-- Code #3517 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3517_qec :
    ∃ ψ, SS.IsAmplitudes code_3517 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3517 code_3517_ok (by decide) (by decide)

/-- Catalogue code #3518: ((6,2,2)), m=11, a=[2, 3, 3, 6, 10, 10], S=[0, 4]. -/
def code_3518 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3518_ok : code_3518.OK := by native_decide
/-- Code #3518 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3518_qec :
    ∃ ψ, SS.IsAmplitudes code_3518 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3518 code_3518_ok (by decide) (by decide)

/-- Catalogue code #3519: ((6,2,2)), m=11, a=[2, 3, 3, 7, 7, 8], S=[0, 6]. -/
def code_3519 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3519_ok : code_3519.OK := by native_decide
/-- Code #3519 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3519_qec :
    ∃ ψ, SS.IsAmplitudes code_3519 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3519 code_3519_ok (by decide) (by decide)

/-- Catalogue code #3520: ((6,2,2)), m=11, a=[2, 3, 3, 7, 7, 8], S=[0, 10]. -/
def code_3520 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3520_ok : code_3520.OK := by native_decide
/-- Code #3520 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3520_qec :
    ∃ ψ, SS.IsAmplitudes code_3520 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3520 code_3520_ok (by decide) (by decide)

/-- Catalogue code #3521: ((6,2,2)), m=11, a=[2, 3, 3, 7, 7, 10], S=[0, 5]. -/
def code_3521 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3521_ok : code_3521.OK := by native_decide
/-- Code #3521 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3521_qec :
    ∃ ψ, SS.IsAmplitudes code_3521 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3521 code_3521_ok (by decide) (by decide)

/-- Catalogue code #3522: ((6,2,2)), m=11, a=[2, 3, 3, 7, 8, 9], S=[0, 6]. -/
def code_3522 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3522_ok : code_3522.OK := by native_decide
/-- Code #3522 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3522_qec :
    ∃ ψ, SS.IsAmplitudes code_3522 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3522 code_3522_ok (by decide) (by decide)

/-- Catalogue code #3523: ((6,2,2)), m=11, a=[2, 3, 3, 7, 9, 10], S=[0, 5]. -/
def code_3523 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3523_ok : code_3523.OK := by native_decide
/-- Code #3523 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3523_qec :
    ∃ ψ, SS.IsAmplitudes code_3523 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3523 code_3523_ok (by decide) (by decide)

/-- Catalogue code #3524: ((6,2,2)), m=11, a=[2, 3, 3, 7, 9, 10], S=[0, 6]. -/
def code_3524 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3524_ok : code_3524.OK := by native_decide
/-- Code #3524 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3524_qec :
    ∃ ψ, SS.IsAmplitudes code_3524 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3524 code_3524_ok (by decide) (by decide)

/-- Catalogue code #3525: ((6,2,2)), m=11, a=[2, 3, 3, 7, 10, 10], S=[0, 5]. -/
def code_3525 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3525_ok : code_3525.OK := by native_decide
/-- Code #3525 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3525_qec :
    ∃ ψ, SS.IsAmplitudes code_3525 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3525 code_3525_ok (by decide) (by decide)

/-- Catalogue code #3526: ((6,2,2)), m=11, a=[2, 3, 3, 7, 10, 10], S=[0, 6]. -/
def code_3526 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3526_ok : code_3526.OK := by native_decide
/-- Code #3526 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3526_qec :
    ∃ ψ, SS.IsAmplitudes code_3526 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3526 code_3526_ok (by decide) (by decide)

/-- Catalogue code #3527: ((6,2,2)), m=11, a=[2, 3, 4, 4, 4, 8], S=[0, 5]. -/
def code_3527 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3527_ok : code_3527.OK := by native_decide
/-- Code #3527 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3527_qec :
    ∃ ψ, SS.IsAmplitudes code_3527 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3527 code_3527_ok (by decide) (by decide)

/-- Catalogue code #3528: ((6,2,2)), m=11, a=[2, 3, 4, 4, 5, 5], S=[0, 10]. -/
def code_3528 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3528_ok : code_3528.OK := by native_decide
/-- Code #3528 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3528_qec :
    ∃ ψ, SS.IsAmplitudes code_3528 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3528 code_3528_ok (by decide) (by decide)

/-- Catalogue code #3529: ((6,2,2)), m=11, a=[2, 3, 4, 4, 5, 6], S=[0, 1]. -/
def code_3529 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3529_ok : code_3529.OK := by native_decide
/-- Code #3529 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3529_qec :
    ∃ ψ, SS.IsAmplitudes code_3529 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3529 code_3529_ok (by decide) (by decide)

/-- Catalogue code #3530: ((6,2,2)), m=11, a=[2, 3, 4, 4, 5, 6], S=[0, 10]. -/
def code_3530 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3530_ok : code_3530.OK := by native_decide
/-- Code #3530 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3530_qec :
    ∃ ψ, SS.IsAmplitudes code_3530 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3530 code_3530_ok (by decide) (by decide)

/-- Catalogue code #3531: ((6,2,2)), m=11, a=[2, 3, 4, 4, 5, 8], S=[0, 10]. -/
def code_3531 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3531_ok : code_3531.OK := by native_decide
/-- Code #3531 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3531_qec :
    ∃ ψ, SS.IsAmplitudes code_3531 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3531 code_3531_ok (by decide) (by decide)

/-- Catalogue code #3532: ((6,2,2)), m=11, a=[2, 3, 4, 4, 5, 9], S=[0, 10]. -/
def code_3532 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3532_ok : code_3532.OK := by native_decide
/-- Code #3532 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3532_qec :
    ∃ ψ, SS.IsAmplitudes code_3532 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3532 code_3532_ok (by decide) (by decide)

/-- Catalogue code #3533: ((6,2,2)), m=11, a=[2, 3, 4, 4, 6, 6], S=[0, 1]. -/
def code_3533 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3533_ok : code_3533.OK := by native_decide
/-- Code #3533 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3533_qec :
    ∃ ψ, SS.IsAmplitudes code_3533 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3533 code_3533_ok (by decide) (by decide)

/-- Catalogue code #3534: ((6,2,2)), m=11, a=[2, 3, 4, 4, 6, 6], S=[0, 10]. -/
def code_3534 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3534_ok : code_3534.OK := by native_decide
/-- Code #3534 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3534_qec :
    ∃ ψ, SS.IsAmplitudes code_3534 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3534 code_3534_ok (by decide) (by decide)

/-- Catalogue code #3535: ((6,2,2)), m=11, a=[2, 3, 4, 4, 6, 7], S=[0, 10]. -/
def code_3535 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3535_ok : code_3535.OK := by native_decide
/-- Code #3535 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3535_qec :
    ∃ ψ, SS.IsAmplitudes code_3535 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3535 code_3535_ok (by decide) (by decide)

/-- Catalogue code #3536: ((6,2,2)), m=11, a=[2, 3, 4, 4, 6, 8], S=[0, 10]. -/
def code_3536 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3536_ok : code_3536.OK := by native_decide
/-- Code #3536 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3536_qec :
    ∃ ψ, SS.IsAmplitudes code_3536 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3536 code_3536_ok (by decide) (by decide)

/-- Catalogue code #3537: ((6,2,2)), m=11, a=[2, 3, 4, 4, 6, 9], S=[0, 1]. -/
def code_3537 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3537_ok : code_3537.OK := by native_decide
/-- Code #3537 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3537_qec :
    ∃ ψ, SS.IsAmplitudes code_3537 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3537 code_3537_ok (by decide) (by decide)

/-- Catalogue code #3538: ((6,2,2)), m=11, a=[2, 3, 4, 4, 8, 8], S=[0, 5]. -/
def code_3538 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3538_ok : code_3538.OK := by native_decide
/-- Code #3538 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3538_qec :
    ∃ ψ, SS.IsAmplitudes code_3538 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3538 code_3538_ok (by decide) (by decide)

/-- Catalogue code #3539: ((6,2,2)), m=11, a=[2, 3, 4, 4, 8, 9], S=[0, 5]. -/
def code_3539 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3539_ok : code_3539.OK := by native_decide
/-- Code #3539 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3539_qec :
    ∃ ψ, SS.IsAmplitudes code_3539 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3539 code_3539_ok (by decide) (by decide)

/-- Catalogue code #3540: ((6,2,2)), m=11, a=[2, 3, 4, 4, 9, 9], S=[0, 10]. -/
def code_3540 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3540_ok : code_3540.OK := by native_decide
/-- Code #3540 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3540_qec :
    ∃ ψ, SS.IsAmplitudes code_3540 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3540 code_3540_ok (by decide) (by decide)

/-- Catalogue code #3541: ((6,2,2)), m=11, a=[2, 3, 4, 4, 9, 10], S=[0, 5]. -/
def code_3541 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3541_ok : code_3541.OK := by native_decide
/-- Code #3541 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3541_qec :
    ∃ ψ, SS.IsAmplitudes code_3541 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3541 code_3541_ok (by decide) (by decide)

/-- Catalogue code #3542: ((6,2,2)), m=11, a=[2, 3, 4, 4, 10, 10], S=[0, 5]. -/
def code_3542 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3542_ok : code_3542.OK := by native_decide
/-- Code #3542 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3542_qec :
    ∃ ψ, SS.IsAmplitudes code_3542 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3542 code_3542_ok (by decide) (by decide)

/-- Catalogue code #3543: ((6,2,2)), m=11, a=[2, 3, 4, 4, 10, 10], S=[0, 6]. -/
def code_3543 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3543_ok : code_3543.OK := by native_decide
/-- Code #3543 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3543_qec :
    ∃ ψ, SS.IsAmplitudes code_3543 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3543 code_3543_ok (by decide) (by decide)

/-- Catalogue code #3544: ((6,2,2)), m=11, a=[2, 3, 4, 5, 5, 6], S=[0, 1]. -/
def code_3544 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3544_ok : code_3544.OK := by native_decide
/-- Code #3544 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3544_qec :
    ∃ ψ, SS.IsAmplitudes code_3544 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3544 code_3544_ok (by decide) (by decide)

/-- Catalogue code #3545: ((6,2,2)), m=11, a=[2, 3, 4, 5, 5, 7], S=[0, 1]. -/
def code_3545 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3545_ok : code_3545.OK := by native_decide
/-- Code #3545 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3545_qec :
    ∃ ψ, SS.IsAmplitudes code_3545 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3545 code_3545_ok (by decide) (by decide)

/-- Catalogue code #3546: ((6,2,2)), m=11, a=[2, 3, 4, 5, 5, 8], S=[0, 1]. -/
def code_3546 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_3546_ok : code_3546.OK := by native_decide
/-- Code #3546 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3546_qec :
    ∃ ψ, SS.IsAmplitudes code_3546 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3546 code_3546_ok (by decide) (by decide)

/-- Catalogue code #3547: ((6,2,2)), m=11, a=[2, 3, 4, 5, 5, 9], S=[0, 1]. -/
def code_3547 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3547_ok : code_3547.OK := by native_decide
/-- Code #3547 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3547_qec :
    ∃ ψ, SS.IsAmplitudes code_3547 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3547 code_3547_ok (by decide) (by decide)

/-- Catalogue code #3548: ((6,2,2)), m=11, a=[2, 3, 4, 5, 5, 9], S=[0, 10]. -/
def code_3548 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3548_ok : code_3548.OK := by native_decide
/-- Code #3548 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3548_qec :
    ∃ ψ, SS.IsAmplitudes code_3548 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3548 code_3548_ok (by decide) (by decide)

/-- Catalogue code #3549: ((6,2,2)), m=11, a=[2, 3, 4, 5, 6, 7], S=[0, 1]. -/
def code_3549 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3549_ok : code_3549.OK := by native_decide
/-- Code #3549 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3549_qec :
    ∃ ψ, SS.IsAmplitudes code_3549 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3549 code_3549_ok (by decide) (by decide)

/-- Catalogue code #3550: ((6,2,2)), m=11, a=[2, 3, 4, 5, 6, 8], S=[0, 10]. -/
def code_3550 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3550_ok : code_3550.OK := by native_decide
/-- Code #3550 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3550_qec :
    ∃ ψ, SS.IsAmplitudes code_3550 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3550 code_3550_ok (by decide) (by decide)

/-- Catalogue code #3551: ((6,2,2)), m=11, a=[2, 3, 4, 5, 6, 9], S=[0, 1]. -/
def code_3551 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3551_ok : code_3551.OK := by native_decide
/-- Code #3551 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3551_qec :
    ∃ ψ, SS.IsAmplitudes code_3551 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3551 code_3551_ok (by decide) (by decide)

/-- Catalogue code #3552: ((6,2,2)), m=11, a=[2, 3, 4, 5, 6, 9], S=[0, 10]. -/
def code_3552 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3552_ok : code_3552.OK := by native_decide
/-- Code #3552 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3552_qec :
    ∃ ψ, SS.IsAmplitudes code_3552 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3552 code_3552_ok (by decide) (by decide)

/-- Catalogue code #3553: ((6,2,2)), m=11, a=[2, 3, 4, 5, 7, 7], S=[0, 1]. -/
def code_3553 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3553_ok : code_3553.OK := by native_decide
/-- Code #3553 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3553_qec :
    ∃ ψ, SS.IsAmplitudes code_3553 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3553 code_3553_ok (by decide) (by decide)

/-- Catalogue code #3554: ((6,2,2)), m=11, a=[2, 3, 4, 5, 7, 8], S=[0, 1]. -/
def code_3554 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3554_ok : code_3554.OK := by native_decide
/-- Code #3554 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3554_qec :
    ∃ ψ, SS.IsAmplitudes code_3554 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3554 code_3554_ok (by decide) (by decide)

/-- Catalogue code #3555: ((6,2,2)), m=11, a=[2, 3, 4, 5, 8, 9], S=[0, 10]. -/
def code_3555 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3555_ok : code_3555.OK := by native_decide
/-- Code #3555 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3555_qec :
    ∃ ψ, SS.IsAmplitudes code_3555 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3555 code_3555_ok (by decide) (by decide)

/-- Catalogue code #3556: ((6,2,2)), m=11, a=[2, 3, 4, 6, 6, 7], S=[0, 10]. -/
def code_3556 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3556_ok : code_3556.OK := by native_decide
/-- Code #3556 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3556_qec :
    ∃ ψ, SS.IsAmplitudes code_3556 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3556 code_3556_ok (by decide) (by decide)

/-- Catalogue code #3557: ((6,2,2)), m=11, a=[2, 3, 4, 6, 6, 9], S=[0, 1]. -/
def code_3557 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3557_ok : code_3557.OK := by native_decide
/-- Code #3557 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3557_qec :
    ∃ ψ, SS.IsAmplitudes code_3557 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3557 code_3557_ok (by decide) (by decide)

/-- Catalogue code #3558: ((6,2,2)), m=11, a=[2, 3, 4, 6, 7, 7], S=[0, 1]. -/
def code_3558 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3558_ok : code_3558.OK := by native_decide
/-- Code #3558 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3558_qec :
    ∃ ψ, SS.IsAmplitudes code_3558 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3558 code_3558_ok (by decide) (by decide)

/-- Catalogue code #3559: ((6,2,2)), m=11, a=[2, 3, 4, 6, 7, 9], S=[0, 10]. -/
def code_3559 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3559_ok : code_3559.OK := by native_decide
/-- Code #3559 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3559_qec :
    ∃ ψ, SS.IsAmplitudes code_3559 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3559 code_3559_ok (by decide) (by decide)

/-- Catalogue code #3560: ((6,2,2)), m=11, a=[2, 3, 4, 6, 8, 8], S=[0, 10]. -/
def code_3560 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3560_ok : code_3560.OK := by native_decide
/-- Code #3560 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3560_qec :
    ∃ ψ, SS.IsAmplitudes code_3560 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3560 code_3560_ok (by decide) (by decide)

/-- Catalogue code #3561: ((6,2,2)), m=11, a=[2, 3, 4, 6, 8, 9], S=[0, 1]. -/
def code_3561 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3561_ok : code_3561.OK := by native_decide
/-- Code #3561 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3561_qec :
    ∃ ψ, SS.IsAmplitudes code_3561 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3561 code_3561_ok (by decide) (by decide)

/-- Catalogue code #3562: ((6,2,2)), m=11, a=[2, 3, 4, 7, 7, 10], S=[0, 5]. -/
def code_3562 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3562_ok : code_3562.OK := by native_decide
/-- Code #3562 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3562_qec :
    ∃ ψ, SS.IsAmplitudes code_3562 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3562 code_3562_ok (by decide) (by decide)

/-- Catalogue code #3563: ((6,2,2)), m=11, a=[2, 3, 4, 7, 7, 10], S=[0, 6]. -/
def code_3563 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3563_ok : code_3563.OK := by native_decide
/-- Code #3563 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3563_qec :
    ∃ ψ, SS.IsAmplitudes code_3563 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3563 code_3563_ok (by decide) (by decide)

/-- Catalogue code #3564: ((6,2,2)), m=11, a=[2, 3, 4, 7, 8, 8], S=[0, 1]. -/
def code_3564 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3564_ok : code_3564.OK := by native_decide
/-- Code #3564 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3564_qec :
    ∃ ψ, SS.IsAmplitudes code_3564 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3564 code_3564_ok (by decide) (by decide)

/-- Catalogue code #3565: ((6,2,2)), m=11, a=[2, 3, 4, 7, 8, 10], S=[0, 6]. -/
def code_3565 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3565_ok : code_3565.OK := by native_decide
/-- Code #3565 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3565_qec :
    ∃ ψ, SS.IsAmplitudes code_3565 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3565 code_3565_ok (by decide) (by decide)

/-- Catalogue code #3566: ((6,2,2)), m=11, a=[2, 3, 4, 7, 9, 10], S=[0, 5]. -/
def code_3566 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3566_ok : code_3566.OK := by native_decide
/-- Code #3566 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3566_qec :
    ∃ ψ, SS.IsAmplitudes code_3566 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3566 code_3566_ok (by decide) (by decide)

/-- Catalogue code #3567: ((6,2,2)), m=11, a=[2, 3, 4, 7, 10, 10], S=[0, 6]. -/
def code_3567 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3567_ok : code_3567.OK := by native_decide
/-- Code #3567 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3567_qec :
    ∃ ψ, SS.IsAmplitudes code_3567 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3567 code_3567_ok (by decide) (by decide)

/-- Catalogue code #3568: ((6,2,2)), m=11, a=[2, 3, 4, 8, 8, 9], S=[0, 5]. -/
def code_3568 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3568_ok : code_3568.OK := by native_decide
/-- Code #3568 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3568_qec :
    ∃ ψ, SS.IsAmplitudes code_3568 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3568 code_3568_ok (by decide) (by decide)

/-- Catalogue code #3569: ((6,2,2)), m=11, a=[2, 3, 4, 8, 9, 10], S=[0, 5]. -/
def code_3569 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_3569_ok : code_3569.OK := by native_decide
/-- Code #3569 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3569_qec :
    ∃ ψ, SS.IsAmplitudes code_3569 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3569 code_3569_ok (by decide) (by decide)

/-- Catalogue code #3570: ((6,2,2)), m=11, a=[2, 3, 4, 8, 10, 10], S=[0, 6]. -/
def code_3570 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3570_ok : code_3570.OK := by native_decide
/-- Code #3570 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3570_qec :
    ∃ ψ, SS.IsAmplitudes code_3570 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3570 code_3570_ok (by decide) (by decide)

/-- Catalogue code #3571: ((6,2,2)), m=11, a=[2, 3, 5, 5, 6, 9], S=[0, 1]. -/
def code_3571 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3571_ok : code_3571.OK := by native_decide
/-- Code #3571 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3571_qec :
    ∃ ψ, SS.IsAmplitudes code_3571 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3571 code_3571_ok (by decide) (by decide)

/-- Catalogue code #3572: ((6,2,2)), m=11, a=[2, 3, 5, 5, 6, 9], S=[0, 4]. -/
def code_3572 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3572_ok : code_3572.OK := by native_decide
/-- Code #3572 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3572_qec :
    ∃ ψ, SS.IsAmplitudes code_3572 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3572 code_3572_ok (by decide) (by decide)

/-- Catalogue code #3573: ((6,2,2)), m=11, a=[2, 3, 5, 5, 6, 9], S=[0, 7]. -/
def code_3573 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3573_ok : code_3573.OK := by native_decide
/-- Code #3573 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3573_qec :
    ∃ ψ, SS.IsAmplitudes code_3573 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3573 code_3573_ok (by decide) (by decide)

/-- Catalogue code #3574: ((6,2,2)), m=11, a=[2, 3, 5, 5, 6, 10], S=[0, 7]. -/
def code_3574 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3574_ok : code_3574.OK := by native_decide
/-- Code #3574 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3574_qec :
    ∃ ψ, SS.IsAmplitudes code_3574 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3574 code_3574_ok (by decide) (by decide)

/-- Catalogue code #3575: ((6,2,2)), m=11, a=[2, 3, 5, 5, 7, 8], S=[0, 1]. -/
def code_3575 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3575_ok : code_3575.OK := by native_decide
/-- Code #3575 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3575_qec :
    ∃ ψ, SS.IsAmplitudes code_3575 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3575 code_3575_ok (by decide) (by decide)

/-- Catalogue code #3576: ((6,2,2)), m=11, a=[2, 3, 5, 5, 7, 8], S=[0, 10]. -/
def code_3576 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3576_ok : code_3576.OK := by native_decide
/-- Code #3576 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3576_qec :
    ∃ ψ, SS.IsAmplitudes code_3576 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3576 code_3576_ok (by decide) (by decide)

/-- Catalogue code #3577: ((6,2,2)), m=11, a=[2, 3, 5, 5, 8, 10], S=[0, 4]. -/
def code_3577 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3577_ok : code_3577.OK := by native_decide
/-- Code #3577 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3577_qec :
    ∃ ψ, SS.IsAmplitudes code_3577 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3577 code_3577_ok (by decide) (by decide)

/-- Catalogue code #3578: ((6,2,2)), m=11, a=[2, 3, 5, 5, 8, 10], S=[0, 7]. -/
def code_3578 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3578_ok : code_3578.OK := by native_decide
/-- Code #3578 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3578_qec :
    ∃ ψ, SS.IsAmplitudes code_3578 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3578 code_3578_ok (by decide) (by decide)

/-- Catalogue code #3579: ((6,2,2)), m=11, a=[2, 3, 5, 5, 9, 10], S=[0, 4]. -/
def code_3579 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3579_ok : code_3579.OK := by native_decide
/-- Code #3579 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3579_qec :
    ∃ ψ, SS.IsAmplitudes code_3579 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3579 code_3579_ok (by decide) (by decide)

/-- Catalogue code #3580: ((6,2,2)), m=11, a=[2, 3, 5, 5, 9, 10], S=[0, 7]. -/
def code_3580 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3580_ok : code_3580.OK := by native_decide
/-- Code #3580 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3580_qec :
    ∃ ψ, SS.IsAmplitudes code_3580 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3580 code_3580_ok (by decide) (by decide)

/-- Catalogue code #3581: ((6,2,2)), m=11, a=[2, 3, 5, 5, 10, 10], S=[0, 4]. -/
def code_3581 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3581_ok : code_3581.OK := by native_decide
/-- Code #3581 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3581_qec :
    ∃ ψ, SS.IsAmplitudes code_3581 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3581 code_3581_ok (by decide) (by decide)

/-- Catalogue code #3582: ((6,2,2)), m=11, a=[2, 3, 5, 6, 6, 8], S=[0, 4]. -/
def code_3582 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3582_ok : code_3582.OK := by native_decide
/-- Code #3582 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3582_qec :
    ∃ ψ, SS.IsAmplitudes code_3582 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3582 code_3582_ok (by decide) (by decide)

/-- Catalogue code #3583: ((6,2,2)), m=11, a=[2, 3, 5, 6, 7, 7], S=[0, 1]. -/
def code_3583 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3583_ok : code_3583.OK := by native_decide
/-- Code #3583 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3583_qec :
    ∃ ψ, SS.IsAmplitudes code_3583 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3583 code_3583_ok (by decide) (by decide)

/-- Catalogue code #3584: ((6,2,2)), m=11, a=[2, 3, 5, 6, 7, 7], S=[0, 10]. -/
def code_3584 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3584_ok : code_3584.OK := by native_decide
/-- Code #3584 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3584_qec :
    ∃ ψ, SS.IsAmplitudes code_3584 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3584 code_3584_ok (by decide) (by decide)

/-- Catalogue code #3585: ((6,2,2)), m=11, a=[2, 3, 5, 6, 7, 8], S=[0, 10]. -/
def code_3585 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3585_ok : code_3585.OK := by native_decide
/-- Code #3585 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3585_qec :
    ∃ ψ, SS.IsAmplitudes code_3585 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3585 code_3585_ok (by decide) (by decide)

/-- Catalogue code #3586: ((6,2,2)), m=11, a=[2, 3, 5, 6, 9, 10], S=[0, 7]. -/
def code_3586 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3586_ok : code_3586.OK := by native_decide
/-- Code #3586 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3586_qec :
    ∃ ψ, SS.IsAmplitudes code_3586 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3586 code_3586_ok (by decide) (by decide)

/-- Catalogue code #3587: ((6,2,2)), m=11, a=[2, 3, 5, 6, 10, 10], S=[0, 7]. -/
def code_3587 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3587_ok : code_3587.OK := by native_decide
/-- Code #3587 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3587_qec :
    ∃ ψ, SS.IsAmplitudes code_3587 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3587 code_3587_ok (by decide) (by decide)

/-- Catalogue code #3588: ((6,2,2)), m=11, a=[2, 3, 5, 7, 8, 8], S=[0, 1]. -/
def code_3588 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3588_ok : code_3588.OK := by native_decide
/-- Code #3588 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3588_qec :
    ∃ ψ, SS.IsAmplitudes code_3588 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3588 code_3588_ok (by decide) (by decide)

/-- Catalogue code #3589: ((6,2,2)), m=11, a=[2, 3, 5, 7, 8, 8], S=[0, 10]. -/
def code_3589 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3589_ok : code_3589.OK := by native_decide
/-- Code #3589 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3589_qec :
    ∃ ψ, SS.IsAmplitudes code_3589 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3589 code_3589_ok (by decide) (by decide)

/-- Catalogue code #3590: ((6,2,2)), m=11, a=[2, 3, 5, 7, 8, 9], S=[0, 10]. -/
def code_3590 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3590_ok : code_3590.OK := by native_decide
/-- Code #3590 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3590_qec :
    ∃ ψ, SS.IsAmplitudes code_3590 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3590 code_3590_ok (by decide) (by decide)

/-- Catalogue code #3591: ((6,2,2)), m=11, a=[2, 3, 5, 8, 8, 10], S=[0, 4]. -/
def code_3591 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3591_ok : code_3591.OK := by native_decide
/-- Code #3591 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3591_qec :
    ∃ ψ, SS.IsAmplitudes code_3591 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3591 code_3591_ok (by decide) (by decide)

/-- Catalogue code #3592: ((6,2,2)), m=11, a=[2, 3, 5, 8, 9, 9], S=[0, 4]. -/
def code_3592 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3592_ok : code_3592.OK := by native_decide
/-- Code #3592 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3592_qec :
    ∃ ψ, SS.IsAmplitudes code_3592 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3592 code_3592_ok (by decide) (by decide)

/-- Catalogue code #3593: ((6,2,2)), m=11, a=[2, 3, 5, 8, 9, 9], S=[0, 10]. -/
def code_3593 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3593_ok : code_3593.OK := by native_decide
/-- Code #3593 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3593_qec :
    ∃ ψ, SS.IsAmplitudes code_3593 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3593 code_3593_ok (by decide) (by decide)

/-- Catalogue code #3594: ((6,2,2)), m=11, a=[2, 3, 5, 8, 10, 10], S=[0, 7]. -/
def code_3594 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3594_ok : code_3594.OK := by native_decide
/-- Code #3594 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3594_qec :
    ∃ ψ, SS.IsAmplitudes code_3594 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3594 code_3594_ok (by decide) (by decide)

/-- Catalogue code #3595: ((6,2,2)), m=11, a=[2, 3, 6, 6, 6, 7], S=[0, 10]. -/
def code_3595 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3595_ok : code_3595.OK := by native_decide
/-- Code #3595 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3595_qec :
    ∃ ψ, SS.IsAmplitudes code_3595 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3595 code_3595_ok (by decide) (by decide)

/-- Catalogue code #3596: ((6,2,2)), m=11, a=[2, 3, 6, 6, 6, 8], S=[0, 10]. -/
def code_3596 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3596_ok : code_3596.OK := by native_decide
/-- Code #3596 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3596_qec :
    ∃ ψ, SS.IsAmplitudes code_3596 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3596 code_3596_ok (by decide) (by decide)

/-- Catalogue code #3597: ((6,2,2)), m=11, a=[2, 3, 6, 6, 7, 7], S=[0, 1]. -/
def code_3597 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3597_ok : code_3597.OK := by native_decide
/-- Code #3597 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3597_qec :
    ∃ ψ, SS.IsAmplitudes code_3597 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3597 code_3597_ok (by decide) (by decide)

/-- Catalogue code #3598: ((6,2,2)), m=11, a=[2, 3, 6, 6, 7, 7], S=[0, 10]. -/
def code_3598 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3598_ok : code_3598.OK := by native_decide
/-- Code #3598 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3598_qec :
    ∃ ψ, SS.IsAmplitudes code_3598 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3598 code_3598_ok (by decide) (by decide)

/-- Catalogue code #3599: ((6,2,2)), m=11, a=[2, 3, 6, 6, 7, 9], S=[0, 1]. -/
def code_3599 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3599_ok : code_3599.OK := by native_decide
/-- Code #3599 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3599_qec :
    ∃ ψ, SS.IsAmplitudes code_3599 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3599 code_3599_ok (by decide) (by decide)

/-- Catalogue code #3600: ((6,2,2)), m=11, a=[2, 3, 6, 6, 8, 10], S=[0, 4]. -/
def code_3600 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3600_ok : code_3600.OK := by native_decide
/-- Code #3600 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3600_qec :
    ∃ ψ, SS.IsAmplitudes code_3600 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3600 code_3600_ok (by decide) (by decide)

/-- Catalogue code #3601: ((6,2,2)), m=11, a=[2, 3, 6, 6, 9, 9], S=[0, 1]. -/
def code_3601 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3601_ok : code_3601.OK := by native_decide
/-- Code #3601 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3601_qec :
    ∃ ψ, SS.IsAmplitudes code_3601 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3601 code_3601_ok (by decide) (by decide)

/-- Catalogue code #3602: ((6,2,2)), m=11, a=[2, 3, 6, 6, 9, 10], S=[0, 4]. -/
def code_3602 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3602_ok : code_3602.OK := by native_decide
/-- Code #3602 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3602_qec :
    ∃ ψ, SS.IsAmplitudes code_3602 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3602 code_3602_ok (by decide) (by decide)

/-- Catalogue code #3603: ((6,2,2)), m=11, a=[2, 3, 6, 6, 9, 10], S=[0, 7]. -/
def code_3603 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3603_ok : code_3603.OK := by native_decide
/-- Code #3603 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3603_qec :
    ∃ ψ, SS.IsAmplitudes code_3603 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3603 code_3603_ok (by decide) (by decide)

/-- Catalogue code #3604: ((6,2,2)), m=11, a=[2, 3, 6, 7, 7, 8], S=[0, 1]. -/
def code_3604 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3604_ok : code_3604.OK := by native_decide
/-- Code #3604 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3604_qec :
    ∃ ψ, SS.IsAmplitudes code_3604 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3604 code_3604_ok (by decide) (by decide)

/-- Catalogue code #3605: ((6,2,2)), m=11, a=[2, 3, 6, 7, 7, 8], S=[0, 10]. -/
def code_3605 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3605_ok : code_3605.OK := by native_decide
/-- Code #3605 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3605_qec :
    ∃ ψ, SS.IsAmplitudes code_3605 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3605 code_3605_ok (by decide) (by decide)

/-- Catalogue code #3606: ((6,2,2)), m=11, a=[2, 3, 6, 7, 8, 9], S=[0, 1]. -/
def code_3606 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3606_ok : code_3606.OK := by native_decide
/-- Code #3606 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3606_qec :
    ∃ ψ, SS.IsAmplitudes code_3606 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3606 code_3606_ok (by decide) (by decide)

/-- Catalogue code #3607: ((6,2,2)), m=11, a=[2, 3, 6, 8, 8, 9], S=[0, 7]. -/
def code_3607 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3607_ok : code_3607.OK := by native_decide
/-- Code #3607 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3607_qec :
    ∃ ψ, SS.IsAmplitudes code_3607 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3607 code_3607_ok (by decide) (by decide)

/-- Catalogue code #3608: ((6,2,2)), m=11, a=[2, 3, 6, 8, 9, 10], S=[0, 4]. -/
def code_3608 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3608_ok : code_3608.OK := by native_decide
/-- Code #3608 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3608_qec :
    ∃ ψ, SS.IsAmplitudes code_3608 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3608 code_3608_ok (by decide) (by decide)

/-- Catalogue code #3609: ((6,2,2)), m=11, a=[2, 3, 6, 8, 9, 10], S=[0, 7]. -/
def code_3609 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3609_ok : code_3609.OK := by native_decide
/-- Code #3609 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3609_qec :
    ∃ ψ, SS.IsAmplitudes code_3609 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3609 code_3609_ok (by decide) (by decide)

/-- Catalogue code #3610: ((6,2,2)), m=11, a=[2, 3, 6, 8, 10, 10], S=[0, 4]. -/
def code_3610 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3610_ok : code_3610.OK := by native_decide
/-- Code #3610 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3610_qec :
    ∃ ψ, SS.IsAmplitudes code_3610 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3610 code_3610_ok (by decide) (by decide)

/-- Catalogue code #3611: ((6,2,2)), m=11, a=[2, 3, 6, 9, 10, 10], S=[0, 4]. -/
def code_3611 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3611_ok : code_3611.OK := by native_decide
/-- Code #3611 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3611_qec :
    ∃ ψ, SS.IsAmplitudes code_3611 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3611 code_3611_ok (by decide) (by decide)

/-- Catalogue code #3612: ((6,2,2)), m=11, a=[2, 3, 6, 10, 10, 10], S=[0, 4]. -/
def code_3612 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3612_ok : code_3612.OK := by native_decide
/-- Code #3612 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3612_qec :
    ∃ ψ, SS.IsAmplitudes code_3612 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3612 code_3612_ok (by decide) (by decide)

/-- Catalogue code #3613: ((6,2,2)), m=11, a=[2, 3, 7, 7, 8, 9], S=[0, 6]. -/
def code_3613 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3613_ok : code_3613.OK := by native_decide
/-- Code #3613 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3613_qec :
    ∃ ψ, SS.IsAmplitudes code_3613 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3613 code_3613_ok (by decide) (by decide)

/-- Catalogue code #3614: ((6,2,2)), m=11, a=[2, 3, 7, 7, 8, 10], S=[0, 5]. -/
def code_3614 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3614_ok : code_3614.OK := by native_decide
/-- Code #3614 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3614_qec :
    ∃ ψ, SS.IsAmplitudes code_3614 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3614 code_3614_ok (by decide) (by decide)

/-- Catalogue code #3615: ((6,2,2)), m=11, a=[2, 3, 7, 7, 8, 10], S=[0, 6]. -/
def code_3615 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3615_ok : code_3615.OK := by native_decide
/-- Code #3615 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3615_qec :
    ∃ ψ, SS.IsAmplitudes code_3615 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3615 code_3615_ok (by decide) (by decide)

/-- Catalogue code #3616: ((6,2,2)), m=11, a=[2, 3, 7, 7, 10, 10], S=[0, 5]. -/
def code_3616 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3616_ok : code_3616.OK := by native_decide
/-- Code #3616 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3616_qec :
    ∃ ψ, SS.IsAmplitudes code_3616 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3616 code_3616_ok (by decide) (by decide)

/-- Catalogue code #3617: ((6,2,2)), m=11, a=[2, 3, 7, 8, 8, 10], S=[0, 6]. -/
def code_3617 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_3617_ok : code_3617.OK := by native_decide
/-- Code #3617 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3617_qec :
    ∃ ψ, SS.IsAmplitudes code_3617 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3617 code_3617_ok (by decide) (by decide)

/-- Catalogue code #3618: ((6,2,2)), m=11, a=[2, 3, 7, 8, 9, 9], S=[0, 6]. -/
def code_3618 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_3618_ok : code_3618.OK := by native_decide
/-- Code #3618 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3618_qec :
    ∃ ψ, SS.IsAmplitudes code_3618 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3618 code_3618_ok (by decide) (by decide)

/-- Catalogue code #3619: ((6,2,2)), m=11, a=[2, 3, 7, 8, 9, 9], S=[0, 10]. -/
def code_3619 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3619_ok : code_3619.OK := by native_decide
/-- Code #3619 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3619_qec :
    ∃ ψ, SS.IsAmplitudes code_3619 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3619 code_3619_ok (by decide) (by decide)

/-- Catalogue code #3620: ((6,2,2)), m=11, a=[2, 3, 7, 8, 9, 10], S=[0, 5]. -/
def code_3620 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3620_ok : code_3620.OK := by native_decide
/-- Code #3620 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3620_qec :
    ∃ ψ, SS.IsAmplitudes code_3620 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3620 code_3620_ok (by decide) (by decide)

/-- Catalogue code #3621: ((6,2,2)), m=11, a=[2, 3, 7, 8, 10, 10], S=[0, 5]. -/
def code_3621 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3621_ok : code_3621.OK := by native_decide
/-- Code #3621 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3621_qec :
    ∃ ψ, SS.IsAmplitudes code_3621 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3621 code_3621_ok (by decide) (by decide)

/-- Catalogue code #3622: ((6,2,2)), m=11, a=[2, 3, 7, 9, 10, 10], S=[0, 5]. -/
def code_3622 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3622_ok : code_3622.OK := by native_decide
/-- Code #3622 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3622_qec :
    ∃ ψ, SS.IsAmplitudes code_3622 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3622 code_3622_ok (by decide) (by decide)

/-- Catalogue code #3623: ((6,2,2)), m=11, a=[2, 3, 7, 10, 10, 10], S=[0, 5]. -/
def code_3623 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3623_ok : code_3623.OK := by native_decide
/-- Code #3623 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3623_qec :
    ∃ ψ, SS.IsAmplitudes code_3623 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3623 code_3623_ok (by decide) (by decide)

/-- Catalogue code #3624: ((6,2,2)), m=11, a=[2, 3, 8, 9, 10, 10], S=[0, 4]. -/
def code_3624 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3624_ok : code_3624.OK := by native_decide
/-- Code #3624 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3624_qec :
    ∃ ψ, SS.IsAmplitudes code_3624 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3624 code_3624_ok (by decide) (by decide)

/-- Catalogue code #3625: ((6,2,2)), m=11, a=[2, 3, 8, 9, 10, 10], S=[0, 5]. -/
def code_3625 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3625_ok : code_3625.OK := by native_decide
/-- Code #3625 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3625_qec :
    ∃ ψ, SS.IsAmplitudes code_3625 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3625 code_3625_ok (by decide) (by decide)

/-- Catalogue code #3626: ((6,2,2)), m=11, a=[2, 3, 8, 10, 10, 10], S=[0, 5]. -/
def code_3626 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3626_ok : code_3626.OK := by native_decide
/-- Code #3626 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3626_qec :
    ∃ ψ, SS.IsAmplitudes code_3626 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3626 code_3626_ok (by decide) (by decide)

/-- Catalogue code #3627: ((6,2,2)), m=11, a=[2, 3, 9, 9, 10, 10], S=[0, 5]. -/
def code_3627 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3627_ok : code_3627.OK := by native_decide
/-- Code #3627 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3627_qec :
    ∃ ψ, SS.IsAmplitudes code_3627 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3627 code_3627_ok (by decide) (by decide)

/-- Catalogue code #3628: ((6,2,2)), m=11, a=[2, 4, 4, 4, 5, 8], S=[0, 10]. -/
def code_3628 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3628_ok : code_3628.OK := by native_decide
/-- Code #3628 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3628_qec :
    ∃ ψ, SS.IsAmplitudes code_3628 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3628 code_3628_ok (by decide) (by decide)

/-- Catalogue code #3629: ((6,2,2)), m=11, a=[2, 4, 4, 5, 5, 8], S=[0, 10]. -/
def code_3629 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3629_ok : code_3629.OK := by native_decide
/-- Code #3629 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3629_qec :
    ∃ ψ, SS.IsAmplitudes code_3629 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3629 code_3629_ok (by decide) (by decide)

/-- Catalogue code #3630: ((6,2,2)), m=11, a=[2, 4, 4, 5, 6, 6], S=[0, 8]. -/
def code_3630 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_3630_ok : code_3630.OK := by native_decide
/-- Code #3630 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3630_qec :
    ∃ ψ, SS.IsAmplitudes code_3630 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3630 code_3630_ok (by decide) (by decide)

/-- Catalogue code #3631: ((6,2,2)), m=11, a=[2, 4, 4, 5, 6, 8], S=[0, 10]. -/
def code_3631 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3631_ok : code_3631.OK := by native_decide
/-- Code #3631 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3631_qec :
    ∃ ψ, SS.IsAmplitudes code_3631 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3631 code_3631_ok (by decide) (by decide)

/-- Catalogue code #3632: ((6,2,2)), m=11, a=[2, 4, 4, 5, 6, 10], S=[0, 8]. -/
def code_3632 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3632_ok : code_3632.OK := by native_decide
/-- Code #3632 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3632_qec :
    ∃ ψ, SS.IsAmplitudes code_3632 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3632 code_3632_ok (by decide) (by decide)

/-- Catalogue code #3633: ((6,2,2)), m=11, a=[2, 4, 4, 5, 8, 8], S=[0, 10]. -/
def code_3633 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3633_ok : code_3633.OK := by native_decide
/-- Code #3633 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3633_qec :
    ∃ ψ, SS.IsAmplitudes code_3633 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3633 code_3633_ok (by decide) (by decide)

/-- Catalogue code #3634: ((6,2,2)), m=11, a=[2, 4, 4, 5, 10, 10], S=[0, 8]. -/
def code_3634 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3634_ok : code_3634.OK := by native_decide
/-- Code #3634 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3634_qec :
    ∃ ψ, SS.IsAmplitudes code_3634 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3634 code_3634_ok (by decide) (by decide)

/-- Catalogue code #3635: ((6,2,2)), m=11, a=[2, 4, 4, 6, 9, 10], S=[0, 3]. -/
def code_3635 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3635_ok : code_3635.OK := by native_decide
/-- Code #3635 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3635_qec :
    ∃ ψ, SS.IsAmplitudes code_3635 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3635 code_3635_ok (by decide) (by decide)

/-- Catalogue code #3636: ((6,2,2)), m=11, a=[2, 4, 4, 6, 9, 10], S=[0, 8]. -/
def code_3636 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3636_ok : code_3636.OK := by native_decide
/-- Code #3636 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3636_qec :
    ∃ ψ, SS.IsAmplitudes code_3636 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3636 code_3636_ok (by decide) (by decide)

/-- Catalogue code #3637: ((6,2,2)), m=11, a=[2, 4, 4, 7, 10, 10], S=[0, 6]. -/
def code_3637 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3637_ok : code_3637.OK := by native_decide
/-- Code #3637 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3637_qec :
    ∃ ψ, SS.IsAmplitudes code_3637 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3637 code_3637_ok (by decide) (by decide)

/-- Catalogue code #3638: ((6,2,2)), m=11, a=[2, 4, 4, 9, 10, 10], S=[0, 8]. -/
def code_3638 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3638_ok : code_3638.OK := by native_decide
/-- Code #3638 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3638_qec :
    ∃ ψ, SS.IsAmplitudes code_3638 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3638 code_3638_ok (by decide) (by decide)

/-- Catalogue code #3639: ((6,2,2)), m=11, a=[2, 4, 5, 5, 6, 8], S=[0, 10]. -/
def code_3639 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3639_ok : code_3639.OK := by native_decide
/-- Code #3639 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3639_qec :
    ∃ ψ, SS.IsAmplitudes code_3639 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3639 code_3639_ok (by decide) (by decide)

/-- Catalogue code #3640: ((6,2,2)), m=11, a=[2, 4, 5, 5, 6, 9], S=[0, 8]. -/
def code_3640 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3640_ok : code_3640.OK := by native_decide
/-- Code #3640 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3640_qec :
    ∃ ψ, SS.IsAmplitudes code_3640 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3640 code_3640_ok (by decide) (by decide)

/-- Catalogue code #3641: ((6,2,2)), m=11, a=[2, 4, 5, 5, 6, 10], S=[0, 8]. -/
def code_3641 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3641_ok : code_3641.OK := by native_decide
/-- Code #3641 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3641_qec :
    ∃ ψ, SS.IsAmplitudes code_3641 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3641 code_3641_ok (by decide) (by decide)

/-- Catalogue code #3642: ((6,2,2)), m=11, a=[2, 4, 5, 5, 7, 8], S=[0, 1]. -/
def code_3642 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3642_ok : code_3642.OK := by native_decide
/-- Code #3642 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3642_qec :
    ∃ ψ, SS.IsAmplitudes code_3642 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3642 code_3642_ok (by decide) (by decide)

/-- Catalogue code #3643: ((6,2,2)), m=11, a=[2, 4, 5, 5, 7, 8], S=[0, 10]. -/
def code_3643 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3643_ok : code_3643.OK := by native_decide
/-- Code #3643 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3643_qec :
    ∃ ψ, SS.IsAmplitudes code_3643 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3643 code_3643_ok (by decide) (by decide)

/-- Catalogue code #3644: ((6,2,2)), m=11, a=[2, 4, 5, 5, 7, 10], S=[0, 3]. -/
def code_3644 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3644_ok : code_3644.OK := by native_decide
/-- Code #3644 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3644_qec :
    ∃ ψ, SS.IsAmplitudes code_3644 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3644 code_3644_ok (by decide) (by decide)

/-- Catalogue code #3645: ((6,2,2)), m=11, a=[2, 4, 5, 5, 7, 10], S=[0, 8]. -/
def code_3645 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3645_ok : code_3645.OK := by native_decide
/-- Code #3645 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3645_qec :
    ∃ ψ, SS.IsAmplitudes code_3645 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3645 code_3645_ok (by decide) (by decide)

/-- Catalogue code #3646: ((6,2,2)), m=11, a=[2, 4, 5, 5, 8, 8], S=[0, 1]. -/
def code_3646 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3646_ok : code_3646.OK := by native_decide
/-- Code #3646 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3646_qec :
    ∃ ψ, SS.IsAmplitudes code_3646 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3646 code_3646_ok (by decide) (by decide)

/-- Catalogue code #3647: ((6,2,2)), m=11, a=[2, 4, 5, 5, 8, 9], S=[0, 1]. -/
def code_3647 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3647_ok : code_3647.OK := by native_decide
/-- Code #3647 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3647_qec :
    ∃ ψ, SS.IsAmplitudes code_3647 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3647 code_3647_ok (by decide) (by decide)

/-- Catalogue code #3648: ((6,2,2)), m=11, a=[2, 4, 5, 5, 8, 9], S=[0, 10]. -/
def code_3648 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3648_ok : code_3648.OK := by native_decide
/-- Code #3648 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3648_qec :
    ∃ ψ, SS.IsAmplitudes code_3648 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3648 code_3648_ok (by decide) (by decide)

/-- Catalogue code #3649: ((6,2,2)), m=11, a=[2, 4, 5, 5, 9, 10], S=[0, 8]. -/
def code_3649 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3649_ok : code_3649.OK := by native_decide
/-- Code #3649 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3649_qec :
    ∃ ψ, SS.IsAmplitudes code_3649 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3649 code_3649_ok (by decide) (by decide)

/-- Catalogue code #3650: ((6,2,2)), m=11, a=[2, 4, 5, 6, 7, 7], S=[0, 1]. -/
def code_3650 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3650_ok : code_3650.OK := by native_decide
/-- Code #3650 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3650_qec :
    ∃ ψ, SS.IsAmplitudes code_3650 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3650 code_3650_ok (by decide) (by decide)

/-- Catalogue code #3651: ((6,2,2)), m=11, a=[2, 4, 5, 6, 7, 7], S=[0, 8]. -/
def code_3651 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3651_ok : code_3651.OK := by native_decide
/-- Code #3651 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3651_qec :
    ∃ ψ, SS.IsAmplitudes code_3651 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3651 code_3651_ok (by decide) (by decide)

/-- Catalogue code #3652: ((6,2,2)), m=11, a=[2, 4, 5, 6, 7, 7], S=[0, 10]. -/
def code_3652 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3652_ok : code_3652.OK := by native_decide
/-- Code #3652 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3652_qec :
    ∃ ψ, SS.IsAmplitudes code_3652 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3652 code_3652_ok (by decide) (by decide)

/-- Catalogue code #3653: ((6,2,2)), m=11, a=[2, 4, 5, 6, 7, 8], S=[0, 1]. -/
def code_3653 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3653_ok : code_3653.OK := by native_decide
/-- Code #3653 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3653_qec :
    ∃ ψ, SS.IsAmplitudes code_3653 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3653 code_3653_ok (by decide) (by decide)

/-- Catalogue code #3654: ((6,2,2)), m=11, a=[2, 4, 5, 6, 7, 10], S=[0, 3]. -/
def code_3654 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3654_ok : code_3654.OK := by native_decide
/-- Code #3654 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3654_qec :
    ∃ ψ, SS.IsAmplitudes code_3654 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3654 code_3654_ok (by decide) (by decide)

/-- Catalogue code #3655: ((6,2,2)), m=11, a=[2, 4, 5, 6, 7, 10], S=[0, 8]. -/
def code_3655 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3655_ok : code_3655.OK := by native_decide
/-- Code #3655 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3655_qec :
    ∃ ψ, SS.IsAmplitudes code_3655 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3655 code_3655_ok (by decide) (by decide)

/-- Catalogue code #3656: ((6,2,2)), m=11, a=[2, 4, 5, 6, 8, 8], S=[0, 1]. -/
def code_3656 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3656_ok : code_3656.OK := by native_decide
/-- Code #3656 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3656_qec :
    ∃ ψ, SS.IsAmplitudes code_3656 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3656 code_3656_ok (by decide) (by decide)

/-- Catalogue code #3657: ((6,2,2)), m=11, a=[2, 4, 5, 6, 8, 8], S=[0, 10]. -/
def code_3657 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3657_ok : code_3657.OK := by native_decide
/-- Code #3657 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3657_qec :
    ∃ ψ, SS.IsAmplitudes code_3657 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3657 code_3657_ok (by decide) (by decide)

/-- Catalogue code #3658: ((6,2,2)), m=11, a=[2, 4, 5, 6, 9, 9], S=[0, 1]. -/
def code_3658 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3658_ok : code_3658.OK := by native_decide
/-- Code #3658 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3658_qec :
    ∃ ψ, SS.IsAmplitudes code_3658 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3658 code_3658_ok (by decide) (by decide)

/-- Catalogue code #3659: ((6,2,2)), m=11, a=[2, 4, 5, 6, 9, 10], S=[0, 8]. -/
def code_3659 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3659_ok : code_3659.OK := by native_decide
/-- Code #3659 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3659_qec :
    ∃ ψ, SS.IsAmplitudes code_3659 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3659 code_3659_ok (by decide) (by decide)

/-- Catalogue code #3660: ((6,2,2)), m=11, a=[2, 4, 5, 6, 10, 10], S=[0, 8]. -/
def code_3660 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3660_ok : code_3660.OK := by native_decide
/-- Code #3660 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3660_qec :
    ∃ ψ, SS.IsAmplitudes code_3660 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3660 code_3660_ok (by decide) (by decide)

/-- Catalogue code #3661: ((6,2,2)), m=11, a=[2, 4, 5, 7, 7, 10], S=[0, 8]. -/
def code_3661 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3661_ok : code_3661.OK := by native_decide
/-- Code #3661 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3661_qec :
    ∃ ψ, SS.IsAmplitudes code_3661 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3661 code_3661_ok (by decide) (by decide)

/-- Catalogue code #3662: ((6,2,2)), m=11, a=[2, 4, 5, 7, 8, 9], S=[0, 1]. -/
def code_3662 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3662_ok : code_3662.OK := by native_decide
/-- Code #3662 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3662_qec :
    ∃ ψ, SS.IsAmplitudes code_3662 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3662 code_3662_ok (by decide) (by decide)

/-- Catalogue code #3663: ((6,2,2)), m=11, a=[2, 4, 5, 7, 9, 10], S=[0, 3]. -/
def code_3663 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3663_ok : code_3663.OK := by native_decide
/-- Code #3663 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3663_qec :
    ∃ ψ, SS.IsAmplitudes code_3663 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3663 code_3663_ok (by decide) (by decide)

/-- Catalogue code #3664: ((6,2,2)), m=11, a=[2, 4, 5, 7, 10, 10], S=[0, 3]. -/
def code_3664 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3664_ok : code_3664.OK := by native_decide
/-- Code #3664 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3664_qec :
    ∃ ψ, SS.IsAmplitudes code_3664 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3664 code_3664_ok (by decide) (by decide)

/-- Catalogue code #3665: ((6,2,2)), m=11, a=[2, 4, 5, 7, 10, 10], S=[0, 8]. -/
def code_3665 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3665_ok : code_3665.OK := by native_decide
/-- Code #3665 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3665_qec :
    ∃ ψ, SS.IsAmplitudes code_3665 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3665 code_3665_ok (by decide) (by decide)

/-- Catalogue code #3666: ((6,2,2)), m=11, a=[2, 4, 5, 8, 8, 8], S=[0, 1]. -/
def code_3666 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3666_ok : code_3666.OK := by native_decide
/-- Code #3666 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3666_qec :
    ∃ ψ, SS.IsAmplitudes code_3666 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3666 code_3666_ok (by decide) (by decide)

/-- Catalogue code #3667: ((6,2,2)), m=11, a=[2, 4, 5, 8, 9, 9], S=[0, 1]. -/
def code_3667 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3667_ok : code_3667.OK := by native_decide
/-- Code #3667 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3667_qec :
    ∃ ψ, SS.IsAmplitudes code_3667 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3667 code_3667_ok (by decide) (by decide)

/-- Catalogue code #3668: ((6,2,2)), m=11, a=[2, 4, 5, 9, 9, 10], S=[0, 3]. -/
def code_3668 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3668_ok : code_3668.OK := by native_decide
/-- Code #3668 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3668_qec :
    ∃ ψ, SS.IsAmplitudes code_3668 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3668 code_3668_ok (by decide) (by decide)

/-- Catalogue code #3669: ((6,2,2)), m=11, a=[2, 4, 5, 9, 10, 10], S=[0, 3]. -/
def code_3669 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3669_ok : code_3669.OK := by native_decide
/-- Code #3669 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3669_qec :
    ∃ ψ, SS.IsAmplitudes code_3669 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3669 code_3669_ok (by decide) (by decide)

/-- Catalogue code #3670: ((6,2,2)), m=11, a=[2, 4, 6, 6, 7, 8], S=[0, 10]. -/
def code_3670 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3670_ok : code_3670.OK := by native_decide
/-- Code #3670 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3670_qec :
    ∃ ψ, SS.IsAmplitudes code_3670 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3670 code_3670_ok (by decide) (by decide)

/-- Catalogue code #3671: ((6,2,2)), m=11, a=[2, 4, 6, 6, 7, 10], S=[0, 3]. -/
def code_3671 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3671_ok : code_3671.OK := by native_decide
/-- Code #3671 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3671_qec :
    ∃ ψ, SS.IsAmplitudes code_3671 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3671 code_3671_ok (by decide) (by decide)

/-- Catalogue code #3672: ((6,2,2)), m=11, a=[2, 4, 6, 6, 9, 10], S=[0, 8]. -/
def code_3672 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3672_ok : code_3672.OK := by native_decide
/-- Code #3672 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3672_qec :
    ∃ ψ, SS.IsAmplitudes code_3672 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3672 code_3672_ok (by decide) (by decide)

/-- Catalogue code #3673: ((6,2,2)), m=11, a=[2, 4, 6, 7, 8, 8], S=[0, 1]. -/
def code_3673 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3673_ok : code_3673.OK := by native_decide
/-- Code #3673 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3673_qec :
    ∃ ψ, SS.IsAmplitudes code_3673 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3673 code_3673_ok (by decide) (by decide)

/-- Catalogue code #3674: ((6,2,2)), m=11, a=[2, 4, 6, 7, 9, 10], S=[0, 8]. -/
def code_3674 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3674_ok : code_3674.OK := by native_decide
/-- Code #3674 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3674_qec :
    ∃ ψ, SS.IsAmplitudes code_3674 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3674 code_3674_ok (by decide) (by decide)

/-- Catalogue code #3675: ((6,2,2)), m=11, a=[2, 4, 6, 7, 10, 10], S=[0, 3]. -/
def code_3675 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3675_ok : code_3675.OK := by native_decide
/-- Code #3675 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3675_qec :
    ∃ ψ, SS.IsAmplitudes code_3675 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3675 code_3675_ok (by decide) (by decide)

/-- Catalogue code #3676: ((6,2,2)), m=11, a=[2, 4, 6, 7, 10, 10], S=[0, 8]. -/
def code_3676 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3676_ok : code_3676.OK := by native_decide
/-- Code #3676 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3676_qec :
    ∃ ψ, SS.IsAmplitudes code_3676 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3676 code_3676_ok (by decide) (by decide)

/-- Catalogue code #3677: ((6,2,2)), m=11, a=[2, 4, 7, 7, 9, 10], S=[0, 5]. -/
def code_3677 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3677_ok : code_3677.OK := by native_decide
/-- Code #3677 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3677_qec :
    ∃ ψ, SS.IsAmplitudes code_3677 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3677 code_3677_ok (by decide) (by decide)

/-- Catalogue code #3678: ((6,2,2)), m=11, a=[2, 4, 7, 7, 10, 10], S=[0, 5]. -/
def code_3678 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3678_ok : code_3678.OK := by native_decide
/-- Code #3678 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3678_qec :
    ∃ ψ, SS.IsAmplitudes code_3678 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3678 code_3678_ok (by decide) (by decide)

/-- Catalogue code #3679: ((6,2,2)), m=11, a=[2, 4, 7, 8, 8, 8], S=[0, 6]. -/
def code_3679 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3679_ok : code_3679.OK := by native_decide
/-- Code #3679 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3679_qec :
    ∃ ψ, SS.IsAmplitudes code_3679 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3679 code_3679_ok (by decide) (by decide)

/-- Catalogue code #3680: ((6,2,2)), m=11, a=[2, 4, 7, 8, 8, 9], S=[0, 6]. -/
def code_3680 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3680_ok : code_3680.OK := by native_decide
/-- Code #3680 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3680_qec :
    ∃ ψ, SS.IsAmplitudes code_3680 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3680 code_3680_ok (by decide) (by decide)

/-- Catalogue code #3681: ((6,2,2)), m=11, a=[2, 4, 7, 8, 8, 10], S=[0, 5]. -/
def code_3681 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3681_ok : code_3681.OK := by native_decide
/-- Code #3681 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3681_qec :
    ∃ ψ, SS.IsAmplitudes code_3681 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3681 code_3681_ok (by decide) (by decide)

/-- Catalogue code #3682: ((6,2,2)), m=11, a=[2, 4, 7, 8, 10, 10], S=[0, 5]. -/
def code_3682 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3682_ok : code_3682.OK := by native_decide
/-- Code #3682 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3682_qec :
    ∃ ψ, SS.IsAmplitudes code_3682 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3682 code_3682_ok (by decide) (by decide)

/-- Catalogue code #3683: ((6,2,2)), m=11, a=[2, 4, 7, 9, 10, 10], S=[0, 3]. -/
def code_3683 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3683_ok : code_3683.OK := by native_decide
/-- Code #3683 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3683_qec :
    ∃ ψ, SS.IsAmplitudes code_3683 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3683 code_3683_ok (by decide) (by decide)

/-- Catalogue code #3684: ((6,2,2)), m=11, a=[2, 4, 7, 9, 10, 10], S=[0, 5]. -/
def code_3684 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3684_ok : code_3684.OK := by native_decide
/-- Code #3684 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3684_qec :
    ∃ ψ, SS.IsAmplitudes code_3684 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3684 code_3684_ok (by decide) (by decide)

/-- Catalogue code #3685: ((6,2,2)), m=11, a=[2, 4, 8, 8, 9, 10], S=[0, 6]. -/
def code_3685 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3685_ok : code_3685.OK := by native_decide
/-- Code #3685 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3685_qec :
    ∃ ψ, SS.IsAmplitudes code_3685 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3685 code_3685_ok (by decide) (by decide)

/-- Catalogue code #3686: ((6,2,2)), m=11, a=[2, 4, 8, 9, 9, 10], S=[0, 6]. -/
def code_3686 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3686_ok : code_3686.OK := by native_decide
/-- Code #3686 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3686_qec :
    ∃ ψ, SS.IsAmplitudes code_3686 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3686 code_3686_ok (by decide) (by decide)

/-- Catalogue code #3687: ((6,2,2)), m=11, a=[2, 4, 8, 9, 10, 10], S=[0, 5]. -/
def code_3687 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3687_ok : code_3687.OK := by native_decide
/-- Code #3687 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3687_qec :
    ∃ ψ, SS.IsAmplitudes code_3687 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3687 code_3687_ok (by decide) (by decide)

/-- Catalogue code #3688: ((6,2,2)), m=11, a=[2, 4, 9, 9, 10, 10], S=[0, 5]. -/
def code_3688 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3688_ok : code_3688.OK := by native_decide
/-- Code #3688 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3688_qec :
    ∃ ψ, SS.IsAmplitudes code_3688 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3688 code_3688_ok (by decide) (by decide)

/-- Catalogue code #3689: ((6,2,2)), m=11, a=[2, 4, 9, 10, 10, 10], S=[0, 6]. -/
def code_3689 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3689_ok : code_3689.OK := by native_decide
/-- Code #3689 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3689_qec :
    ∃ ψ, SS.IsAmplitudes code_3689 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3689 code_3689_ok (by decide) (by decide)

/-- Catalogue code #3690: ((6,2,2)), m=11, a=[2, 5, 5, 5, 7, 8], S=[0, 1]. -/
def code_3690 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3690_ok : code_3690.OK := by native_decide
/-- Code #3690 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3690_qec :
    ∃ ψ, SS.IsAmplitudes code_3690 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3690 code_3690_ok (by decide) (by decide)

/-- Catalogue code #3691: ((6,2,2)), m=11, a=[2, 5, 5, 5, 7, 10], S=[0, 3]. -/
def code_3691 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3691_ok : code_3691.OK := by native_decide
/-- Code #3691 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3691_qec :
    ∃ ψ, SS.IsAmplitudes code_3691 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3691 code_3691_ok (by decide) (by decide)

/-- Catalogue code #3692: ((6,2,2)), m=11, a=[2, 5, 5, 5, 8, 8], S=[0, 4]. -/
def code_3692 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3692_ok : code_3692.OK := by native_decide
/-- Code #3692 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3692_qec :
    ∃ ψ, SS.IsAmplitudes code_3692 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3692 code_3692_ok (by decide) (by decide)

/-- Catalogue code #3693: ((6,2,2)), m=11, a=[2, 5, 5, 5, 8, 8], S=[0, 7]. -/
def code_3693 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3693_ok : code_3693.OK := by native_decide
/-- Code #3693 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3693_qec :
    ∃ ψ, SS.IsAmplitudes code_3693 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3693 code_3693_ok (by decide) (by decide)

/-- Catalogue code #3694: ((6,2,2)), m=11, a=[2, 5, 5, 5, 8, 8], S=[0, 10]. -/
def code_3694 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3694_ok : code_3694.OK := by native_decide
/-- Code #3694 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3694_qec :
    ∃ ψ, SS.IsAmplitudes code_3694 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3694 code_3694_ok (by decide) (by decide)

/-- Catalogue code #3695: ((6,2,2)), m=11, a=[2, 5, 5, 5, 8, 10], S=[0, 4]. -/
def code_3695 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3695_ok : code_3695.OK := by native_decide
/-- Code #3695 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3695_qec :
    ∃ ψ, SS.IsAmplitudes code_3695 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3695 code_3695_ok (by decide) (by decide)

/-- Catalogue code #3696: ((6,2,2)), m=11, a=[2, 5, 5, 6, 9, 10], S=[0, 7]. -/
def code_3696 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3696_ok : code_3696.OK := by native_decide
/-- Code #3696 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3696_qec :
    ∃ ψ, SS.IsAmplitudes code_3696 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3696 code_3696_ok (by decide) (by decide)

/-- Catalogue code #3697: ((6,2,2)), m=11, a=[2, 5, 5, 6, 9, 10], S=[0, 8]. -/
def code_3697 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11)]
theorem code_3697_ok : code_3697.OK := by native_decide
/-- Code #3697 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3697_qec :
    ∃ ψ, SS.IsAmplitudes code_3697 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3697 code_3697_ok (by decide) (by decide)

/-- Catalogue code #3698: ((6,2,2)), m=11, a=[2, 5, 5, 6, 10, 10], S=[0, 8]. -/
def code_3698 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3698_ok : code_3698.OK := by native_decide
/-- Code #3698 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3698_qec :
    ∃ ψ, SS.IsAmplitudes code_3698 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3698 code_3698_ok (by decide) (by decide)

/-- Catalogue code #3699: ((6,2,2)), m=11, a=[2, 5, 5, 7, 7, 8], S=[0, 10]. -/
def code_3699 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3699_ok : code_3699.OK := by native_decide
/-- Code #3699 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3699_qec :
    ∃ ψ, SS.IsAmplitudes code_3699 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3699 code_3699_ok (by decide) (by decide)

/-- Catalogue code #3700: ((6,2,2)), m=11, a=[2, 5, 5, 7, 8, 8], S=[0, 1]. -/
def code_3700 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3700_ok : code_3700.OK := by native_decide
/-- Code #3700 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3700_qec :
    ∃ ψ, SS.IsAmplitudes code_3700 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3700 code_3700_ok (by decide) (by decide)

/-- Catalogue code #3701: ((6,2,2)), m=11, a=[2, 5, 5, 7, 8, 9], S=[0, 10]. -/
def code_3701 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3701_ok : code_3701.OK := by native_decide
/-- Code #3701 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3701_qec :
    ∃ ψ, SS.IsAmplitudes code_3701 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3701 code_3701_ok (by decide) (by decide)

/-- Catalogue code #3702: ((6,2,2)), m=11, a=[2, 5, 5, 7, 9, 10], S=[0, 8]. -/
def code_3702 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3702_ok : code_3702.OK := by native_decide
/-- Code #3702 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3702_qec :
    ∃ ψ, SS.IsAmplitudes code_3702 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3702 code_3702_ok (by decide) (by decide)

/-- Catalogue code #3703: ((6,2,2)), m=11, a=[2, 5, 5, 7, 10, 10], S=[0, 3]. -/
def code_3703 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3703_ok : code_3703.OK := by native_decide
/-- Code #3703 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3703_qec :
    ∃ ψ, SS.IsAmplitudes code_3703 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3703 code_3703_ok (by decide) (by decide)

/-- Catalogue code #3704: ((6,2,2)), m=11, a=[2, 5, 5, 8, 8, 10], S=[0, 7]. -/
def code_3704 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3704_ok : code_3704.OK := by native_decide
/-- Code #3704 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3704_qec :
    ∃ ψ, SS.IsAmplitudes code_3704 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3704 code_3704_ok (by decide) (by decide)

/-- Catalogue code #3705: ((6,2,2)), m=11, a=[2, 5, 5, 8, 9, 10], S=[0, 7]. -/
def code_3705 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3705_ok : code_3705.OK := by native_decide
/-- Code #3705 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3705_qec :
    ∃ ψ, SS.IsAmplitudes code_3705 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3705 code_3705_ok (by decide) (by decide)

/-- Catalogue code #3706: ((6,2,2)), m=11, a=[2, 5, 5, 9, 9, 10], S=[0, 8]. -/
def code_3706 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3706_ok : code_3706.OK := by native_decide
/-- Code #3706 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3706_qec :
    ∃ ψ, SS.IsAmplitudes code_3706 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3706 code_3706_ok (by decide) (by decide)

/-- Catalogue code #3707: ((6,2,2)), m=11, a=[2, 5, 5, 9, 10, 10], S=[0, 7]. -/
def code_3707 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3707_ok : code_3707.OK := by native_decide
/-- Code #3707 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3707_qec :
    ∃ ψ, SS.IsAmplitudes code_3707 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3707 code_3707_ok (by decide) (by decide)

/-- Catalogue code #3708: ((6,2,2)), m=11, a=[2, 5, 6, 6, 7, 7], S=[0, 3]. -/
def code_3708 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3708_ok : code_3708.OK := by native_decide
/-- Code #3708 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3708_qec :
    ∃ ψ, SS.IsAmplitudes code_3708 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3708 code_3708_ok (by decide) (by decide)

/-- Catalogue code #3709: ((6,2,2)), m=11, a=[2, 5, 6, 6, 7, 7], S=[0, 8]. -/
def code_3709 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3709_ok : code_3709.OK := by native_decide
/-- Code #3709 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3709_qec :
    ∃ ψ, SS.IsAmplitudes code_3709 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3709 code_3709_ok (by decide) (by decide)

/-- Catalogue code #3710: ((6,2,2)), m=11, a=[2, 5, 6, 6, 7, 8], S=[0, 10]. -/
def code_3710 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_3710_ok : code_3710.OK := by native_decide
/-- Code #3710 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3710_qec :
    ∃ ψ, SS.IsAmplitudes code_3710 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3710 code_3710_ok (by decide) (by decide)

/-- Catalogue code #3711: ((6,2,2)), m=11, a=[2, 5, 6, 6, 7, 9], S=[0, 3]. -/
def code_3711 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3711_ok : code_3711.OK := by native_decide
/-- Code #3711 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3711_qec :
    ∃ ψ, SS.IsAmplitudes code_3711 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3711 code_3711_ok (by decide) (by decide)

/-- Catalogue code #3712: ((6,2,2)), m=11, a=[2, 5, 6, 6, 7, 9], S=[0, 10]. -/
def code_3712 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_3712_ok : code_3712.OK := by native_decide
/-- Code #3712 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3712_qec :
    ∃ ψ, SS.IsAmplitudes code_3712 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3712 code_3712_ok (by decide) (by decide)

/-- Catalogue code #3713: ((6,2,2)), m=11, a=[2, 5, 6, 6, 8, 9], S=[0, 4]. -/
def code_3713 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3713_ok : code_3713.OK := by native_decide
/-- Code #3713 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3713_qec :
    ∃ ψ, SS.IsAmplitudes code_3713 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3713 code_3713_ok (by decide) (by decide)

/-- Catalogue code #3714: ((6,2,2)), m=11, a=[2, 5, 6, 6, 8, 9], S=[0, 7]. -/
def code_3714 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3714_ok : code_3714.OK := by native_decide
/-- Code #3714 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3714_qec :
    ∃ ψ, SS.IsAmplitudes code_3714 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3714 code_3714_ok (by decide) (by decide)

/-- Catalogue code #3715: ((6,2,2)), m=11, a=[2, 5, 6, 6, 8, 9], S=[0, 10]. -/
def code_3715 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3715_ok : code_3715.OK := by native_decide
/-- Code #3715 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3715_qec :
    ∃ ψ, SS.IsAmplitudes code_3715 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3715 code_3715_ok (by decide) (by decide)

/-- Catalogue code #3716: ((6,2,2)), m=11, a=[2, 5, 6, 7, 7, 8], S=[0, 1]. -/
def code_3716 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3716_ok : code_3716.OK := by native_decide
/-- Code #3716 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3716_qec :
    ∃ ψ, SS.IsAmplitudes code_3716 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3716 code_3716_ok (by decide) (by decide)

/-- Catalogue code #3717: ((6,2,2)), m=11, a=[2, 5, 6, 7, 7, 8], S=[0, 10]. -/
def code_3717 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3717_ok : code_3717.OK := by native_decide
/-- Code #3717 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3717_qec :
    ∃ ψ, SS.IsAmplitudes code_3717 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3717 code_3717_ok (by decide) (by decide)

/-- Catalogue code #3718: ((6,2,2)), m=11, a=[2, 5, 6, 7, 7, 10], S=[0, 3]. -/
def code_3718 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3718_ok : code_3718.OK := by native_decide
/-- Code #3718 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3718_qec :
    ∃ ψ, SS.IsAmplitudes code_3718 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3718 code_3718_ok (by decide) (by decide)

/-- Catalogue code #3719: ((6,2,2)), m=11, a=[2, 5, 6, 7, 7, 10], S=[0, 8]. -/
def code_3719 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3719_ok : code_3719.OK := by native_decide
/-- Code #3719 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3719_qec :
    ∃ ψ, SS.IsAmplitudes code_3719 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3719 code_3719_ok (by decide) (by decide)

/-- Catalogue code #3720: ((6,2,2)), m=11, a=[2, 5, 6, 7, 8, 8], S=[0, 1]. -/
def code_3720 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3720_ok : code_3720.OK := by native_decide
/-- Code #3720 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3720_qec :
    ∃ ψ, SS.IsAmplitudes code_3720 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3720 code_3720_ok (by decide) (by decide)

/-- Catalogue code #3721: ((6,2,2)), m=11, a=[2, 5, 6, 7, 8, 8], S=[0, 10]. -/
def code_3721 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3721_ok : code_3721.OK := by native_decide
/-- Code #3721 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3721_qec :
    ∃ ψ, SS.IsAmplitudes code_3721 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3721 code_3721_ok (by decide) (by decide)

/-- Catalogue code #3722: ((6,2,2)), m=11, a=[2, 5, 6, 7, 8, 9], S=[0, 1]. -/
def code_3722 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3722_ok : code_3722.OK := by native_decide
/-- Code #3722 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3722_qec :
    ∃ ψ, SS.IsAmplitudes code_3722 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3722 code_3722_ok (by decide) (by decide)

/-- Catalogue code #3723: ((6,2,2)), m=11, a=[2, 5, 6, 7, 8, 9], S=[0, 10]. -/
def code_3723 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3723_ok : code_3723.OK := by native_decide
/-- Code #3723 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3723_qec :
    ∃ ψ, SS.IsAmplitudes code_3723 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3723 code_3723_ok (by decide) (by decide)

/-- Catalogue code #3724: ((6,2,2)), m=11, a=[2, 5, 6, 7, 10, 10], S=[0, 3]. -/
def code_3724 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_3724_ok : code_3724.OK := by native_decide
/-- Code #3724 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3724_qec :
    ∃ ψ, SS.IsAmplitudes code_3724 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3724 code_3724_ok (by decide) (by decide)

/-- Catalogue code #3725: ((6,2,2)), m=11, a=[2, 5, 6, 8, 8, 9], S=[0, 1]. -/
def code_3725 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3725_ok : code_3725.OK := by native_decide
/-- Code #3725 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3725_qec :
    ∃ ψ, SS.IsAmplitudes code_3725 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3725 code_3725_ok (by decide) (by decide)

/-- Catalogue code #3726: ((6,2,2)), m=11, a=[2, 5, 6, 8, 8, 9], S=[0, 4]. -/
def code_3726 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3726_ok : code_3726.OK := by native_decide
/-- Code #3726 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3726_qec :
    ∃ ψ, SS.IsAmplitudes code_3726 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3726 code_3726_ok (by decide) (by decide)

/-- Catalogue code #3727: ((6,2,2)), m=11, a=[2, 5, 6, 8, 9, 10], S=[0, 4]. -/
def code_3727 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3727_ok : code_3727.OK := by native_decide
/-- Code #3727 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3727_qec :
    ∃ ψ, SS.IsAmplitudes code_3727 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3727 code_3727_ok (by decide) (by decide)

/-- Catalogue code #3728: ((6,2,2)), m=11, a=[2, 5, 6, 8, 10, 10], S=[0, 4]. -/
def code_3728 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3728_ok : code_3728.OK := by native_decide
/-- Code #3728 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3728_qec :
    ∃ ψ, SS.IsAmplitudes code_3728 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3728 code_3728_ok (by decide) (by decide)

/-- Catalogue code #3729: ((6,2,2)), m=11, a=[2, 5, 6, 9, 9, 10], S=[0, 7]. -/
def code_3729 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3729_ok : code_3729.OK := by native_decide
/-- Code #3729 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3729_qec :
    ∃ ψ, SS.IsAmplitudes code_3729 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3729 code_3729_ok (by decide) (by decide)

/-- Catalogue code #3730: ((6,2,2)), m=11, a=[2, 5, 6, 9, 10, 10], S=[0, 7]. -/
def code_3730 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3730_ok : code_3730.OK := by native_decide
/-- Code #3730 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3730_qec :
    ∃ ψ, SS.IsAmplitudes code_3730 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3730 code_3730_ok (by decide) (by decide)

/-- Catalogue code #3731: ((6,2,2)), m=11, a=[2, 5, 7, 7, 8, 8], S=[0, 10]. -/
def code_3731 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3731_ok : code_3731.OK := by native_decide
/-- Code #3731 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3731_qec :
    ∃ ψ, SS.IsAmplitudes code_3731 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3731 code_3731_ok (by decide) (by decide)

/-- Catalogue code #3732: ((6,2,2)), m=11, a=[2, 5, 7, 7, 8, 9], S=[0, 10]. -/
def code_3732 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3732_ok : code_3732.OK := by native_decide
/-- Code #3732 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3732_qec :
    ∃ ψ, SS.IsAmplitudes code_3732 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3732 code_3732_ok (by decide) (by decide)

/-- Catalogue code #3733: ((6,2,2)), m=11, a=[2, 5, 7, 7, 9, 10], S=[0, 8]. -/
def code_3733 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3733_ok : code_3733.OK := by native_decide
/-- Code #3733 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3733_qec :
    ∃ ψ, SS.IsAmplitudes code_3733 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3733 code_3733_ok (by decide) (by decide)

/-- Catalogue code #3734: ((6,2,2)), m=11, a=[2, 5, 7, 7, 10, 10], S=[0, 3]. -/
def code_3734 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3734_ok : code_3734.OK := by native_decide
/-- Code #3734 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3734_qec :
    ∃ ψ, SS.IsAmplitudes code_3734 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3734 code_3734_ok (by decide) (by decide)

/-- Catalogue code #3735: ((6,2,2)), m=11, a=[2, 5, 7, 8, 8, 9], S=[0, 1]. -/
def code_3735 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3735_ok : code_3735.OK := by native_decide
/-- Code #3735 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3735_qec :
    ∃ ψ, SS.IsAmplitudes code_3735 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3735 code_3735_ok (by decide) (by decide)

/-- Catalogue code #3736: ((6,2,2)), m=11, a=[2, 5, 7, 8, 9, 9], S=[0, 10]. -/
def code_3736 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3736_ok : code_3736.OK := by native_decide
/-- Code #3736 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3736_qec :
    ∃ ψ, SS.IsAmplitudes code_3736 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3736 code_3736_ok (by decide) (by decide)

/-- Catalogue code #3737: ((6,2,2)), m=11, a=[2, 5, 7, 9, 10, 10], S=[0, 3]. -/
def code_3737 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3737_ok : code_3737.OK := by native_decide
/-- Code #3737 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3737_qec :
    ∃ ψ, SS.IsAmplitudes code_3737 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3737 code_3737_ok (by decide) (by decide)

/-- Catalogue code #3738: ((6,2,2)), m=11, a=[2, 5, 8, 8, 8, 10], S=[0, 7]. -/
def code_3738 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3738_ok : code_3738.OK := by native_decide
/-- Code #3738 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3738_qec :
    ∃ ψ, SS.IsAmplitudes code_3738 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3738 code_3738_ok (by decide) (by decide)

/-- Catalogue code #3739: ((6,2,2)), m=11, a=[2, 5, 8, 8, 9, 9], S=[0, 1]. -/
def code_3739 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3739_ok : code_3739.OK := by native_decide
/-- Code #3739 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3739_qec :
    ∃ ψ, SS.IsAmplitudes code_3739 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3739 code_3739_ok (by decide) (by decide)

/-- Catalogue code #3740: ((6,2,2)), m=11, a=[2, 5, 8, 8, 9, 9], S=[0, 7]. -/
def code_3740 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3740_ok : code_3740.OK := by native_decide
/-- Code #3740 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3740_qec :
    ∃ ψ, SS.IsAmplitudes code_3740 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3740 code_3740_ok (by decide) (by decide)

/-- Catalogue code #3741: ((6,2,2)), m=11, a=[2, 5, 8, 8, 9, 10], S=[0, 4]. -/
def code_3741 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3741_ok : code_3741.OK := by native_decide
/-- Code #3741 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3741_qec :
    ∃ ψ, SS.IsAmplitudes code_3741 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3741 code_3741_ok (by decide) (by decide)

/-- Catalogue code #3742: ((6,2,2)), m=11, a=[2, 5, 8, 8, 9, 10], S=[0, 7]. -/
def code_3742 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3742_ok : code_3742.OK := by native_decide
/-- Code #3742 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3742_qec :
    ∃ ψ, SS.IsAmplitudes code_3742 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3742 code_3742_ok (by decide) (by decide)

/-- Catalogue code #3743: ((6,2,2)), m=11, a=[2, 5, 8, 8, 10, 10], S=[0, 7]. -/
def code_3743 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3743_ok : code_3743.OK := by native_decide
/-- Code #3743 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3743_qec :
    ∃ ψ, SS.IsAmplitudes code_3743 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3743 code_3743_ok (by decide) (by decide)

/-- Catalogue code #3744: ((6,2,2)), m=11, a=[2, 5, 8, 9, 9, 10], S=[0, 7]. -/
def code_3744 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3744_ok : code_3744.OK := by native_decide
/-- Code #3744 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3744_qec :
    ∃ ψ, SS.IsAmplitudes code_3744 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3744 code_3744_ok (by decide) (by decide)

/-- Catalogue code #3745: ((6,2,2)), m=11, a=[2, 5, 8, 9, 10, 10], S=[0, 4]. -/
def code_3745 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3745_ok : code_3745.OK := by native_decide
/-- Code #3745 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3745_qec :
    ∃ ψ, SS.IsAmplitudes code_3745 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3745 code_3745_ok (by decide) (by decide)

/-- Catalogue code #3746: ((6,2,2)), m=11, a=[2, 5, 8, 9, 10, 10], S=[0, 7]. -/
def code_3746 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3746_ok : code_3746.OK := by native_decide
/-- Code #3746 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3746_qec :
    ∃ ψ, SS.IsAmplitudes code_3746 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3746 code_3746_ok (by decide) (by decide)

/-- Catalogue code #3747: ((6,2,2)), m=11, a=[2, 5, 9, 9, 10, 10], S=[0, 7]. -/
def code_3747 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3747_ok : code_3747.OK := by native_decide
/-- Code #3747 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3747_qec :
    ∃ ψ, SS.IsAmplitudes code_3747 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3747 code_3747_ok (by decide) (by decide)

/-- Catalogue code #3748: ((6,2,2)), m=11, a=[2, 5, 9, 10, 10, 10], S=[0, 7]. -/
def code_3748 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3748_ok : code_3748.OK := by native_decide
/-- Code #3748 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3748_qec :
    ∃ ψ, SS.IsAmplitudes code_3748 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3748 code_3748_ok (by decide) (by decide)

/-- Catalogue code #3749: ((6,2,2)), m=11, a=[2, 6, 6, 7, 7, 8], S=[0, 10]. -/
def code_3749 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3749_ok : code_3749.OK := by native_decide
/-- Code #3749 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3749_qec :
    ∃ ψ, SS.IsAmplitudes code_3749 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3749 code_3749_ok (by decide) (by decide)

/-- Catalogue code #3750: ((6,2,2)), m=11, a=[2, 6, 6, 7, 7, 10], S=[0, 3]. -/
def code_3750 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3750_ok : code_3750.OK := by native_decide
/-- Code #3750 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3750_qec :
    ∃ ψ, SS.IsAmplitudes code_3750 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3750 code_3750_ok (by decide) (by decide)

/-- Catalogue code #3751: ((6,2,2)), m=11, a=[2, 6, 6, 7, 7, 10], S=[0, 8]. -/
def code_3751 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3751_ok : code_3751.OK := by native_decide
/-- Code #3751 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3751_qec :
    ∃ ψ, SS.IsAmplitudes code_3751 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3751 code_3751_ok (by decide) (by decide)

/-- Catalogue code #3752: ((6,2,2)), m=11, a=[2, 6, 6, 7, 8, 9], S=[0, 10]. -/
def code_3752 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3752_ok : code_3752.OK := by native_decide
/-- Code #3752 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3752_qec :
    ∃ ψ, SS.IsAmplitudes code_3752 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3752 code_3752_ok (by decide) (by decide)

/-- Catalogue code #3753: ((6,2,2)), m=11, a=[2, 6, 6, 7, 9, 10], S=[0, 3]. -/
def code_3753 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3753_ok : code_3753.OK := by native_decide
/-- Code #3753 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3753_qec :
    ∃ ψ, SS.IsAmplitudes code_3753 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3753 code_3753_ok (by decide) (by decide)

/-- Catalogue code #3754: ((6,2,2)), m=11, a=[2, 6, 6, 8, 9, 10], S=[0, 4]. -/
def code_3754 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3754_ok : code_3754.OK := by native_decide
/-- Code #3754 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3754_qec :
    ∃ ψ, SS.IsAmplitudes code_3754 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3754 code_3754_ok (by decide) (by decide)

/-- Catalogue code #3755: ((6,2,2)), m=11, a=[2, 6, 6, 8, 9, 10], S=[0, 7]. -/
def code_3755 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3755_ok : code_3755.OK := by native_decide
/-- Code #3755 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3755_qec :
    ∃ ψ, SS.IsAmplitudes code_3755 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3755 code_3755_ok (by decide) (by decide)

/-- Catalogue code #3756: ((6,2,2)), m=11, a=[2, 6, 6, 9, 9, 10], S=[0, 8]. -/
def code_3756 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3756_ok : code_3756.OK := by native_decide
/-- Code #3756 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3756_qec :
    ∃ ψ, SS.IsAmplitudes code_3756 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3756 code_3756_ok (by decide) (by decide)

/-- Catalogue code #3757: ((6,2,2)), m=11, a=[2, 6, 6, 9, 10, 10], S=[0, 7]. -/
def code_3757 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3757_ok : code_3757.OK := by native_decide
/-- Code #3757 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3757_qec :
    ∃ ψ, SS.IsAmplitudes code_3757 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3757 code_3757_ok (by decide) (by decide)

/-- Catalogue code #3758: ((6,2,2)), m=11, a=[2, 6, 6, 9, 10, 10], S=[0, 8]. -/
def code_3758 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3758_ok : code_3758.OK := by native_decide
/-- Code #3758 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3758_qec :
    ∃ ψ, SS.IsAmplitudes code_3758 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3758 code_3758_ok (by decide) (by decide)

/-- Catalogue code #3759: ((6,2,2)), m=11, a=[2, 6, 7, 7, 7, 8], S=[0, 10]. -/
def code_3759 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3759_ok : code_3759.OK := by native_decide
/-- Code #3759 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3759_qec :
    ∃ ψ, SS.IsAmplitudes code_3759 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3759 code_3759_ok (by decide) (by decide)

/-- Catalogue code #3760: ((6,2,2)), m=11, a=[2, 6, 7, 7, 8, 8], S=[0, 10]. -/
def code_3760 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3760_ok : code_3760.OK := by native_decide
/-- Code #3760 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3760_qec :
    ∃ ψ, SS.IsAmplitudes code_3760 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3760 code_3760_ok (by decide) (by decide)

/-- Catalogue code #3761: ((6,2,2)), m=11, a=[2, 6, 7, 7, 8, 9], S=[0, 1]. -/
def code_3761 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3761_ok : code_3761.OK := by native_decide
/-- Code #3761 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3761_qec :
    ∃ ψ, SS.IsAmplitudes code_3761 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3761 code_3761_ok (by decide) (by decide)

/-- Catalogue code #3762: ((6,2,2)), m=11, a=[2, 6, 7, 7, 9, 10], S=[0, 3]. -/
def code_3762 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3762_ok : code_3762.OK := by native_decide
/-- Code #3762 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3762_qec :
    ∃ ψ, SS.IsAmplitudes code_3762 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3762 code_3762_ok (by decide) (by decide)

/-- Catalogue code #3763: ((6,2,2)), m=11, a=[2, 6, 7, 7, 10, 10], S=[0, 8]. -/
def code_3763 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3763_ok : code_3763.OK := by native_decide
/-- Code #3763 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3763_qec :
    ∃ ψ, SS.IsAmplitudes code_3763 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3763 code_3763_ok (by decide) (by decide)

/-- Catalogue code #3764: ((6,2,2)), m=11, a=[2, 6, 7, 8, 8, 9], S=[0, 1]. -/
def code_3764 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3764_ok : code_3764.OK := by native_decide
/-- Code #3764 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3764_qec :
    ∃ ψ, SS.IsAmplitudes code_3764 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3764 code_3764_ok (by decide) (by decide)

/-- Catalogue code #3765: ((6,2,2)), m=11, a=[2, 6, 7, 9, 10, 10], S=[0, 3]. -/
def code_3765 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3765_ok : code_3765.OK := by native_decide
/-- Code #3765 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3765_qec :
    ∃ ψ, SS.IsAmplitudes code_3765 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3765 code_3765_ok (by decide) (by decide)

/-- Catalogue code #3766: ((6,2,2)), m=11, a=[2, 6, 7, 9, 10, 10], S=[0, 8]. -/
def code_3766 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3766_ok : code_3766.OK := by native_decide
/-- Code #3766 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3766_qec :
    ∃ ψ, SS.IsAmplitudes code_3766 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3766 code_3766_ok (by decide) (by decide)

/-- Catalogue code #3767: ((6,2,2)), m=11, a=[2, 6, 7, 10, 10, 10], S=[0, 8]. -/
def code_3767 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3767_ok : code_3767.OK := by native_decide
/-- Code #3767 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3767_qec :
    ∃ ψ, SS.IsAmplitudes code_3767 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3767 code_3767_ok (by decide) (by decide)

/-- Catalogue code #3768: ((6,2,2)), m=11, a=[2, 6, 8, 8, 9, 10], S=[0, 4]. -/
def code_3768 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3768_ok : code_3768.OK := by native_decide
/-- Code #3768 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3768_qec :
    ∃ ψ, SS.IsAmplitudes code_3768 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3768 code_3768_ok (by decide) (by decide)

/-- Catalogue code #3769: ((6,2,2)), m=11, a=[2, 6, 8, 9, 10, 10], S=[0, 4]. -/
def code_3769 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3769_ok : code_3769.OK := by native_decide
/-- Code #3769 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3769_qec :
    ∃ ψ, SS.IsAmplitudes code_3769 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3769 code_3769_ok (by decide) (by decide)

/-- Catalogue code #3770: ((6,2,2)), m=11, a=[2, 6, 8, 9, 10, 10], S=[0, 7]. -/
def code_3770 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3770_ok : code_3770.OK := by native_decide
/-- Code #3770 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3770_qec :
    ∃ ψ, SS.IsAmplitudes code_3770 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3770 code_3770_ok (by decide) (by decide)

/-- Catalogue code #3771: ((6,2,2)), m=11, a=[2, 6, 9, 9, 10, 10], S=[0, 7]. -/
def code_3771 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}, {![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3771_ok : code_3771.OK := by native_decide
/-- Code #3771 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3771_qec :
    ∃ ψ, SS.IsAmplitudes code_3771 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3771 code_3771_ok (by decide) (by decide)

/-- Catalogue code #3772: ((6,2,2)), m=11, a=[2, 6, 9, 9, 10, 10], S=[0, 8]. -/
def code_3772 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3772_ok : code_3772.OK := by native_decide
/-- Code #3772 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3772_qec :
    ∃ ψ, SS.IsAmplitudes code_3772 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3772 code_3772_ok (by decide) (by decide)

/-- Catalogue code #3773: ((6,2,2)), m=11, a=[2, 7, 7, 7, 9, 10], S=[0, 8]. -/
def code_3773 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3773_ok : code_3773.OK := by native_decide
/-- Code #3773 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3773_qec :
    ∃ ψ, SS.IsAmplitudes code_3773 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3773 code_3773_ok (by decide) (by decide)

/-- Catalogue code #3774: ((6,2,2)), m=11, a=[2, 7, 7, 7, 10, 10], S=[0, 5]. -/
def code_3774 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3774_ok : code_3774.OK := by native_decide
/-- Code #3774 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3774_qec :
    ∃ ψ, SS.IsAmplitudes code_3774 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3774 code_3774_ok (by decide) (by decide)

/-- Catalogue code #3775: ((6,2,2)), m=11, a=[2, 7, 7, 7, 10, 10], S=[0, 8]. -/
def code_3775 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3775_ok : code_3775.OK := by native_decide
/-- Code #3775 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3775_qec :
    ∃ ψ, SS.IsAmplitudes code_3775 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3775 code_3775_ok (by decide) (by decide)

/-- Catalogue code #3776: ((6,2,2)), m=11, a=[2, 7, 7, 8, 8, 8], S=[0, 5]. -/
def code_3776 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3776_ok : code_3776.OK := by native_decide
/-- Code #3776 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3776_qec :
    ∃ ψ, SS.IsAmplitudes code_3776 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3776 code_3776_ok (by decide) (by decide)

/-- Catalogue code #3777: ((6,2,2)), m=11, a=[2, 7, 7, 8, 8, 9], S=[0, 5]. -/
def code_3777 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3777_ok : code_3777.OK := by native_decide
/-- Code #3777 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3777_qec :
    ∃ ψ, SS.IsAmplitudes code_3777 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3777 code_3777_ok (by decide) (by decide)

/-- Catalogue code #3778: ((6,2,2)), m=11, a=[2, 7, 7, 8, 9, 9], S=[0, 10]. -/
def code_3778 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3778_ok : code_3778.OK := by native_decide
/-- Code #3778 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3778_qec :
    ∃ ψ, SS.IsAmplitudes code_3778 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3778 code_3778_ok (by decide) (by decide)

/-- Catalogue code #3779: ((6,2,2)), m=11, a=[2, 7, 7, 8, 9, 10], S=[0, 5]. -/
def code_3779 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3779_ok : code_3779.OK := by native_decide
/-- Code #3779 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3779_qec :
    ∃ ψ, SS.IsAmplitudes code_3779 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3779 code_3779_ok (by decide) (by decide)

/-- Catalogue code #3780: ((6,2,2)), m=11, a=[2, 7, 7, 8, 10, 10], S=[0, 5]. -/
def code_3780 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3780_ok : code_3780.OK := by native_decide
/-- Code #3780 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3780_qec :
    ∃ ψ, SS.IsAmplitudes code_3780 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3780 code_3780_ok (by decide) (by decide)

/-- Catalogue code #3781: ((6,2,2)), m=11, a=[2, 7, 7, 8, 10, 10], S=[0, 6]. -/
def code_3781 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3781_ok : code_3781.OK := by native_decide
/-- Code #3781 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3781_qec :
    ∃ ψ, SS.IsAmplitudes code_3781 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3781 code_3781_ok (by decide) (by decide)

/-- Catalogue code #3782: ((6,2,2)), m=11, a=[2, 7, 7, 9, 10, 10], S=[0, 5]. -/
def code_3782 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3782_ok : code_3782.OK := by native_decide
/-- Code #3782 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3782_qec :
    ∃ ψ, SS.IsAmplitudes code_3782 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3782 code_3782_ok (by decide) (by decide)

/-- Catalogue code #3783: ((6,2,2)), m=11, a=[2, 7, 7, 9, 10, 10], S=[0, 8]. -/
def code_3783 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3783_ok : code_3783.OK := by native_decide
/-- Code #3783 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3783_qec :
    ∃ ψ, SS.IsAmplitudes code_3783 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3783 code_3783_ok (by decide) (by decide)

/-- Catalogue code #3784: ((6,2,2)), m=11, a=[2, 7, 7, 10, 10, 10], S=[0, 5]. -/
def code_3784 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3784_ok : code_3784.OK := by native_decide
/-- Code #3784 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3784_qec :
    ∃ ψ, SS.IsAmplitudes code_3784 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3784 code_3784_ok (by decide) (by decide)

/-- Catalogue code #3785: ((6,2,2)), m=11, a=[2, 7, 7, 10, 10, 10], S=[0, 8]. -/
def code_3785 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3785_ok : code_3785.OK := by native_decide
/-- Code #3785 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3785_qec :
    ∃ ψ, SS.IsAmplitudes code_3785 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3785 code_3785_ok (by decide) (by decide)

/-- Catalogue code #3786: ((6,2,2)), m=11, a=[2, 7, 8, 8, 8, 9], S=[0, 10]. -/
def code_3786 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3786_ok : code_3786.OK := by native_decide
/-- Code #3786 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3786_qec :
    ∃ ψ, SS.IsAmplitudes code_3786 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3786 code_3786_ok (by decide) (by decide)

/-- Catalogue code #3787: ((6,2,2)), m=11, a=[2, 7, 8, 8, 9, 10], S=[0, 5]. -/
def code_3787 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3787_ok : code_3787.OK := by native_decide
/-- Code #3787 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3787_qec :
    ∃ ψ, SS.IsAmplitudes code_3787 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3787 code_3787_ok (by decide) (by decide)

/-- Catalogue code #3788: ((6,2,2)), m=11, a=[2, 7, 8, 8, 9, 10], S=[0, 6]. -/
def code_3788 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3788_ok : code_3788.OK := by native_decide
/-- Code #3788 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3788_qec :
    ∃ ψ, SS.IsAmplitudes code_3788 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3788 code_3788_ok (by decide) (by decide)

/-- Catalogue code #3789: ((6,2,2)), m=11, a=[2, 7, 8, 8, 10, 10], S=[0, 5]. -/
def code_3789 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3789_ok : code_3789.OK := by native_decide
/-- Code #3789 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3789_qec :
    ∃ ψ, SS.IsAmplitudes code_3789 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3789 code_3789_ok (by decide) (by decide)

/-- Catalogue code #3790: ((6,2,2)), m=11, a=[2, 7, 8, 8, 10, 10], S=[0, 6]. -/
def code_3790 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3790_ok : code_3790.OK := by native_decide
/-- Code #3790 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3790_qec :
    ∃ ψ, SS.IsAmplitudes code_3790 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3790 code_3790_ok (by decide) (by decide)

/-- Catalogue code #3791: ((6,2,2)), m=11, a=[2, 7, 8, 9, 10, 10], S=[0, 5]. -/
def code_3791 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3791_ok : code_3791.OK := by native_decide
/-- Code #3791 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3791_qec :
    ∃ ψ, SS.IsAmplitudes code_3791 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3791 code_3791_ok (by decide) (by decide)

/-- Catalogue code #3792: ((6,2,2)), m=11, a=[2, 8, 8, 9, 9, 10], S=[0, 6]. -/
def code_3792 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3792_ok : code_3792.OK := by native_decide
/-- Code #3792 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3792_qec :
    ∃ ψ, SS.IsAmplitudes code_3792 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3792 code_3792_ok (by decide) (by decide)

/-- Catalogue code #3793: ((6,2,2)), m=11, a=[2, 8, 8, 9, 9, 10], S=[0, 7]. -/
def code_3793 : ExampleData 6 11 2 where
  a := ![(2 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3793_ok : code_3793.OK := by native_decide
/-- Code #3793 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3793_qec :
    ∃ ψ, SS.IsAmplitudes code_3793 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3793 code_3793_ok (by decide) (by decide)

/-- Catalogue code #3794: ((6,2,2)), m=11, a=[3, 3, 3, 4, 4, 9], S=[0, 6]. -/
def code_3794 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3794_ok : code_3794.OK := by native_decide
/-- Code #3794 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3794_qec :
    ∃ ψ, SS.IsAmplitudes code_3794 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3794 code_3794_ok (by decide) (by decide)

/-- Catalogue code #3795: ((6,2,2)), m=11, a=[3, 3, 3, 4, 6, 6], S=[0, 10]. -/
def code_3795 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3795_ok : code_3795.OK := by native_decide
/-- Code #3795 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3795_qec :
    ∃ ψ, SS.IsAmplitudes code_3795 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3795 code_3795_ok (by decide) (by decide)

/-- Catalogue code #3796: ((6,2,2)), m=11, a=[3, 3, 3, 4, 6, 7], S=[0, 2]. -/
def code_3796 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3796_ok : code_3796.OK := by native_decide
/-- Code #3796 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3796_qec :
    ∃ ψ, SS.IsAmplitudes code_3796 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3796 code_3796_ok (by decide) (by decide)

/-- Catalogue code #3797: ((6,2,2)), m=11, a=[3, 3, 3, 4, 6, 7], S=[0, 10]. -/
def code_3797 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3797_ok : code_3797.OK := by native_decide
/-- Code #3797 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3797_qec :
    ∃ ψ, SS.IsAmplitudes code_3797 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3797 code_3797_ok (by decide) (by decide)

/-- Catalogue code #3798: ((6,2,2)), m=11, a=[3, 3, 3, 4, 7, 9], S=[0, 5]. -/
def code_3798 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3798_ok : code_3798.OK := by native_decide
/-- Code #3798 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3798_qec :
    ∃ ψ, SS.IsAmplitudes code_3798 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3798 code_3798_ok (by decide) (by decide)

/-- Catalogue code #3799: ((6,2,2)), m=11, a=[3, 3, 3, 4, 9, 9], S=[0, 5]. -/
def code_3799 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3799_ok : code_3799.OK := by native_decide
/-- Code #3799 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3799_qec :
    ∃ ψ, SS.IsAmplitudes code_3799 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3799 code_3799_ok (by decide) (by decide)

/-- Catalogue code #3800: ((6,2,2)), m=11, a=[3, 3, 3, 5, 6, 7], S=[0, 1]. -/
def code_3800 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3800_ok : code_3800.OK := by native_decide
/-- Code #3800 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3800_qec :
    ∃ ψ, SS.IsAmplitudes code_3800 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3800 code_3800_ok (by decide) (by decide)

/-- Catalogue code #3801: ((6,2,2)), m=11, a=[3, 3, 3, 5, 7, 7], S=[0, 1]. -/
def code_3801 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3801_ok : code_3801.OK := by native_decide
/-- Code #3801 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3801_qec :
    ∃ ψ, SS.IsAmplitudes code_3801 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3801 code_3801_ok (by decide) (by decide)

/-- Catalogue code #3802: ((6,2,2)), m=11, a=[3, 3, 3, 6, 7, 9], S=[0, 10]. -/
def code_3802 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3802_ok : code_3802.OK := by native_decide
/-- Code #3802 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3802_qec :
    ∃ ψ, SS.IsAmplitudes code_3802 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3802 code_3802_ok (by decide) (by decide)

/-- Catalogue code #3803: ((6,2,2)), m=11, a=[3, 3, 3, 7, 7, 9], S=[0, 1]. -/
def code_3803 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3803_ok : code_3803.OK := by native_decide
/-- Code #3803 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3803_qec :
    ∃ ψ, SS.IsAmplitudes code_3803 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3803 code_3803_ok (by decide) (by decide)

/-- Catalogue code #3804: ((6,2,2)), m=11, a=[3, 3, 3, 7, 9, 9], S=[0, 5]. -/
def code_3804 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3804_ok : code_3804.OK := by native_decide
/-- Code #3804 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3804_qec :
    ∃ ψ, SS.IsAmplitudes code_3804 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3804 code_3804_ok (by decide) (by decide)

/-- Catalogue code #3805: ((6,2,2)), m=11, a=[3, 3, 4, 4, 5, 6], S=[0, 1]. -/
def code_3805 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3805_ok : code_3805.OK := by native_decide
/-- Code #3805 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3805_qec :
    ∃ ψ, SS.IsAmplitudes code_3805 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3805 code_3805_ok (by decide) (by decide)

/-- Catalogue code #3806: ((6,2,2)), m=11, a=[3, 3, 4, 4, 5, 6], S=[0, 9]. -/
def code_3806 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3806_ok : code_3806.OK := by native_decide
/-- Code #3806 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3806_qec :
    ∃ ψ, SS.IsAmplitudes code_3806 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3806 code_3806_ok (by decide) (by decide)

/-- Catalogue code #3807: ((6,2,2)), m=11, a=[3, 3, 4, 4, 5, 7], S=[0, 2]. -/
def code_3807 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3807_ok : code_3807.OK := by native_decide
/-- Code #3807 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3807_qec :
    ∃ ψ, SS.IsAmplitudes code_3807 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3807 code_3807_ok (by decide) (by decide)

/-- Catalogue code #3808: ((6,2,2)), m=11, a=[3, 3, 4, 4, 5, 9], S=[0, 1]. -/
def code_3808 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3808_ok : code_3808.OK := by native_decide
/-- Code #3808 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3808_qec :
    ∃ ψ, SS.IsAmplitudes code_3808 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3808 code_3808_ok (by decide) (by decide)

/-- Catalogue code #3809: ((6,2,2)), m=11, a=[3, 3, 4, 4, 5, 10], S=[0, 9]. -/
def code_3809 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3809_ok : code_3809.OK := by native_decide
/-- Code #3809 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3809_qec :
    ∃ ψ, SS.IsAmplitudes code_3809 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3809 code_3809_ok (by decide) (by decide)

/-- Catalogue code #3810: ((6,2,2)), m=11, a=[3, 3, 4, 4, 6, 6], S=[0, 9]. -/
def code_3810 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3810_ok : code_3810.OK := by native_decide
/-- Code #3810 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3810_qec :
    ∃ ψ, SS.IsAmplitudes code_3810 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3810 code_3810_ok (by decide) (by decide)

/-- Catalogue code #3811: ((6,2,2)), m=11, a=[3, 3, 4, 4, 6, 6], S=[0, 10]. -/
def code_3811 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3811_ok : code_3811.OK := by native_decide
/-- Code #3811 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3811_qec :
    ∃ ψ, SS.IsAmplitudes code_3811 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3811 code_3811_ok (by decide) (by decide)

/-- Catalogue code #3812: ((6,2,2)), m=11, a=[3, 3, 4, 4, 6, 8], S=[0, 1]. -/
def code_3812 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3812_ok : code_3812.OK := by native_decide
/-- Code #3812 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3812_qec :
    ∃ ψ, SS.IsAmplitudes code_3812 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3812 code_3812_ok (by decide) (by decide)

/-- Catalogue code #3813: ((6,2,2)), m=11, a=[3, 3, 4, 4, 6, 9], S=[0, 1]. -/
def code_3813 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3813_ok : code_3813.OK := by native_decide
/-- Code #3813 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3813_qec :
    ∃ ψ, SS.IsAmplitudes code_3813 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3813 code_3813_ok (by decide) (by decide)

/-- Catalogue code #3814: ((6,2,2)), m=11, a=[3, 3, 4, 4, 6, 10], S=[0, 9]. -/
def code_3814 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3814_ok : code_3814.OK := by native_decide
/-- Code #3814 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3814_qec :
    ∃ ψ, SS.IsAmplitudes code_3814 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3814 code_3814_ok (by decide) (by decide)

/-- Catalogue code #3815: ((6,2,2)), m=11, a=[3, 3, 4, 4, 7, 9], S=[0, 6]. -/
def code_3815 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3815_ok : code_3815.OK := by native_decide
/-- Code #3815 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3815_qec :
    ∃ ψ, SS.IsAmplitudes code_3815 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3815 code_3815_ok (by decide) (by decide)

/-- Catalogue code #3816: ((6,2,2)), m=11, a=[3, 3, 4, 4, 8, 10], S=[0, 5]. -/
def code_3816 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3816_ok : code_3816.OK := by native_decide
/-- Code #3816 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3816_qec :
    ∃ ψ, SS.IsAmplitudes code_3816 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3816 code_3816_ok (by decide) (by decide)

/-- Catalogue code #3817: ((6,2,2)), m=11, a=[3, 3, 4, 4, 9, 10], S=[0, 5]. -/
def code_3817 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3817_ok : code_3817.OK := by native_decide
/-- Code #3817 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3817_qec :
    ∃ ψ, SS.IsAmplitudes code_3817 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3817 code_3817_ok (by decide) (by decide)

/-- Catalogue code #3818: ((6,2,2)), m=11, a=[3, 3, 4, 4, 9, 10], S=[0, 6]. -/
def code_3818 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3818_ok : code_3818.OK := by native_decide
/-- Code #3818 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3818_qec :
    ∃ ψ, SS.IsAmplitudes code_3818 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3818 code_3818_ok (by decide) (by decide)

/-- Catalogue code #3819: ((6,2,2)), m=11, a=[3, 3, 4, 5, 5, 7], S=[0, 10]. -/
def code_3819 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3819_ok : code_3819.OK := by native_decide
/-- Code #3819 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3819_qec :
    ∃ ψ, SS.IsAmplitudes code_3819 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3819 code_3819_ok (by decide) (by decide)

/-- Catalogue code #3820: ((6,2,2)), m=11, a=[3, 3, 4, 5, 5, 10], S=[0, 9]. -/
def code_3820 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3820_ok : code_3820.OK := by native_decide
/-- Code #3820 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3820_qec :
    ∃ ψ, SS.IsAmplitudes code_3820 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3820 code_3820_ok (by decide) (by decide)

/-- Catalogue code #3821: ((6,2,2)), m=11, a=[3, 3, 4, 5, 6, 6], S=[0, 1]. -/
def code_3821 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3821_ok : code_3821.OK := by native_decide
/-- Code #3821 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3821_qec :
    ∃ ψ, SS.IsAmplitudes code_3821 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3821 code_3821_ok (by decide) (by decide)

/-- Catalogue code #3822: ((6,2,2)), m=11, a=[3, 3, 4, 5, 6, 6], S=[0, 9]. -/
def code_3822 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3822_ok : code_3822.OK := by native_decide
/-- Code #3822 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3822_qec :
    ∃ ψ, SS.IsAmplitudes code_3822 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3822 code_3822_ok (by decide) (by decide)

/-- Catalogue code #3823: ((6,2,2)), m=11, a=[3, 3, 4, 5, 6, 7], S=[0, 1]. -/
def code_3823 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3823_ok : code_3823.OK := by native_decide
/-- Code #3823 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3823_qec :
    ∃ ψ, SS.IsAmplitudes code_3823 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3823 code_3823_ok (by decide) (by decide)

/-- Catalogue code #3824: ((6,2,2)), m=11, a=[3, 3, 4, 5, 6, 9], S=[0, 1]. -/
def code_3824 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3824_ok : code_3824.OK := by native_decide
/-- Code #3824 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3824_qec :
    ∃ ψ, SS.IsAmplitudes code_3824 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3824 code_3824_ok (by decide) (by decide)

/-- Catalogue code #3825: ((6,2,2)), m=11, a=[3, 3, 4, 5, 6, 9], S=[0, 10]. -/
def code_3825 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3825_ok : code_3825.OK := by native_decide
/-- Code #3825 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3825_qec :
    ∃ ψ, SS.IsAmplitudes code_3825 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3825 code_3825_ok (by decide) (by decide)

/-- Catalogue code #3826: ((6,2,2)), m=11, a=[3, 3, 4, 5, 7, 7], S=[0, 9]. -/
def code_3826 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3826_ok : code_3826.OK := by native_decide
/-- Code #3826 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3826_qec :
    ∃ ψ, SS.IsAmplitudes code_3826 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3826 code_3826_ok (by decide) (by decide)

/-- Catalogue code #3827: ((6,2,2)), m=11, a=[3, 3, 4, 5, 7, 9], S=[0, 10]. -/
def code_3827 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3827_ok : code_3827.OK := by native_decide
/-- Code #3827 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3827_qec :
    ∃ ψ, SS.IsAmplitudes code_3827 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3827 code_3827_ok (by decide) (by decide)

/-- Catalogue code #3828: ((6,2,2)), m=11, a=[3, 3, 4, 5, 7, 10], S=[0, 9]. -/
def code_3828 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3828_ok : code_3828.OK := by native_decide
/-- Code #3828 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3828_qec :
    ∃ ψ, SS.IsAmplitudes code_3828 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3828 code_3828_ok (by decide) (by decide)

/-- Catalogue code #3829: ((6,2,2)), m=11, a=[3, 3, 4, 5, 9, 9], S=[0, 1]. -/
def code_3829 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3829_ok : code_3829.OK := by native_decide
/-- Code #3829 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3829_qec :
    ∃ ψ, SS.IsAmplitudes code_3829 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3829 code_3829_ok (by decide) (by decide)

/-- Catalogue code #3830: ((6,2,2)), m=11, a=[3, 3, 4, 5, 10, 10], S=[0, 9]. -/
def code_3830 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3830_ok : code_3830.OK := by native_decide
/-- Code #3830 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3830_qec :
    ∃ ψ, SS.IsAmplitudes code_3830 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3830 code_3830_ok (by decide) (by decide)

/-- Catalogue code #3831: ((6,2,2)), m=11, a=[3, 3, 4, 6, 6, 6], S=[0, 10]. -/
def code_3831 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3831_ok : code_3831.OK := by native_decide
/-- Code #3831 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3831_qec :
    ∃ ψ, SS.IsAmplitudes code_3831 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3831 code_3831_ok (by decide) (by decide)

/-- Catalogue code #3832: ((6,2,2)), m=11, a=[3, 3, 4, 6, 6, 7], S=[0, 1]. -/
def code_3832 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3832_ok : code_3832.OK := by native_decide
/-- Code #3832 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3832_qec :
    ∃ ψ, SS.IsAmplitudes code_3832 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3832 code_3832_ok (by decide) (by decide)

/-- Catalogue code #3833: ((6,2,2)), m=11, a=[3, 3, 4, 6, 6, 7], S=[0, 2]. -/
def code_3833 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((9 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3833_ok : code_3833.OK := by native_decide
/-- Code #3833 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3833_qec :
    ∃ ψ, SS.IsAmplitudes code_3833 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3833 code_3833_ok (by decide) (by decide)

/-- Catalogue code #3834: ((6,2,2)), m=11, a=[3, 3, 4, 6, 6, 7], S=[0, 10]. -/
def code_3834 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3834_ok : code_3834.OK := by native_decide
/-- Code #3834 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3834_qec :
    ∃ ψ, SS.IsAmplitudes code_3834 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3834 code_3834_ok (by decide) (by decide)

/-- Catalogue code #3835: ((6,2,2)), m=11, a=[3, 3, 4, 6, 6, 8], S=[0, 1]. -/
def code_3835 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3835_ok : code_3835.OK := by native_decide
/-- Code #3835 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3835_qec :
    ∃ ψ, SS.IsAmplitudes code_3835 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3835 code_3835_ok (by decide) (by decide)

/-- Catalogue code #3836: ((6,2,2)), m=11, a=[3, 3, 4, 6, 6, 9], S=[0, 10]. -/
def code_3836 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3836_ok : code_3836.OK := by native_decide
/-- Code #3836 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3836_qec :
    ∃ ψ, SS.IsAmplitudes code_3836 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3836 code_3836_ok (by decide) (by decide)

/-- Catalogue code #3837: ((6,2,2)), m=11, a=[3, 3, 4, 6, 6, 10], S=[0, 9]. -/
def code_3837 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3837_ok : code_3837.OK := by native_decide
/-- Code #3837 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3837_qec :
    ∃ ψ, SS.IsAmplitudes code_3837 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3837 code_3837_ok (by decide) (by decide)

/-- Catalogue code #3838: ((6,2,2)), m=11, a=[3, 3, 4, 6, 7, 10], S=[0, 2]. -/
def code_3838 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![true, true, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3838_ok : code_3838.OK := by native_decide
/-- Code #3838 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3838_qec :
    ∃ ψ, SS.IsAmplitudes code_3838 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3838 code_3838_ok (by decide) (by decide)

/-- Catalogue code #3839: ((6,2,2)), m=11, a=[3, 3, 4, 6, 7, 10], S=[0, 9]. -/
def code_3839 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3839_ok : code_3839.OK := by native_decide
/-- Code #3839 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3839_qec :
    ∃ ψ, SS.IsAmplitudes code_3839 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3839 code_3839_ok (by decide) (by decide)

/-- Catalogue code #3840: ((6,2,2)), m=11, a=[3, 3, 4, 6, 8, 9], S=[0, 1]. -/
def code_3840 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3840_ok : code_3840.OK := by native_decide
/-- Code #3840 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3840_qec :
    ∃ ψ, SS.IsAmplitudes code_3840 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3840 code_3840_ok (by decide) (by decide)

/-- Catalogue code #3841: ((6,2,2)), m=11, a=[3, 3, 4, 6, 8, 9], S=[0, 10]. -/
def code_3841 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3841_ok : code_3841.OK := by native_decide
/-- Code #3841 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3841_qec :
    ∃ ψ, SS.IsAmplitudes code_3841 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3841 code_3841_ok (by decide) (by decide)

/-- Catalogue code #3842: ((6,2,2)), m=11, a=[3, 3, 4, 6, 8, 10], S=[0, 2]. -/
def code_3842 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3842_ok : code_3842.OK := by native_decide
/-- Code #3842 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3842_qec :
    ∃ ψ, SS.IsAmplitudes code_3842 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3842 code_3842_ok (by decide) (by decide)

/-- Catalogue code #3843: ((6,2,2)), m=11, a=[3, 3, 4, 6, 9, 9], S=[0, 10]. -/
def code_3843 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3843_ok : code_3843.OK := by native_decide
/-- Code #3843 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3843_qec :
    ∃ ψ, SS.IsAmplitudes code_3843 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3843 code_3843_ok (by decide) (by decide)

/-- Catalogue code #3844: ((6,2,2)), m=11, a=[3, 3, 4, 6, 10, 10], S=[0, 9]. -/
def code_3844 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3844_ok : code_3844.OK := by native_decide
/-- Code #3844 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3844_qec :
    ∃ ψ, SS.IsAmplitudes code_3844 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3844 code_3844_ok (by decide) (by decide)

/-- Catalogue code #3845: ((6,2,2)), m=11, a=[3, 3, 4, 7, 8, 9], S=[0, 10]. -/
def code_3845 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3845_ok : code_3845.OK := by native_decide
/-- Code #3845 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3845_qec :
    ∃ ψ, SS.IsAmplitudes code_3845 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3845 code_3845_ok (by decide) (by decide)

/-- Catalogue code #3846: ((6,2,2)), m=11, a=[3, 3, 4, 7, 9, 9], S=[0, 5]. -/
def code_3846 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3846_ok : code_3846.OK := by native_decide
/-- Code #3846 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3846_qec :
    ∃ ψ, SS.IsAmplitudes code_3846 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3846 code_3846_ok (by decide) (by decide)

/-- Catalogue code #3847: ((6,2,2)), m=11, a=[3, 3, 4, 7, 9, 9], S=[0, 6]. -/
def code_3847 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3847_ok : code_3847.OK := by native_decide
/-- Code #3847 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3847_qec :
    ∃ ψ, SS.IsAmplitudes code_3847 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3847 code_3847_ok (by decide) (by decide)

/-- Catalogue code #3848: ((6,2,2)), m=11, a=[3, 3, 4, 7, 9, 9], S=[0, 10]. -/
def code_3848 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3848_ok : code_3848.OK := by native_decide
/-- Code #3848 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3848_qec :
    ∃ ψ, SS.IsAmplitudes code_3848 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3848 code_3848_ok (by decide) (by decide)

/-- Catalogue code #3849: ((6,2,2)), m=11, a=[3, 3, 4, 7, 9, 10], S=[0, 5]. -/
def code_3849 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3849_ok : code_3849.OK := by native_decide
/-- Code #3849 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3849_qec :
    ∃ ψ, SS.IsAmplitudes code_3849 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3849 code_3849_ok (by decide) (by decide)

/-- Catalogue code #3850: ((6,2,2)), m=11, a=[3, 3, 4, 8, 9, 9], S=[0, 10]. -/
def code_3850 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3850_ok : code_3850.OK := by native_decide
/-- Code #3850 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3850_qec :
    ∃ ψ, SS.IsAmplitudes code_3850 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3850 code_3850_ok (by decide) (by decide)

/-- Catalogue code #3851: ((6,2,2)), m=11, a=[3, 3, 4, 8, 9, 10], S=[0, 5]. -/
def code_3851 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_3851_ok : code_3851.OK := by native_decide
/-- Code #3851 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3851_qec :
    ∃ ψ, SS.IsAmplitudes code_3851 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3851 code_3851_ok (by decide) (by decide)

/-- Catalogue code #3852: ((6,2,2)), m=11, a=[3, 3, 4, 9, 9, 9], S=[0, 5]. -/
def code_3852 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3852_ok : code_3852.OK := by native_decide
/-- Code #3852 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3852_qec :
    ∃ ψ, SS.IsAmplitudes code_3852 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3852 code_3852_ok (by decide) (by decide)

/-- Catalogue code #3853: ((6,2,2)), m=11, a=[3, 3, 4, 9, 9, 9], S=[0, 10]. -/
def code_3853 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3853_ok : code_3853.OK := by native_decide
/-- Code #3853 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3853_qec :
    ∃ ψ, SS.IsAmplitudes code_3853 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3853 code_3853_ok (by decide) (by decide)

/-- Catalogue code #3854: ((6,2,2)), m=11, a=[3, 3, 4, 9, 9, 10], S=[0, 6]. -/
def code_3854 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3854_ok : code_3854.OK := by native_decide
/-- Code #3854 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3854_qec :
    ∃ ψ, SS.IsAmplitudes code_3854 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3854 code_3854_ok (by decide) (by decide)

/-- Catalogue code #3855: ((6,2,2)), m=11, a=[3, 3, 5, 5, 5, 7], S=[0, 10]. -/
def code_3855 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3855_ok : code_3855.OK := by native_decide
/-- Code #3855 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3855_qec :
    ∃ ψ, SS.IsAmplitudes code_3855 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3855 code_3855_ok (by decide) (by decide)

/-- Catalogue code #3856: ((6,2,2)), m=11, a=[3, 3, 5, 5, 6, 9], S=[0, 10]. -/
def code_3856 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3856_ok : code_3856.OK := by native_decide
/-- Code #3856 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3856_qec :
    ∃ ψ, SS.IsAmplitudes code_3856 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3856 code_3856_ok (by decide) (by decide)

/-- Catalogue code #3857: ((6,2,2)), m=11, a=[3, 3, 5, 5, 6, 10], S=[0, 9]. -/
def code_3857 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3857_ok : code_3857.OK := by native_decide
/-- Code #3857 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3857_qec :
    ∃ ψ, SS.IsAmplitudes code_3857 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3857 code_3857_ok (by decide) (by decide)

/-- Catalogue code #3858: ((6,2,2)), m=11, a=[3, 3, 5, 5, 7, 7], S=[0, 2]. -/
def code_3858 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3858_ok : code_3858.OK := by native_decide
/-- Code #3858 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3858_qec :
    ∃ ψ, SS.IsAmplitudes code_3858 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3858 code_3858_ok (by decide) (by decide)

/-- Catalogue code #3859: ((6,2,2)), m=11, a=[3, 3, 5, 5, 7, 7], S=[0, 10]. -/
def code_3859 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3859_ok : code_3859.OK := by native_decide
/-- Code #3859 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3859_qec :
    ∃ ψ, SS.IsAmplitudes code_3859 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3859 code_3859_ok (by decide) (by decide)

/-- Catalogue code #3860: ((6,2,2)), m=11, a=[3, 3, 5, 5, 7, 9], S=[0, 1]. -/
def code_3860 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3860_ok : code_3860.OK := by native_decide
/-- Code #3860 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3860_qec :
    ∃ ψ, SS.IsAmplitudes code_3860 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3860 code_3860_ok (by decide) (by decide)

/-- Catalogue code #3861: ((6,2,2)), m=11, a=[3, 3, 5, 5, 7, 10], S=[0, 2]. -/
def code_3861 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3861_ok : code_3861.OK := by native_decide
/-- Code #3861 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3861_qec :
    ∃ ψ, SS.IsAmplitudes code_3861 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3861 code_3861_ok (by decide) (by decide)

/-- Catalogue code #3862: ((6,2,2)), m=11, a=[3, 3, 5, 5, 7, 10], S=[0, 9]. -/
def code_3862 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3862_ok : code_3862.OK := by native_decide
/-- Code #3862 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3862_qec :
    ∃ ψ, SS.IsAmplitudes code_3862 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3862 code_3862_ok (by decide) (by decide)

/-- Catalogue code #3863: ((6,2,2)), m=11, a=[3, 3, 5, 5, 9, 10], S=[0, 4]. -/
def code_3863 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3863_ok : code_3863.OK := by native_decide
/-- Code #3863 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3863_qec :
    ∃ ψ, SS.IsAmplitudes code_3863 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3863 code_3863_ok (by decide) (by decide)

/-- Catalogue code #3864: ((6,2,2)), m=11, a=[3, 3, 5, 5, 10, 10], S=[0, 2]. -/
def code_3864 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3864_ok : code_3864.OK := by native_decide
/-- Code #3864 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3864_qec :
    ∃ ψ, SS.IsAmplitudes code_3864 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3864 code_3864_ok (by decide) (by decide)

/-- Catalogue code #3865: ((6,2,2)), m=11, a=[3, 3, 5, 5, 10, 10], S=[0, 4]. -/
def code_3865 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3865_ok : code_3865.OK := by native_decide
/-- Code #3865 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3865_qec :
    ∃ ψ, SS.IsAmplitudes code_3865 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3865 code_3865_ok (by decide) (by decide)

/-- Catalogue code #3866: ((6,2,2)), m=11, a=[3, 3, 5, 5, 10, 10], S=[0, 9]. -/
def code_3866 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3866_ok : code_3866.OK := by native_decide
/-- Code #3866 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3866_qec :
    ∃ ψ, SS.IsAmplitudes code_3866 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3866 code_3866_ok (by decide) (by decide)

/-- Catalogue code #3867: ((6,2,2)), m=11, a=[3, 3, 5, 6, 6, 7], S=[0, 1]. -/
def code_3867 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3867_ok : code_3867.OK := by native_decide
/-- Code #3867 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3867_qec :
    ∃ ψ, SS.IsAmplitudes code_3867 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3867 code_3867_ok (by decide) (by decide)

/-- Catalogue code #3868: ((6,2,2)), m=11, a=[3, 3, 5, 6, 7, 9], S=[0, 1]. -/
def code_3868 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3868_ok : code_3868.OK := by native_decide
/-- Code #3868 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3868_qec :
    ∃ ψ, SS.IsAmplitudes code_3868 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3868 code_3868_ok (by decide) (by decide)

/-- Catalogue code #3869: ((6,2,2)), m=11, a=[3, 3, 5, 6, 7, 9], S=[0, 10]. -/
def code_3869 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3869_ok : code_3869.OK := by native_decide
/-- Code #3869 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3869_qec :
    ∃ ψ, SS.IsAmplitudes code_3869 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3869 code_3869_ok (by decide) (by decide)

/-- Catalogue code #3870: ((6,2,2)), m=11, a=[3, 3, 5, 6, 7, 10], S=[0, 2]. -/
def code_3870 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3870_ok : code_3870.OK := by native_decide
/-- Code #3870 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3870_qec :
    ∃ ψ, SS.IsAmplitudes code_3870 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3870 code_3870_ok (by decide) (by decide)

/-- Catalogue code #3871: ((6,2,2)), m=11, a=[3, 3, 5, 6, 9, 10], S=[0, 7]. -/
def code_3871 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3871_ok : code_3871.OK := by native_decide
/-- Code #3871 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3871_qec :
    ∃ ψ, SS.IsAmplitudes code_3871 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3871 code_3871_ok (by decide) (by decide)

/-- Catalogue code #3872: ((6,2,2)), m=11, a=[3, 3, 5, 6, 10, 10], S=[0, 9]. -/
def code_3872 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-7 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3872_ok : code_3872.OK := by native_decide
/-- Code #3872 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3872_qec :
    ∃ ψ, SS.IsAmplitudes code_3872 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3872 code_3872_ok (by decide) (by decide)

/-- Catalogue code #3873: ((6,2,2)), m=11, a=[3, 3, 5, 7, 7, 8], S=[0, 2]. -/
def code_3873 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3873_ok : code_3873.OK := by native_decide
/-- Code #3873 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3873_qec :
    ∃ ψ, SS.IsAmplitudes code_3873 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3873 code_3873_ok (by decide) (by decide)

/-- Catalogue code #3874: ((6,2,2)), m=11, a=[3, 3, 5, 7, 8, 9], S=[0, 1]. -/
def code_3874 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3874_ok : code_3874.OK := by native_decide
/-- Code #3874 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3874_qec :
    ∃ ψ, SS.IsAmplitudes code_3874 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3874 code_3874_ok (by decide) (by decide)

/-- Catalogue code #3875: ((6,2,2)), m=11, a=[3, 3, 5, 7, 8, 10], S=[0, 2]. -/
def code_3875 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3875_ok : code_3875.OK := by native_decide
/-- Code #3875 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3875_qec :
    ∃ ψ, SS.IsAmplitudes code_3875 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3875 code_3875_ok (by decide) (by decide)

/-- Catalogue code #3876: ((6,2,2)), m=11, a=[3, 3, 5, 7, 9, 9], S=[0, 1]. -/
def code_3876 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3876_ok : code_3876.OK := by native_decide
/-- Code #3876 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3876_qec :
    ∃ ψ, SS.IsAmplitudes code_3876 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3876 code_3876_ok (by decide) (by decide)

/-- Catalogue code #3877: ((6,2,2)), m=11, a=[3, 3, 5, 7, 10, 10], S=[0, 2]. -/
def code_3877 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3877_ok : code_3877.OK := by native_decide
/-- Code #3877 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3877_qec :
    ∃ ψ, SS.IsAmplitudes code_3877 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3877 code_3877_ok (by decide) (by decide)

/-- Catalogue code #3878: ((6,2,2)), m=11, a=[3, 3, 5, 7, 10, 10], S=[0, 9]. -/
def code_3878 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3878_ok : code_3878.OK := by native_decide
/-- Code #3878 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3878_qec :
    ∃ ψ, SS.IsAmplitudes code_3878 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3878 code_3878_ok (by decide) (by decide)

/-- Catalogue code #3879: ((6,2,2)), m=11, a=[3, 3, 5, 8, 9, 10], S=[0, 4]. -/
def code_3879 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3879_ok : code_3879.OK := by native_decide
/-- Code #3879 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3879_qec :
    ∃ ψ, SS.IsAmplitudes code_3879 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3879 code_3879_ok (by decide) (by decide)

/-- Catalogue code #3880: ((6,2,2)), m=11, a=[3, 3, 5, 8, 10, 10], S=[0, 2]. -/
def code_3880 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3880_ok : code_3880.OK := by native_decide
/-- Code #3880 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3880_qec :
    ∃ ψ, SS.IsAmplitudes code_3880 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3880 code_3880_ok (by decide) (by decide)

/-- Catalogue code #3881: ((6,2,2)), m=11, a=[3, 3, 5, 8, 10, 10], S=[0, 4]. -/
def code_3881 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3881_ok : code_3881.OK := by native_decide
/-- Code #3881 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3881_qec :
    ∃ ψ, SS.IsAmplitudes code_3881 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3881 code_3881_ok (by decide) (by decide)

/-- Catalogue code #3882: ((6,2,2)), m=11, a=[3, 3, 5, 9, 9, 10], S=[0, 4]. -/
def code_3882 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3882_ok : code_3882.OK := by native_decide
/-- Code #3882 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3882_qec :
    ∃ ψ, SS.IsAmplitudes code_3882 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3882 code_3882_ok (by decide) (by decide)

/-- Catalogue code #3883: ((6,2,2)), m=11, a=[3, 3, 5, 9, 9, 10], S=[0, 7]. -/
def code_3883 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3883_ok : code_3883.OK := by native_decide
/-- Code #3883 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3883_qec :
    ∃ ψ, SS.IsAmplitudes code_3883 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3883 code_3883_ok (by decide) (by decide)

/-- Catalogue code #3884: ((6,2,2)), m=11, a=[3, 3, 5, 9, 10, 10], S=[0, 4]. -/
def code_3884 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3884_ok : code_3884.OK := by native_decide
/-- Code #3884 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3884_qec :
    ∃ ψ, SS.IsAmplitudes code_3884 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3884 code_3884_ok (by decide) (by decide)

/-- Catalogue code #3885: ((6,2,2)), m=11, a=[3, 3, 5, 10, 10, 10], S=[0, 2]. -/
def code_3885 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3885_ok : code_3885.OK := by native_decide
/-- Code #3885 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3885_qec :
    ∃ ψ, SS.IsAmplitudes code_3885 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3885 code_3885_ok (by decide) (by decide)

/-- Catalogue code #3886: ((6,2,2)), m=11, a=[3, 3, 5, 10, 10, 10], S=[0, 4]. -/
def code_3886 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3886_ok : code_3886.OK := by native_decide
/-- Code #3886 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3886_qec :
    ∃ ψ, SS.IsAmplitudes code_3886 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3886 code_3886_ok (by decide) (by decide)

/-- Catalogue code #3887: ((6,2,2)), m=11, a=[3, 3, 6, 6, 7, 9], S=[0, 10]. -/
def code_3887 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3887_ok : code_3887.OK := by native_decide
/-- Code #3887 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3887_qec :
    ∃ ψ, SS.IsAmplitudes code_3887 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3887 code_3887_ok (by decide) (by decide)

/-- Catalogue code #3888: ((6,2,2)), m=11, a=[3, 3, 6, 6, 8, 10], S=[0, 7]. -/
def code_3888 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3888_ok : code_3888.OK := by native_decide
/-- Code #3888 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3888_qec :
    ∃ ψ, SS.IsAmplitudes code_3888 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3888 code_3888_ok (by decide) (by decide)

/-- Catalogue code #3889: ((6,2,2)), m=11, a=[3, 3, 6, 7, 7, 9], S=[0, 1]. -/
def code_3889 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3889_ok : code_3889.OK := by native_decide
/-- Code #3889 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3889_qec :
    ∃ ψ, SS.IsAmplitudes code_3889 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3889 code_3889_ok (by decide) (by decide)

/-- Catalogue code #3890: ((6,2,2)), m=11, a=[3, 3, 6, 7, 9, 9], S=[0, 10]. -/
def code_3890 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3890_ok : code_3890.OK := by native_decide
/-- Code #3890 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3890_qec :
    ∃ ψ, SS.IsAmplitudes code_3890 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3890 code_3890_ok (by decide) (by decide)

/-- Catalogue code #3891: ((6,2,2)), m=11, a=[3, 3, 6, 8, 9, 10], S=[0, 7]. -/
def code_3891 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3891_ok : code_3891.OK := by native_decide
/-- Code #3891 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3891_qec :
    ∃ ψ, SS.IsAmplitudes code_3891 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3891 code_3891_ok (by decide) (by decide)

/-- Catalogue code #3892: ((6,2,2)), m=11, a=[3, 3, 7, 7, 8, 9], S=[0, 6]. -/
def code_3892 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3892_ok : code_3892.OK := by native_decide
/-- Code #3892 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3892_qec :
    ∃ ψ, SS.IsAmplitudes code_3892 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3892 code_3892_ok (by decide) (by decide)

/-- Catalogue code #3893: ((6,2,2)), m=11, a=[3, 3, 7, 7, 9, 9], S=[0, 6]. -/
def code_3893 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3893_ok : code_3893.OK := by native_decide
/-- Code #3893 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3893_qec :
    ∃ ψ, SS.IsAmplitudes code_3893 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3893 code_3893_ok (by decide) (by decide)

/-- Catalogue code #3894: ((6,2,2)), m=11, a=[3, 3, 7, 7, 9, 10], S=[0, 5]. -/
def code_3894 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3894_ok : code_3894.OK := by native_decide
/-- Code #3894 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3894_qec :
    ∃ ψ, SS.IsAmplitudes code_3894 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3894 code_3894_ok (by decide) (by decide)

/-- Catalogue code #3895: ((6,2,2)), m=11, a=[3, 3, 7, 8, 9, 9], S=[0, 10]. -/
def code_3895 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3895_ok : code_3895.OK := by native_decide
/-- Code #3895 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3895_qec :
    ∃ ψ, SS.IsAmplitudes code_3895 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3895 code_3895_ok (by decide) (by decide)

/-- Catalogue code #3896: ((6,2,2)), m=11, a=[3, 3, 7, 8, 9, 10], S=[0, 6]. -/
def code_3896 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3896_ok : code_3896.OK := by native_decide
/-- Code #3896 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3896_qec :
    ∃ ψ, SS.IsAmplitudes code_3896 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3896 code_3896_ok (by decide) (by decide)

/-- Catalogue code #3897: ((6,2,2)), m=11, a=[3, 3, 7, 8, 10, 10], S=[0, 2]. -/
def code_3897 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3897_ok : code_3897.OK := by native_decide
/-- Code #3897 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3897_qec :
    ∃ ψ, SS.IsAmplitudes code_3897 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3897 code_3897_ok (by decide) (by decide)

/-- Catalogue code #3898: ((6,2,2)), m=11, a=[3, 3, 7, 8, 10, 10], S=[0, 6]. -/
def code_3898 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3898_ok : code_3898.OK := by native_decide
/-- Code #3898 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3898_qec :
    ∃ ψ, SS.IsAmplitudes code_3898 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3898 code_3898_ok (by decide) (by decide)

/-- Catalogue code #3899: ((6,2,2)), m=11, a=[3, 3, 7, 9, 9, 9], S=[0, 1]. -/
def code_3899 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3899_ok : code_3899.OK := by native_decide
/-- Code #3899 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3899_qec :
    ∃ ψ, SS.IsAmplitudes code_3899 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3899 code_3899_ok (by decide) (by decide)

/-- Catalogue code #3900: ((6,2,2)), m=11, a=[3, 3, 7, 9, 9, 9], S=[0, 6]. -/
def code_3900 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3900_ok : code_3900.OK := by native_decide
/-- Code #3900 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3900_qec :
    ∃ ψ, SS.IsAmplitudes code_3900 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3900 code_3900_ok (by decide) (by decide)

/-- Catalogue code #3901: ((6,2,2)), m=11, a=[3, 3, 7, 9, 9, 10], S=[0, 6]. -/
def code_3901 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3901_ok : code_3901.OK := by native_decide
/-- Code #3901 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3901_qec :
    ∃ ψ, SS.IsAmplitudes code_3901 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3901 code_3901_ok (by decide) (by decide)

/-- Catalogue code #3902: ((6,2,2)), m=11, a=[3, 3, 7, 9, 10, 10], S=[0, 5]. -/
def code_3902 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3902_ok : code_3902.OK := by native_decide
/-- Code #3902 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3902_qec :
    ∃ ψ, SS.IsAmplitudes code_3902 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3902 code_3902_ok (by decide) (by decide)

/-- Catalogue code #3903: ((6,2,2)), m=11, a=[3, 3, 7, 9, 10, 10], S=[0, 6]. -/
def code_3903 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3903_ok : code_3903.OK := by native_decide
/-- Code #3903 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3903_qec :
    ∃ ψ, SS.IsAmplitudes code_3903 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3903 code_3903_ok (by decide) (by decide)

/-- Catalogue code #3904: ((6,2,2)), m=11, a=[3, 3, 8, 9, 10, 10], S=[0, 4]. -/
def code_3904 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3904_ok : code_3904.OK := by native_decide
/-- Code #3904 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3904_qec :
    ∃ ψ, SS.IsAmplitudes code_3904 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3904 code_3904_ok (by decide) (by decide)

/-- Catalogue code #3905: ((6,2,2)), m=11, a=[3, 3, 8, 9, 10, 10], S=[0, 6]. -/
def code_3905 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3905_ok : code_3905.OK := by native_decide
/-- Code #3905 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3905_qec :
    ∃ ψ, SS.IsAmplitudes code_3905 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3905 code_3905_ok (by decide) (by decide)

/-- Catalogue code #3906: ((6,2,2)), m=11, a=[3, 3, 8, 10, 10, 10], S=[0, 5]. -/
def code_3906 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3906_ok : code_3906.OK := by native_decide
/-- Code #3906 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3906_qec :
    ∃ ψ, SS.IsAmplitudes code_3906 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3906 code_3906_ok (by decide) (by decide)

/-- Catalogue code #3907: ((6,2,2)), m=11, a=[3, 4, 4, 4, 5, 9], S=[0, 1]. -/
def code_3907 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3907_ok : code_3907.OK := by native_decide
/-- Code #3907 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3907_qec :
    ∃ ψ, SS.IsAmplitudes code_3907 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3907 code_3907_ok (by decide) (by decide)

/-- Catalogue code #3908: ((6,2,2)), m=11, a=[3, 4, 4, 4, 5, 10], S=[0, 2]. -/
def code_3908 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3908_ok : code_3908.OK := by native_decide
/-- Code #3908 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3908_qec :
    ∃ ψ, SS.IsAmplitudes code_3908 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3908 code_3908_ok (by decide) (by decide)

/-- Catalogue code #3909: ((6,2,2)), m=11, a=[3, 4, 4, 4, 6, 8], S=[0, 9]. -/
def code_3909 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3909_ok : code_3909.OK := by native_decide
/-- Code #3909 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3909_qec :
    ∃ ψ, SS.IsAmplitudes code_3909 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3909 code_3909_ok (by decide) (by decide)

/-- Catalogue code #3910: ((6,2,2)), m=11, a=[3, 4, 4, 4, 9, 9], S=[0, 1]. -/
def code_3910 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3910_ok : code_3910.OK := by native_decide
/-- Code #3910 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3910_qec :
    ∃ ψ, SS.IsAmplitudes code_3910 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3910 code_3910_ok (by decide) (by decide)

/-- Catalogue code #3911: ((6,2,2)), m=11, a=[3, 4, 4, 4, 9, 10], S=[0, 6]. -/
def code_3911 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3911_ok : code_3911.OK := by native_decide
/-- Code #3911 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3911_qec :
    ∃ ψ, SS.IsAmplitudes code_3911 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3911 code_3911_ok (by decide) (by decide)

/-- Catalogue code #3912: ((6,2,2)), m=11, a=[3, 4, 4, 5, 5, 6], S=[0, 2]. -/
def code_3912 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, false, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3912_ok : code_3912.OK := by native_decide
/-- Code #3912 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3912_qec :
    ∃ ψ, SS.IsAmplitudes code_3912 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3912 code_3912_ok (by decide) (by decide)

/-- Catalogue code #3913: ((6,2,2)), m=11, a=[3, 4, 4, 5, 5, 9], S=[0, 1]. -/
def code_3913 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3913_ok : code_3913.OK := by native_decide
/-- Code #3913 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3913_qec :
    ∃ ψ, SS.IsAmplitudes code_3913 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3913 code_3913_ok (by decide) (by decide)

/-- Catalogue code #3914: ((6,2,2)), m=11, a=[3, 4, 4, 5, 5, 9], S=[0, 10]. -/
def code_3914 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3914_ok : code_3914.OK := by native_decide
/-- Code #3914 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3914_qec :
    ∃ ψ, SS.IsAmplitudes code_3914 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3914 code_3914_ok (by decide) (by decide)

/-- Catalogue code #3915: ((6,2,2)), m=11, a=[3, 4, 4, 5, 5, 10], S=[0, 2]. -/
def code_3915 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3915_ok : code_3915.OK := by native_decide
/-- Code #3915 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3915_qec :
    ∃ ψ, SS.IsAmplitudes code_3915 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3915 code_3915_ok (by decide) (by decide)

/-- Catalogue code #3916: ((6,2,2)), m=11, a=[3, 4, 4, 5, 6, 6], S=[0, 9]. -/
def code_3916 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3916_ok : code_3916.OK := by native_decide
/-- Code #3916 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3916_qec :
    ∃ ψ, SS.IsAmplitudes code_3916 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3916 code_3916_ok (by decide) (by decide)

/-- Catalogue code #3917: ((6,2,2)), m=11, a=[3, 4, 4, 5, 6, 8], S=[0, 2]. -/
def code_3917 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11)]
theorem code_3917_ok : code_3917.OK := by native_decide
/-- Code #3917 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3917_qec :
    ∃ ψ, SS.IsAmplitudes code_3917 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3917 code_3917_ok (by decide) (by decide)

/-- Catalogue code #3918: ((6,2,2)), m=11, a=[3, 4, 4, 5, 6, 8], S=[0, 10]. -/
def code_3918 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3918_ok : code_3918.OK := by native_decide
/-- Code #3918 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3918_qec :
    ∃ ψ, SS.IsAmplitudes code_3918 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3918 code_3918_ok (by decide) (by decide)

/-- Catalogue code #3919: ((6,2,2)), m=11, a=[3, 4, 4, 5, 6, 9], S=[0, 1]. -/
def code_3919 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3919_ok : code_3919.OK := by native_decide
/-- Code #3919 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3919_qec :
    ∃ ψ, SS.IsAmplitudes code_3919 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3919 code_3919_ok (by decide) (by decide)

/-- Catalogue code #3920: ((6,2,2)), m=11, a=[3, 4, 4, 5, 6, 9], S=[0, 10]. -/
def code_3920 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3920_ok : code_3920.OK := by native_decide
/-- Code #3920 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3920_qec :
    ∃ ψ, SS.IsAmplitudes code_3920 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3920 code_3920_ok (by decide) (by decide)

/-- Catalogue code #3921: ((6,2,2)), m=11, a=[3, 4, 4, 5, 6, 10], S=[0, 9]. -/
def code_3921 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11)]
theorem code_3921_ok : code_3921.OK := by native_decide
/-- Code #3921 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3921_qec :
    ∃ ψ, SS.IsAmplitudes code_3921 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3921 code_3921_ok (by decide) (by decide)

/-- Catalogue code #3922: ((6,2,2)), m=11, a=[3, 4, 4, 5, 8, 9], S=[0, 1]. -/
def code_3922 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3922_ok : code_3922.OK := by native_decide
/-- Code #3922 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3922_qec :
    ∃ ψ, SS.IsAmplitudes code_3922 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3922 code_3922_ok (by decide) (by decide)

/-- Catalogue code #3923: ((6,2,2)), m=11, a=[3, 4, 4, 5, 8, 9], S=[0, 10]. -/
def code_3923 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3923_ok : code_3923.OK := by native_decide
/-- Code #3923 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3923_qec :
    ∃ ψ, SS.IsAmplitudes code_3923 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3923 code_3923_ok (by decide) (by decide)

/-- Catalogue code #3924: ((6,2,2)), m=11, a=[3, 4, 4, 5, 8, 10], S=[0, 2]. -/
def code_3924 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3924_ok : code_3924.OK := by native_decide
/-- Code #3924 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3924_qec :
    ∃ ψ, SS.IsAmplitudes code_3924 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3924 code_3924_ok (by decide) (by decide)

/-- Catalogue code #3925: ((6,2,2)), m=11, a=[3, 4, 4, 5, 10, 10], S=[0, 2]. -/
def code_3925 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11)]
theorem code_3925_ok : code_3925.OK := by native_decide
/-- Code #3925 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3925_qec :
    ∃ ψ, SS.IsAmplitudes code_3925 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3925 code_3925_ok (by decide) (by decide)

/-- Catalogue code #3926: ((6,2,2)), m=11, a=[3, 4, 4, 5, 10, 10], S=[0, 9]. -/
def code_3926 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3926_ok : code_3926.OK := by native_decide
/-- Code #3926 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3926_qec :
    ∃ ψ, SS.IsAmplitudes code_3926 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3926 code_3926_ok (by decide) (by decide)

/-- Catalogue code #3927: ((6,2,2)), m=11, a=[3, 4, 4, 6, 6, 6], S=[0, 9]. -/
def code_3927 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3927_ok : code_3927.OK := by native_decide
/-- Code #3927 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3927_qec :
    ∃ ψ, SS.IsAmplitudes code_3927 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3927 code_3927_ok (by decide) (by decide)

/-- Catalogue code #3928: ((6,2,2)), m=11, a=[3, 4, 4, 6, 6, 6], S=[0, 10]. -/
def code_3928 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3928_ok : code_3928.OK := by native_decide
/-- Code #3928 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3928_qec :
    ∃ ψ, SS.IsAmplitudes code_3928 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3928 code_3928_ok (by decide) (by decide)

/-- Catalogue code #3929: ((6,2,2)), m=11, a=[3, 4, 4, 6, 6, 7], S=[0, 9]. -/
def code_3929 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3929_ok : code_3929.OK := by native_decide
/-- Code #3929 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3929_qec :
    ∃ ψ, SS.IsAmplitudes code_3929 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3929 code_3929_ok (by decide) (by decide)

/-- Catalogue code #3930: ((6,2,2)), m=11, a=[3, 4, 4, 6, 6, 7], S=[0, 10]. -/
def code_3930 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_3930_ok : code_3930.OK := by native_decide
/-- Code #3930 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3930_qec :
    ∃ ψ, SS.IsAmplitudes code_3930 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3930 code_3930_ok (by decide) (by decide)

/-- Catalogue code #3931: ((6,2,2)), m=11, a=[3, 4, 4, 6, 6, 8], S=[0, 1]. -/
def code_3931 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3931_ok : code_3931.OK := by native_decide
/-- Code #3931 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3931_qec :
    ∃ ψ, SS.IsAmplitudes code_3931 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3931 code_3931_ok (by decide) (by decide)

/-- Catalogue code #3932: ((6,2,2)), m=11, a=[3, 4, 4, 6, 6, 9], S=[0, 1]. -/
def code_3932 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3932_ok : code_3932.OK := by native_decide
/-- Code #3932 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3932_qec :
    ∃ ψ, SS.IsAmplitudes code_3932 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3932 code_3932_ok (by decide) (by decide)

/-- Catalogue code #3933: ((6,2,2)), m=11, a=[3, 4, 4, 6, 6, 10], S=[0, 2]. -/
def code_3933 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3933_ok : code_3933.OK := by native_decide
/-- Code #3933 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3933_qec :
    ∃ ψ, SS.IsAmplitudes code_3933 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3933 code_3933_ok (by decide) (by decide)

/-- Catalogue code #3934: ((6,2,2)), m=11, a=[3, 4, 4, 6, 8, 8], S=[0, 2]. -/
def code_3934 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3934_ok : code_3934.OK := by native_decide
/-- Code #3934 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3934_qec :
    ∃ ψ, SS.IsAmplitudes code_3934 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3934 code_3934_ok (by decide) (by decide)

/-- Catalogue code #3935: ((6,2,2)), m=11, a=[3, 4, 4, 6, 9, 9], S=[0, 1]. -/
def code_3935 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3935_ok : code_3935.OK := by native_decide
/-- Code #3935 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3935_qec :
    ∃ ψ, SS.IsAmplitudes code_3935 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3935 code_3935_ok (by decide) (by decide)

/-- Catalogue code #3936: ((6,2,2)), m=11, a=[3, 4, 4, 6, 10, 10], S=[0, 2]. -/
def code_3936 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3936_ok : code_3936.OK := by native_decide
/-- Code #3936 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3936_qec :
    ∃ ψ, SS.IsAmplitudes code_3936 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3936 code_3936_ok (by decide) (by decide)

/-- Catalogue code #3937: ((6,2,2)), m=11, a=[3, 4, 4, 6, 10, 10], S=[0, 9]. -/
def code_3937 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3937_ok : code_3937.OK := by native_decide
/-- Code #3937 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3937_qec :
    ∃ ψ, SS.IsAmplitudes code_3937 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3937 code_3937_ok (by decide) (by decide)

/-- Catalogue code #3938: ((6,2,2)), m=11, a=[3, 4, 4, 7, 9, 9], S=[0, 6]. -/
def code_3938 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3938_ok : code_3938.OK := by native_decide
/-- Code #3938 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3938_qec :
    ∃ ψ, SS.IsAmplitudes code_3938 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3938 code_3938_ok (by decide) (by decide)

/-- Catalogue code #3939: ((6,2,2)), m=11, a=[3, 4, 4, 8, 8, 9], S=[0, 1]. -/
def code_3939 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3939_ok : code_3939.OK := by native_decide
/-- Code #3939 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3939_qec :
    ∃ ψ, SS.IsAmplitudes code_3939 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3939 code_3939_ok (by decide) (by decide)

/-- Catalogue code #3940: ((6,2,2)), m=11, a=[3, 4, 4, 8, 8, 9], S=[0, 5]. -/
def code_3940 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3940_ok : code_3940.OK := by native_decide
/-- Code #3940 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3940_qec :
    ∃ ψ, SS.IsAmplitudes code_3940 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3940 code_3940_ok (by decide) (by decide)

/-- Catalogue code #3941: ((6,2,2)), m=11, a=[3, 4, 4, 8, 8, 10], S=[0, 2]. -/
def code_3941 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3941_ok : code_3941.OK := by native_decide
/-- Code #3941 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3941_qec :
    ∃ ψ, SS.IsAmplitudes code_3941 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3941 code_3941_ok (by decide) (by decide)

/-- Catalogue code #3942: ((6,2,2)), m=11, a=[3, 4, 4, 8, 9, 9], S=[0, 1]. -/
def code_3942 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3942_ok : code_3942.OK := by native_decide
/-- Code #3942 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3942_qec :
    ∃ ψ, SS.IsAmplitudes code_3942 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3942 code_3942_ok (by decide) (by decide)

/-- Catalogue code #3943: ((6,2,2)), m=11, a=[3, 4, 4, 8, 9, 9], S=[0, 5]. -/
def code_3943 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3943_ok : code_3943.OK := by native_decide
/-- Code #3943 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3943_qec :
    ∃ ψ, SS.IsAmplitudes code_3943 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3943 code_3943_ok (by decide) (by decide)

/-- Catalogue code #3944: ((6,2,2)), m=11, a=[3, 4, 4, 8, 9, 10], S=[0, 6]. -/
def code_3944 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3944_ok : code_3944.OK := by native_decide
/-- Code #3944 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3944_qec :
    ∃ ψ, SS.IsAmplitudes code_3944 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3944 code_3944_ok (by decide) (by decide)

/-- Catalogue code #3945: ((6,2,2)), m=11, a=[3, 4, 4, 9, 10, 10], S=[0, 6]. -/
def code_3945 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3945_ok : code_3945.OK := by native_decide
/-- Code #3945 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3945_qec :
    ∃ ψ, SS.IsAmplitudes code_3945 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3945 code_3945_ok (by decide) (by decide)

/-- Catalogue code #3946: ((6,2,2)), m=11, a=[3, 4, 5, 5, 5, 7], S=[0, 9]. -/
def code_3946 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3946_ok : code_3946.OK := by native_decide
/-- Code #3946 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3946_qec :
    ∃ ψ, SS.IsAmplitudes code_3946 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3946 code_3946_ok (by decide) (by decide)

/-- Catalogue code #3947: ((6,2,2)), m=11, a=[3, 4, 5, 5, 5, 7], S=[0, 10]. -/
def code_3947 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3947_ok : code_3947.OK := by native_decide
/-- Code #3947 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3947_qec :
    ∃ ψ, SS.IsAmplitudes code_3947 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3947 code_3947_ok (by decide) (by decide)

/-- Catalogue code #3948: ((6,2,2)), m=11, a=[3, 4, 5, 5, 6, 8], S=[0, 2]. -/
def code_3948 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3948_ok : code_3948.OK := by native_decide
/-- Code #3948 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3948_qec :
    ∃ ψ, SS.IsAmplitudes code_3948 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3948 code_3948_ok (by decide) (by decide)

/-- Catalogue code #3949: ((6,2,2)), m=11, a=[3, 4, 5, 5, 6, 9], S=[0, 1]. -/
def code_3949 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_3949_ok : code_3949.OK := by native_decide
/-- Code #3949 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3949_qec :
    ∃ ψ, SS.IsAmplitudes code_3949 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3949 code_3949_ok (by decide) (by decide)

/-- Catalogue code #3950: ((6,2,2)), m=11, a=[3, 4, 5, 5, 6, 10], S=[0, 2]. -/
def code_3950 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3950_ok : code_3950.OK := by native_decide
/-- Code #3950 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3950_qec :
    ∃ ψ, SS.IsAmplitudes code_3950 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3950 code_3950_ok (by decide) (by decide)

/-- Catalogue code #3951: ((6,2,2)), m=11, a=[3, 4, 5, 5, 6, 10], S=[0, 9]. -/
def code_3951 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3951_ok : code_3951.OK := by native_decide
/-- Code #3951 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3951_qec :
    ∃ ψ, SS.IsAmplitudes code_3951 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3951 code_3951_ok (by decide) (by decide)

/-- Catalogue code #3952: ((6,2,2)), m=11, a=[3, 4, 5, 5, 7, 8], S=[0, 1]. -/
def code_3952 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3952_ok : code_3952.OK := by native_decide
/-- Code #3952 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3952_qec :
    ∃ ψ, SS.IsAmplitudes code_3952 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3952 code_3952_ok (by decide) (by decide)

/-- Catalogue code #3953: ((6,2,2)), m=11, a=[3, 4, 5, 5, 7, 9], S=[0, 1]. -/
def code_3953 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3953_ok : code_3953.OK := by native_decide
/-- Code #3953 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3953_qec :
    ∃ ψ, SS.IsAmplitudes code_3953 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3953 code_3953_ok (by decide) (by decide)

/-- Catalogue code #3954: ((6,2,2)), m=11, a=[3, 4, 5, 5, 7, 10], S=[0, 2]. -/
def code_3954 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-9 : ℚ) / 11)]
theorem code_3954_ok : code_3954.OK := by native_decide
/-- Code #3954 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3954_qec :
    ∃ ψ, SS.IsAmplitudes code_3954 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3954 code_3954_ok (by decide) (by decide)

/-- Catalogue code #3955: ((6,2,2)), m=11, a=[3, 4, 5, 5, 8, 9], S=[0, 10]. -/
def code_3955 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3955_ok : code_3955.OK := by native_decide
/-- Code #3955 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3955_qec :
    ∃ ψ, SS.IsAmplitudes code_3955 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3955 code_3955_ok (by decide) (by decide)

/-- Catalogue code #3956: ((6,2,2)), m=11, a=[3, 4, 5, 5, 9, 9], S=[0, 1]. -/
def code_3956 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3956_ok : code_3956.OK := by native_decide
/-- Code #3956 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3956_qec :
    ∃ ψ, SS.IsAmplitudes code_3956 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3956 code_3956_ok (by decide) (by decide)

/-- Catalogue code #3957: ((6,2,2)), m=11, a=[3, 4, 5, 5, 9, 9], S=[0, 10]. -/
def code_3957 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3957_ok : code_3957.OK := by native_decide
/-- Code #3957 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3957_qec :
    ∃ ψ, SS.IsAmplitudes code_3957 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3957 code_3957_ok (by decide) (by decide)

/-- Catalogue code #3958: ((6,2,2)), m=11, a=[3, 4, 5, 5, 10, 10], S=[0, 2]. -/
def code_3958 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3958_ok : code_3958.OK := by native_decide
/-- Code #3958 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3958_qec :
    ∃ ψ, SS.IsAmplitudes code_3958 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3958 code_3958_ok (by decide) (by decide)

/-- Catalogue code #3959: ((6,2,2)), m=11, a=[3, 4, 5, 6, 6, 7], S=[0, 1]. -/
def code_3959 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3959_ok : code_3959.OK := by native_decide
/-- Code #3959 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3959_qec :
    ∃ ψ, SS.IsAmplitudes code_3959 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3959 code_3959_ok (by decide) (by decide)

/-- Catalogue code #3960: ((6,2,2)), m=11, a=[3, 4, 5, 6, 7, 7], S=[0, 1]. -/
def code_3960 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3960_ok : code_3960.OK := by native_decide
/-- Code #3960 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3960_qec :
    ∃ ψ, SS.IsAmplitudes code_3960 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3960 code_3960_ok (by decide) (by decide)

/-- Catalogue code #3961: ((6,2,2)), m=11, a=[3, 4, 5, 6, 7, 7], S=[0, 9]. -/
def code_3961 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3961_ok : code_3961.OK := by native_decide
/-- Code #3961 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3961_qec :
    ∃ ψ, SS.IsAmplitudes code_3961 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3961 code_3961_ok (by decide) (by decide)

/-- Catalogue code #3962: ((6,2,2)), m=11, a=[3, 4, 5, 6, 7, 9], S=[0, 10]. -/
def code_3962 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3962_ok : code_3962.OK := by native_decide
/-- Code #3962 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3962_qec :
    ∃ ψ, SS.IsAmplitudes code_3962 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3962 code_3962_ok (by decide) (by decide)

/-- Catalogue code #3963: ((6,2,2)), m=11, a=[3, 4, 5, 6, 7, 10], S=[0, 9]. -/
def code_3963 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3963_ok : code_3963.OK := by native_decide
/-- Code #3963 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3963_qec :
    ∃ ψ, SS.IsAmplitudes code_3963 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3963 code_3963_ok (by decide) (by decide)

/-- Catalogue code #3964: ((6,2,2)), m=11, a=[3, 4, 5, 6, 8, 9], S=[0, 1]. -/
def code_3964 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3964_ok : code_3964.OK := by native_decide
/-- Code #3964 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3964_qec :
    ∃ ψ, SS.IsAmplitudes code_3964 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3964 code_3964_ok (by decide) (by decide)

/-- Catalogue code #3965: ((6,2,2)), m=11, a=[3, 4, 5, 6, 8, 10], S=[0, 2]. -/
def code_3965 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3965_ok : code_3965.OK := by native_decide
/-- Code #3965 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3965_qec :
    ∃ ψ, SS.IsAmplitudes code_3965 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3965 code_3965_ok (by decide) (by decide)

/-- Catalogue code #3966: ((6,2,2)), m=11, a=[3, 4, 5, 6, 9, 9], S=[0, 10]. -/
def code_3966 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3966_ok : code_3966.OK := by native_decide
/-- Code #3966 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3966_qec :
    ∃ ψ, SS.IsAmplitudes code_3966 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3966 code_3966_ok (by decide) (by decide)

/-- Catalogue code #3967: ((6,2,2)), m=11, a=[3, 4, 5, 6, 10, 10], S=[0, 2]. -/
def code_3967 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3967_ok : code_3967.OK := by native_decide
/-- Code #3967 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3967_qec :
    ∃ ψ, SS.IsAmplitudes code_3967 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3967 code_3967_ok (by decide) (by decide)

/-- Catalogue code #3968: ((6,2,2)), m=11, a=[3, 4, 5, 6, 10, 10], S=[0, 9]. -/
def code_3968 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3968_ok : code_3968.OK := by native_decide
/-- Code #3968 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3968_qec :
    ∃ ψ, SS.IsAmplitudes code_3968 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3968 code_3968_ok (by decide) (by decide)

/-- Catalogue code #3969: ((6,2,2)), m=11, a=[3, 4, 5, 7, 7, 10], S=[0, 9]. -/
def code_3969 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3969_ok : code_3969.OK := by native_decide
/-- Code #3969 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3969_qec :
    ∃ ψ, SS.IsAmplitudes code_3969 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3969 code_3969_ok (by decide) (by decide)

/-- Catalogue code #3970: ((6,2,2)), m=11, a=[3, 4, 5, 7, 8, 10], S=[0, 2]. -/
def code_3970 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3970_ok : code_3970.OK := by native_decide
/-- Code #3970 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3970_qec :
    ∃ ψ, SS.IsAmplitudes code_3970 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3970 code_3970_ok (by decide) (by decide)

/-- Catalogue code #3971: ((6,2,2)), m=11, a=[3, 4, 5, 7, 9, 9], S=[0, 10]. -/
def code_3971 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3971_ok : code_3971.OK := by native_decide
/-- Code #3971 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3971_qec :
    ∃ ψ, SS.IsAmplitudes code_3971 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3971 code_3971_ok (by decide) (by decide)

/-- Catalogue code #3972: ((6,2,2)), m=11, a=[3, 4, 5, 7, 10, 10], S=[0, 9]. -/
def code_3972 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11)]
theorem code_3972_ok : code_3972.OK := by native_decide
/-- Code #3972 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3972_qec :
    ∃ ψ, SS.IsAmplitudes code_3972 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3972 code_3972_ok (by decide) (by decide)

/-- Catalogue code #3973: ((6,2,2)), m=11, a=[3, 4, 5, 8, 9, 9], S=[0, 10]. -/
def code_3973 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3973_ok : code_3973.OK := by native_decide
/-- Code #3973 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3973_qec :
    ∃ ψ, SS.IsAmplitudes code_3973 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3973 code_3973_ok (by decide) (by decide)

/-- Catalogue code #3974: ((6,2,2)), m=11, a=[3, 4, 5, 8, 10, 10], S=[0, 2]. -/
def code_3974 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3974_ok : code_3974.OK := by native_decide
/-- Code #3974 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3974_qec :
    ∃ ψ, SS.IsAmplitudes code_3974 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3974 code_3974_ok (by decide) (by decide)

/-- Catalogue code #3975: ((6,2,2)), m=11, a=[3, 4, 5, 8, 10, 10], S=[0, 9]. -/
def code_3975 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3975_ok : code_3975.OK := by native_decide
/-- Code #3975 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3975_qec :
    ∃ ψ, SS.IsAmplitudes code_3975 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3975 code_3975_ok (by decide) (by decide)

/-- Catalogue code #3976: ((6,2,2)), m=11, a=[3, 4, 5, 10, 10, 10], S=[0, 2]. -/
def code_3976 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3976_ok : code_3976.OK := by native_decide
/-- Code #3976 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3976_qec :
    ∃ ψ, SS.IsAmplitudes code_3976 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3976 code_3976_ok (by decide) (by decide)

/-- Catalogue code #3977: ((6,2,2)), m=11, a=[3, 4, 6, 6, 6, 7], S=[0, 2]. -/
def code_3977 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3977_ok : code_3977.OK := by native_decide
/-- Code #3977 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3977_qec :
    ∃ ψ, SS.IsAmplitudes code_3977 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3977 code_3977_ok (by decide) (by decide)

/-- Catalogue code #3978: ((6,2,2)), m=11, a=[3, 4, 6, 6, 6, 9], S=[0, 10]. -/
def code_3978 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_3978_ok : code_3978.OK := by native_decide
/-- Code #3978 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3978_qec :
    ∃ ψ, SS.IsAmplitudes code_3978 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3978 code_3978_ok (by decide) (by decide)

/-- Catalogue code #3979: ((6,2,2)), m=11, a=[3, 4, 6, 6, 7, 8], S=[0, 10]. -/
def code_3979 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3979_ok : code_3979.OK := by native_decide
/-- Code #3979 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3979_qec :
    ∃ ψ, SS.IsAmplitudes code_3979 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3979 code_3979_ok (by decide) (by decide)

/-- Catalogue code #3980: ((6,2,2)), m=11, a=[3, 4, 6, 6, 7, 9], S=[0, 10]. -/
def code_3980 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3980_ok : code_3980.OK := by native_decide
/-- Code #3980 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3980_qec :
    ∃ ψ, SS.IsAmplitudes code_3980 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3980 code_3980_ok (by decide) (by decide)

/-- Catalogue code #3981: ((6,2,2)), m=11, a=[3, 4, 6, 6, 7, 10], S=[0, 2]. -/
def code_3981 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11)]
theorem code_3981_ok : code_3981.OK := by native_decide
/-- Code #3981 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3981_qec :
    ∃ ψ, SS.IsAmplitudes code_3981 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3981 code_3981_ok (by decide) (by decide)

/-- Catalogue code #3982: ((6,2,2)), m=11, a=[3, 4, 6, 6, 8, 9], S=[0, 1]. -/
def code_3982 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3982_ok : code_3982.OK := by native_decide
/-- Code #3982 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3982_qec :
    ∃ ψ, SS.IsAmplitudes code_3982 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3982 code_3982_ok (by decide) (by decide)

/-- Catalogue code #3983: ((6,2,2)), m=11, a=[3, 4, 6, 6, 8, 9], S=[0, 10]. -/
def code_3983 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3983_ok : code_3983.OK := by native_decide
/-- Code #3983 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3983_qec :
    ∃ ψ, SS.IsAmplitudes code_3983 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3983 code_3983_ok (by decide) (by decide)

/-- Catalogue code #3984: ((6,2,2)), m=11, a=[3, 4, 6, 6, 8, 10], S=[0, 2]. -/
def code_3984 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3984_ok : code_3984.OK := by native_decide
/-- Code #3984 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3984_qec :
    ∃ ψ, SS.IsAmplitudes code_3984 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3984 code_3984_ok (by decide) (by decide)

/-- Catalogue code #3985: ((6,2,2)), m=11, a=[3, 4, 6, 6, 9, 9], S=[0, 10]. -/
def code_3985 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3985_ok : code_3985.OK := by native_decide
/-- Code #3985 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3985_qec :
    ∃ ψ, SS.IsAmplitudes code_3985 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3985 code_3985_ok (by decide) (by decide)

/-- Catalogue code #3986: ((6,2,2)), m=11, a=[3, 4, 6, 6, 10, 10], S=[0, 2]. -/
def code_3986 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3986_ok : code_3986.OK := by native_decide
/-- Code #3986 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3986_qec :
    ∃ ψ, SS.IsAmplitudes code_3986 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3986 code_3986_ok (by decide) (by decide)

/-- Catalogue code #3987: ((6,2,2)), m=11, a=[3, 4, 6, 6, 10, 10], S=[0, 9]. -/
def code_3987 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3987_ok : code_3987.OK := by native_decide
/-- Code #3987 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3987_qec :
    ∃ ψ, SS.IsAmplitudes code_3987 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3987 code_3987_ok (by decide) (by decide)

/-- Catalogue code #3988: ((6,2,2)), m=11, a=[3, 4, 6, 7, 7, 10], S=[0, 9]. -/
def code_3988 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3988_ok : code_3988.OK := by native_decide
/-- Code #3988 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3988_qec :
    ∃ ψ, SS.IsAmplitudes code_3988 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3988 code_3988_ok (by decide) (by decide)

/-- Catalogue code #3989: ((6,2,2)), m=11, a=[3, 4, 6, 7, 8, 9], S=[0, 10]. -/
def code_3989 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_3989_ok : code_3989.OK := by native_decide
/-- Code #3989 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3989_qec :
    ∃ ψ, SS.IsAmplitudes code_3989 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3989 code_3989_ok (by decide) (by decide)

/-- Catalogue code #3990: ((6,2,2)), m=11, a=[3, 4, 6, 7, 9, 9], S=[0, 10]. -/
def code_3990 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3990_ok : code_3990.OK := by native_decide
/-- Code #3990 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3990_qec :
    ∃ ψ, SS.IsAmplitudes code_3990 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3990 code_3990_ok (by decide) (by decide)

/-- Catalogue code #3991: ((6,2,2)), m=11, a=[3, 4, 6, 7, 10, 10], S=[0, 2]. -/
def code_3991 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3991_ok : code_3991.OK := by native_decide
/-- Code #3991 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3991_qec :
    ∃ ψ, SS.IsAmplitudes code_3991 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3991 code_3991_ok (by decide) (by decide)

/-- Catalogue code #3992: ((6,2,2)), m=11, a=[3, 4, 6, 7, 10, 10], S=[0, 9]. -/
def code_3992 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_3992_ok : code_3992.OK := by native_decide
/-- Code #3992 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3992_qec :
    ∃ ψ, SS.IsAmplitudes code_3992 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3992 code_3992_ok (by decide) (by decide)

/-- Catalogue code #3993: ((6,2,2)), m=11, a=[3, 4, 6, 8, 9, 9], S=[0, 1]. -/
def code_3993 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3993_ok : code_3993.OK := by native_decide
/-- Code #3993 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3993_qec :
    ∃ ψ, SS.IsAmplitudes code_3993 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3993 code_3993_ok (by decide) (by decide)

/-- Catalogue code #3994: ((6,2,2)), m=11, a=[3, 4, 6, 8, 10, 10], S=[0, 2]. -/
def code_3994 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3994_ok : code_3994.OK := by native_decide
/-- Code #3994 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3994_qec :
    ∃ ψ, SS.IsAmplitudes code_3994 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3994 code_3994_ok (by decide) (by decide)

/-- Catalogue code #3995: ((6,2,2)), m=11, a=[3, 4, 6, 9, 9, 9], S=[0, 10]. -/
def code_3995 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_3995_ok : code_3995.OK := by native_decide
/-- Code #3995 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3995_qec :
    ∃ ψ, SS.IsAmplitudes code_3995 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3995 code_3995_ok (by decide) (by decide)

/-- Catalogue code #3996: ((6,2,2)), m=11, a=[3, 4, 7, 8, 8, 10], S=[0, 9]. -/
def code_3996 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_3996_ok : code_3996.OK := by native_decide
/-- Code #3996 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3996_qec :
    ∃ ψ, SS.IsAmplitudes code_3996 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3996 code_3996_ok (by decide) (by decide)

/-- Catalogue code #3997: ((6,2,2)), m=11, a=[3, 4, 7, 8, 9, 9], S=[0, 6]. -/
def code_3997 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3997_ok : code_3997.OK := by native_decide
/-- Code #3997 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3997_qec :
    ∃ ψ, SS.IsAmplitudes code_3997 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3997 code_3997_ok (by decide) (by decide)

/-- Catalogue code #3998: ((6,2,2)), m=11, a=[3, 4, 7, 8, 9, 9], S=[0, 10]. -/
def code_3998 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_3998_ok : code_3998.OK := by native_decide
/-- Code #3998 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3998_qec :
    ∃ ψ, SS.IsAmplitudes code_3998 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3998 code_3998_ok (by decide) (by decide)

/-- Catalogue code #3999: ((6,2,2)), m=11, a=[3, 4, 7, 8, 9, 10], S=[0, 6]. -/
def code_3999 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_3999_ok : code_3999.OK := by native_decide
/-- Code #3999 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3999_qec :
    ∃ ψ, SS.IsAmplitudes code_3999 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3999 code_3999_ok (by decide) (by decide)

end Catalogue.Chunk007
