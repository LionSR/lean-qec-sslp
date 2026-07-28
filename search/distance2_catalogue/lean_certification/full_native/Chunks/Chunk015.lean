import SS

namespace Catalogue.Chunk015

open SS SS.Verify

/-- Catalogue code #7500: ((6,2,2)), m=13, a=[3, 5, 6, 8, 9, 10], S=[0, 11]. -/
def code_7500 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7500_ok : code_7500.OK := by native_decide
/-- Code #7500 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7500_qec :
    ∃ ψ, SS.IsAmplitudes code_7500 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7500 code_7500_ok (by decide) (by decide)

/-- Catalogue code #7501: ((6,2,2)), m=13, a=[3, 5, 6, 8, 9, 12], S=[0, 2]. -/
def code_7501 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7501_ok : code_7501.OK := by native_decide
/-- Code #7501 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7501_qec :
    ∃ ψ, SS.IsAmplitudes code_7501 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7501 code_7501_ok (by decide) (by decide)

/-- Catalogue code #7502: ((6,2,2)), m=13, a=[3, 5, 6, 8, 11, 11], S=[0, 4]. -/
def code_7502 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7502_ok : code_7502.OK := by native_decide
/-- Code #7502 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7502_qec :
    ∃ ψ, SS.IsAmplitudes code_7502 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7502 code_7502_ok (by decide) (by decide)

/-- Catalogue code #7503: ((6,2,2)), m=13, a=[3, 5, 6, 8, 11, 12], S=[0, 4]. -/
def code_7503 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7503_ok : code_7503.OK := by native_decide
/-- Code #7503 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7503_qec :
    ∃ ψ, SS.IsAmplitudes code_7503 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7503 code_7503_ok (by decide) (by decide)

/-- Catalogue code #7504: ((6,2,2)), m=13, a=[3, 5, 6, 8, 12, 12], S=[0, 9]. -/
def code_7504 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-11 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7504_ok : code_7504.OK := by native_decide
/-- Code #7504 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7504_qec :
    ∃ ψ, SS.IsAmplitudes code_7504 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7504 code_7504_ok (by decide) (by decide)

/-- Catalogue code #7505: ((6,2,2)), m=13, a=[3, 5, 6, 8, 12, 12], S=[0, 11]. -/
def code_7505 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7505_ok : code_7505.OK := by native_decide
/-- Code #7505 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7505_qec :
    ∃ ψ, SS.IsAmplitudes code_7505 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7505 code_7505_ok (by decide) (by decide)

/-- Catalogue code #7506: ((6,2,2)), m=13, a=[3, 5, 6, 9, 9, 10], S=[0, 11]. -/
def code_7506 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13)]
theorem code_7506_ok : code_7506.OK := by native_decide
/-- Code #7506 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7506_qec :
    ∃ ψ, SS.IsAmplitudes code_7506 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7506 code_7506_ok (by decide) (by decide)

/-- Catalogue code #7507: ((6,2,2)), m=13, a=[3, 5, 6, 9, 9, 12], S=[0, 11]. -/
def code_7507 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7507_ok : code_7507.OK := by native_decide
/-- Code #7507 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7507_qec :
    ∃ ψ, SS.IsAmplitudes code_7507 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7507 code_7507_ok (by decide) (by decide)

/-- Catalogue code #7508: ((6,2,2)), m=13, a=[3, 5, 6, 9, 11, 11], S=[0, 12]. -/
def code_7508 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7508_ok : code_7508.OK := by native_decide
/-- Code #7508 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7508_qec :
    ∃ ψ, SS.IsAmplitudes code_7508 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7508 code_7508_ok (by decide) (by decide)

/-- Catalogue code #7509: ((6,2,2)), m=13, a=[3, 5, 6, 9, 12, 12], S=[0, 11]. -/
def code_7509 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7509_ok : code_7509.OK := by native_decide
/-- Code #7509 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7509_qec :
    ∃ ψ, SS.IsAmplitudes code_7509 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7509 code_7509_ok (by decide) (by decide)

/-- Catalogue code #7510: ((6,2,2)), m=13, a=[3, 5, 6, 10, 11, 12], S=[0, 4]. -/
def code_7510 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7510_ok : code_7510.OK := by native_decide
/-- Code #7510 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7510_qec :
    ∃ ψ, SS.IsAmplitudes code_7510 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7510 code_7510_ok (by decide) (by decide)

/-- Catalogue code #7511: ((6,2,2)), m=13, a=[3, 5, 6, 10, 12, 12], S=[0, 2]. -/
def code_7511 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7511_ok : code_7511.OK := by native_decide
/-- Code #7511 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7511_qec :
    ∃ ψ, SS.IsAmplitudes code_7511 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7511 code_7511_ok (by decide) (by decide)

/-- Catalogue code #7512: ((6,2,2)), m=13, a=[3, 5, 6, 11, 11, 12], S=[0, 4]. -/
def code_7512 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7512_ok : code_7512.OK := by native_decide
/-- Code #7512 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7512_qec :
    ∃ ψ, SS.IsAmplitudes code_7512 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7512 code_7512_ok (by decide) (by decide)

/-- Catalogue code #7513: ((6,2,2)), m=13, a=[3, 5, 7, 7, 9, 9], S=[0, 2]. -/
def code_7513 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-11 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7513_ok : code_7513.OK := by native_decide
/-- Code #7513 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7513_qec :
    ∃ ψ, SS.IsAmplitudes code_7513 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7513 code_7513_ok (by decide) (by decide)

/-- Catalogue code #7514: ((6,2,2)), m=13, a=[3, 5, 7, 7, 9, 9], S=[0, 12]. -/
def code_7514 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7514_ok : code_7514.OK := by native_decide
/-- Code #7514 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7514_qec :
    ∃ ψ, SS.IsAmplitudes code_7514 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7514 code_7514_ok (by decide) (by decide)

/-- Catalogue code #7515: ((6,2,2)), m=13, a=[3, 5, 7, 7, 9, 11], S=[0, 1]. -/
def code_7515 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7515_ok : code_7515.OK := by native_decide
/-- Code #7515 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7515_qec :
    ∃ ψ, SS.IsAmplitudes code_7515 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7515 code_7515_ok (by decide) (by decide)

/-- Catalogue code #7516: ((6,2,2)), m=13, a=[3, 5, 7, 7, 9, 11], S=[0, 12]. -/
def code_7516 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7516_ok : code_7516.OK := by native_decide
/-- Code #7516 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7516_qec :
    ∃ ψ, SS.IsAmplitudes code_7516 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7516 code_7516_ok (by decide) (by decide)

/-- Catalogue code #7517: ((6,2,2)), m=13, a=[3, 5, 7, 7, 9, 12], S=[0, 2]. -/
def code_7517 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7517_ok : code_7517.OK := by native_decide
/-- Code #7517 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7517_qec :
    ∃ ψ, SS.IsAmplitudes code_7517 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7517 code_7517_ok (by decide) (by decide)

/-- Catalogue code #7518: ((6,2,2)), m=13, a=[3, 5, 7, 7, 11, 11], S=[0, 1]. -/
def code_7518 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7518_ok : code_7518.OK := by native_decide
/-- Code #7518 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7518_qec :
    ∃ ψ, SS.IsAmplitudes code_7518 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7518 code_7518_ok (by decide) (by decide)

/-- Catalogue code #7519: ((6,2,2)), m=13, a=[3, 5, 7, 7, 11, 11], S=[0, 4]. -/
def code_7519 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7519_ok : code_7519.OK := by native_decide
/-- Code #7519 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7519_qec :
    ∃ ψ, SS.IsAmplitudes code_7519 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7519 code_7519_ok (by decide) (by decide)

/-- Catalogue code #7520: ((6,2,2)), m=13, a=[3, 5, 7, 7, 11, 12], S=[0, 4]. -/
def code_7520 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7520_ok : code_7520.OK := by native_decide
/-- Code #7520 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7520_qec :
    ∃ ψ, SS.IsAmplitudes code_7520 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7520 code_7520_ok (by decide) (by decide)

/-- Catalogue code #7521: ((6,2,2)), m=13, a=[3, 5, 7, 8, 10, 11], S=[0, 9]. -/
def code_7521 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7521_ok : code_7521.OK := by native_decide
/-- Code #7521 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7521_qec :
    ∃ ψ, SS.IsAmplitudes code_7521 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7521 code_7521_ok (by decide) (by decide)

/-- Catalogue code #7522: ((6,2,2)), m=13, a=[3, 5, 7, 8, 11, 12], S=[0, 9]. -/
def code_7522 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7522_ok : code_7522.OK := by native_decide
/-- Code #7522 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7522_qec :
    ∃ ψ, SS.IsAmplitudes code_7522 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7522 code_7522_ok (by decide) (by decide)

/-- Catalogue code #7523: ((6,2,2)), m=13, a=[3, 5, 7, 8, 12, 12], S=[0, 11]. -/
def code_7523 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7523_ok : code_7523.OK := by native_decide
/-- Code #7523 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7523_qec :
    ∃ ψ, SS.IsAmplitudes code_7523 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7523 code_7523_ok (by decide) (by decide)

/-- Catalogue code #7524: ((6,2,2)), m=13, a=[3, 5, 7, 9, 9, 10], S=[0, 2]. -/
def code_7524 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7524_ok : code_7524.OK := by native_decide
/-- Code #7524 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7524_qec :
    ∃ ψ, SS.IsAmplitudes code_7524 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7524 code_7524_ok (by decide) (by decide)

/-- Catalogue code #7525: ((6,2,2)), m=13, a=[3, 5, 7, 9, 9, 11], S=[0, 12]. -/
def code_7525 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7525_ok : code_7525.OK := by native_decide
/-- Code #7525 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7525_qec :
    ∃ ψ, SS.IsAmplitudes code_7525 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7525 code_7525_ok (by decide) (by decide)

/-- Catalogue code #7526: ((6,2,2)), m=13, a=[3, 5, 7, 10, 11, 11], S=[0, 4]. -/
def code_7526 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7526_ok : code_7526.OK := by native_decide
/-- Code #7526 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7526_qec :
    ∃ ψ, SS.IsAmplitudes code_7526 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7526 code_7526_ok (by decide) (by decide)

/-- Catalogue code #7527: ((6,2,2)), m=13, a=[3, 5, 7, 10, 11, 11], S=[0, 9]. -/
def code_7527 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7527_ok : code_7527.OK := by native_decide
/-- Code #7527 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7527_qec :
    ∃ ψ, SS.IsAmplitudes code_7527 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7527 code_7527_ok (by decide) (by decide)

/-- Catalogue code #7528: ((6,2,2)), m=13, a=[3, 5, 7, 10, 11, 11], S=[0, 12]. -/
def code_7528 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7528_ok : code_7528.OK := by native_decide
/-- Code #7528 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7528_qec :
    ∃ ψ, SS.IsAmplitudes code_7528 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7528 code_7528_ok (by decide) (by decide)

/-- Catalogue code #7529: ((6,2,2)), m=13, a=[3, 5, 7, 10, 12, 12], S=[0, 2]. -/
def code_7529 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7529_ok : code_7529.OK := by native_decide
/-- Code #7529 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7529_qec :
    ∃ ψ, SS.IsAmplitudes code_7529 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7529 code_7529_ok (by decide) (by decide)

/-- Catalogue code #7530: ((6,2,2)), m=13, a=[3, 5, 7, 11, 11, 12], S=[0, 4]. -/
def code_7530 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7530_ok : code_7530.OK := by native_decide
/-- Code #7530 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7530_qec :
    ∃ ψ, SS.IsAmplitudes code_7530 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7530 code_7530_ok (by decide) (by decide)

/-- Catalogue code #7531: ((6,2,2)), m=13, a=[3, 5, 8, 9, 9, 10], S=[0, 7]. -/
def code_7531 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7531_ok : code_7531.OK := by native_decide
/-- Code #7531 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7531_qec :
    ∃ ψ, SS.IsAmplitudes code_7531 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7531 code_7531_ok (by decide) (by decide)

/-- Catalogue code #7532: ((6,2,2)), m=13, a=[3, 5, 8, 9, 11, 11], S=[0, 12]. -/
def code_7532 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7532_ok : code_7532.OK := by native_decide
/-- Code #7532 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7532_qec :
    ∃ ψ, SS.IsAmplitudes code_7532 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7532 code_7532_ok (by decide) (by decide)

/-- Catalogue code #7533: ((6,2,2)), m=13, a=[3, 5, 9, 9, 10, 11], S=[0, 6]. -/
def code_7533 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7533_ok : code_7533.OK := by native_decide
/-- Code #7533 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7533_qec :
    ∃ ψ, SS.IsAmplitudes code_7533 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7533 code_7533_ok (by decide) (by decide)

/-- Catalogue code #7534: ((6,2,2)), m=13, a=[3, 5, 9, 9, 10, 11], S=[0, 7]. -/
def code_7534 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7534_ok : code_7534.OK := by native_decide
/-- Code #7534 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7534_qec :
    ∃ ψ, SS.IsAmplitudes code_7534 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7534 code_7534_ok (by decide) (by decide)

/-- Catalogue code #7535: ((6,2,2)), m=13, a=[3, 5, 9, 9, 10, 12], S=[0, 7]. -/
def code_7535 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7535_ok : code_7535.OK := by native_decide
/-- Code #7535 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7535_qec :
    ∃ ψ, SS.IsAmplitudes code_7535 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7535 code_7535_ok (by decide) (by decide)

/-- Catalogue code #7536: ((6,2,2)), m=13, a=[3, 5, 9, 9, 11, 11], S=[0, 1]. -/
def code_7536 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7536_ok : code_7536.OK := by native_decide
/-- Code #7536 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7536_qec :
    ∃ ψ, SS.IsAmplitudes code_7536 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7536 code_7536_ok (by decide) (by decide)

/-- Catalogue code #7537: ((6,2,2)), m=13, a=[3, 5, 9, 9, 11, 11], S=[0, 6]. -/
def code_7537 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7537_ok : code_7537.OK := by native_decide
/-- Code #7537 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7537_qec :
    ∃ ψ, SS.IsAmplitudes code_7537 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7537 code_7537_ok (by decide) (by decide)

/-- Catalogue code #7538: ((6,2,2)), m=13, a=[3, 5, 9, 9, 11, 12], S=[0, 7]. -/
def code_7538 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7538_ok : code_7538.OK := by native_decide
/-- Code #7538 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7538_qec :
    ∃ ψ, SS.IsAmplitudes code_7538 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7538 code_7538_ok (by decide) (by decide)

/-- Catalogue code #7539: ((6,2,2)), m=13, a=[3, 5, 9, 10, 11, 11], S=[0, 6]. -/
def code_7539 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7539_ok : code_7539.OK := by native_decide
/-- Code #7539 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7539_qec :
    ∃ ψ, SS.IsAmplitudes code_7539 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7539 code_7539_ok (by decide) (by decide)

/-- Catalogue code #7540: ((6,2,2)), m=13, a=[3, 5, 9, 10, 11, 12], S=[0, 7]. -/
def code_7540 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7540_ok : code_7540.OK := by native_decide
/-- Code #7540 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7540_qec :
    ∃ ψ, SS.IsAmplitudes code_7540 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7540 code_7540_ok (by decide) (by decide)

/-- Catalogue code #7541: ((6,2,2)), m=13, a=[3, 5, 9, 11, 11, 12], S=[0, 6]. -/
def code_7541 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7541_ok : code_7541.OK := by native_decide
/-- Code #7541 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7541_qec :
    ∃ ψ, SS.IsAmplitudes code_7541 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7541 code_7541_ok (by decide) (by decide)

/-- Catalogue code #7542: ((6,2,2)), m=13, a=[3, 5, 10, 11, 12, 12], S=[0, 7]. -/
def code_7542 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7542_ok : code_7542.OK := by native_decide
/-- Code #7542 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7542_qec :
    ∃ ψ, SS.IsAmplitudes code_7542 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7542 code_7542_ok (by decide) (by decide)

/-- Catalogue code #7543: ((6,2,2)), m=13, a=[3, 5, 10, 12, 12, 12], S=[0, 7]. -/
def code_7543 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7543_ok : code_7543.OK := by native_decide
/-- Code #7543 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7543_qec :
    ∃ ψ, SS.IsAmplitudes code_7543 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7543 code_7543_ok (by decide) (by decide)

/-- Catalogue code #7544: ((6,2,2)), m=13, a=[3, 6, 6, 6, 10, 11], S=[0, 8]. -/
def code_7544 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7544_ok : code_7544.OK := by native_decide
/-- Code #7544 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7544_qec :
    ∃ ψ, SS.IsAmplitudes code_7544 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7544 code_7544_ok (by decide) (by decide)

/-- Catalogue code #7545: ((6,2,2)), m=13, a=[3, 6, 6, 8, 8, 9], S=[0, 12]. -/
def code_7545 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7545_ok : code_7545.OK := by native_decide
/-- Code #7545 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7545_qec :
    ∃ ψ, SS.IsAmplitudes code_7545 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7545 code_7545_ok (by decide) (by decide)

/-- Catalogue code #7546: ((6,2,2)), m=13, a=[3, 6, 6, 8, 9, 11], S=[0, 12]. -/
def code_7546 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7546_ok : code_7546.OK := by native_decide
/-- Code #7546 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7546_qec :
    ∃ ψ, SS.IsAmplitudes code_7546 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7546 code_7546_ok (by decide) (by decide)

/-- Catalogue code #7547: ((6,2,2)), m=13, a=[3, 6, 6, 8, 11, 12], S=[0, 9]. -/
def code_7547 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7547_ok : code_7547.OK := by native_decide
/-- Code #7547 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7547_qec :
    ∃ ψ, SS.IsAmplitudes code_7547 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7547 code_7547_ok (by decide) (by decide)

/-- Catalogue code #7548: ((6,2,2)), m=13, a=[3, 6, 6, 8, 12, 12], S=[0, 11]. -/
def code_7548 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7548_ok : code_7548.OK := by native_decide
/-- Code #7548 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7548_qec :
    ∃ ψ, SS.IsAmplitudes code_7548 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7548 code_7548_ok (by decide) (by decide)

/-- Catalogue code #7549: ((6,2,2)), m=13, a=[3, 6, 6, 10, 11, 11], S=[0, 9]. -/
def code_7549 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7549_ok : code_7549.OK := by native_decide
/-- Code #7549 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7549_qec :
    ∃ ψ, SS.IsAmplitudes code_7549 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7549 code_7549_ok (by decide) (by decide)

/-- Catalogue code #7550: ((6,2,2)), m=13, a=[3, 6, 6, 10, 11, 12], S=[0, 8]. -/
def code_7550 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7550_ok : code_7550.OK := by native_decide
/-- Code #7550 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7550_qec :
    ∃ ψ, SS.IsAmplitudes code_7550 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7550 code_7550_ok (by decide) (by decide)

/-- Catalogue code #7551: ((6,2,2)), m=13, a=[3, 6, 6, 10, 12, 12], S=[0, 2]. -/
def code_7551 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7551_ok : code_7551.OK := by native_decide
/-- Code #7551 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7551_qec :
    ∃ ψ, SS.IsAmplitudes code_7551 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7551 code_7551_ok (by decide) (by decide)

/-- Catalogue code #7552: ((6,2,2)), m=13, a=[3, 6, 6, 10, 12, 12], S=[0, 8]. -/
def code_7552 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7552_ok : code_7552.OK := by native_decide
/-- Code #7552 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7552_qec :
    ∃ ψ, SS.IsAmplitudes code_7552 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7552 code_7552_ok (by decide) (by decide)

/-- Catalogue code #7553: ((6,2,2)), m=13, a=[3, 6, 6, 11, 12, 12], S=[0, 8]. -/
def code_7553 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7553_ok : code_7553.OK := by native_decide
/-- Code #7553 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7553_qec :
    ∃ ψ, SS.IsAmplitudes code_7553 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7553 code_7553_ok (by decide) (by decide)

/-- Catalogue code #7554: ((6,2,2)), m=13, a=[3, 6, 7, 7, 8, 8], S=[0, 4]. -/
def code_7554 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7554_ok : code_7554.OK := by native_decide
/-- Code #7554 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7554_qec :
    ∃ ψ, SS.IsAmplitudes code_7554 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7554 code_7554_ok (by decide) (by decide)

/-- Catalogue code #7555: ((6,2,2)), m=13, a=[3, 6, 7, 8, 8, 9], S=[0, 12]. -/
def code_7555 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7555_ok : code_7555.OK := by native_decide
/-- Code #7555 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7555_qec :
    ∃ ψ, SS.IsAmplitudes code_7555 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7555 code_7555_ok (by decide) (by decide)

/-- Catalogue code #7556: ((6,2,2)), m=13, a=[3, 6, 7, 8, 8, 10], S=[0, 4]. -/
def code_7556 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7556_ok : code_7556.OK := by native_decide
/-- Code #7556 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7556_qec :
    ∃ ψ, SS.IsAmplitudes code_7556 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7556 code_7556_ok (by decide) (by decide)

/-- Catalogue code #7557: ((6,2,2)), m=13, a=[3, 6, 7, 8, 8, 10], S=[0, 12]. -/
def code_7557 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7557_ok : code_7557.OK := by native_decide
/-- Code #7557 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7557_qec :
    ∃ ψ, SS.IsAmplitudes code_7557 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7557 code_7557_ok (by decide) (by decide)

/-- Catalogue code #7558: ((6,2,2)), m=13, a=[3, 6, 7, 8, 9, 9], S=[0, 1]. -/
def code_7558 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7558_ok : code_7558.OK := by native_decide
/-- Code #7558 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7558_qec :
    ∃ ψ, SS.IsAmplitudes code_7558 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7558 code_7558_ok (by decide) (by decide)

/-- Catalogue code #7559: ((6,2,2)), m=13, a=[3, 6, 7, 8, 9, 9], S=[0, 2]. -/
def code_7559 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7559_ok : code_7559.OK := by native_decide
/-- Code #7559 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7559_qec :
    ∃ ψ, SS.IsAmplitudes code_7559 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7559 code_7559_ok (by decide) (by decide)

/-- Catalogue code #7560: ((6,2,2)), m=13, a=[3, 6, 7, 8, 9, 10], S=[0, 12]. -/
def code_7560 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7560_ok : code_7560.OK := by native_decide
/-- Code #7560 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7560_qec :
    ∃ ψ, SS.IsAmplitudes code_7560 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7560 code_7560_ok (by decide) (by decide)

/-- Catalogue code #7561: ((6,2,2)), m=13, a=[3, 6, 7, 8, 9, 11], S=[0, 1]. -/
def code_7561 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7561_ok : code_7561.OK := by native_decide
/-- Code #7561 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7561_qec :
    ∃ ψ, SS.IsAmplitudes code_7561 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7561 code_7561_ok (by decide) (by decide)

/-- Catalogue code #7562: ((6,2,2)), m=13, a=[3, 6, 7, 8, 9, 12], S=[0, 2]. -/
def code_7562 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7562_ok : code_7562.OK := by native_decide
/-- Code #7562 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7562_qec :
    ∃ ψ, SS.IsAmplitudes code_7562 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7562 code_7562_ok (by decide) (by decide)

/-- Catalogue code #7563: ((6,2,2)), m=13, a=[3, 6, 7, 8, 11, 12], S=[0, 4]. -/
def code_7563 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7563_ok : code_7563.OK := by native_decide
/-- Code #7563 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7563_qec :
    ∃ ψ, SS.IsAmplitudes code_7563 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7563 code_7563_ok (by decide) (by decide)

/-- Catalogue code #7564: ((6,2,2)), m=13, a=[3, 6, 7, 9, 9, 11], S=[0, 1]. -/
def code_7564 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7564_ok : code_7564.OK := by native_decide
/-- Code #7564 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7564_qec :
    ∃ ψ, SS.IsAmplitudes code_7564 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7564 code_7564_ok (by decide) (by decide)

/-- Catalogue code #7565: ((6,2,2)), m=13, a=[3, 6, 7, 9, 9, 11], S=[0, 5]. -/
def code_7565 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7565_ok : code_7565.OK := by native_decide
/-- Code #7565 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7565_qec :
    ∃ ψ, SS.IsAmplitudes code_7565 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7565 code_7565_ok (by decide) (by decide)

/-- Catalogue code #7566: ((6,2,2)), m=13, a=[3, 6, 7, 9, 9, 12], S=[0, 2]. -/
def code_7566 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7566_ok : code_7566.OK := by native_decide
/-- Code #7566 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7566_qec :
    ∃ ψ, SS.IsAmplitudes code_7566 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7566 code_7566_ok (by decide) (by decide)

/-- Catalogue code #7567: ((6,2,2)), m=13, a=[3, 6, 7, 9, 9, 12], S=[0, 5]. -/
def code_7567 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7567_ok : code_7567.OK := by native_decide
/-- Code #7567 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7567_qec :
    ∃ ψ, SS.IsAmplitudes code_7567 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7567 code_7567_ok (by decide) (by decide)

/-- Catalogue code #7568: ((6,2,2)), m=13, a=[3, 6, 8, 8, 9, 11], S=[0, 12]. -/
def code_7568 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7568_ok : code_7568.OK := by native_decide
/-- Code #7568 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7568_qec :
    ∃ ψ, SS.IsAmplitudes code_7568 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7568 code_7568_ok (by decide) (by decide)

/-- Catalogue code #7569: ((6,2,2)), m=13, a=[3, 6, 8, 9, 9, 10], S=[0, 11]. -/
def code_7569 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_7569_ok : code_7569.OK := by native_decide
/-- Code #7569 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7569_qec :
    ∃ ψ, SS.IsAmplitudes code_7569 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7569 code_7569_ok (by decide) (by decide)

/-- Catalogue code #7570: ((6,2,2)), m=13, a=[3, 6, 8, 9, 9, 11], S=[0, 1]. -/
def code_7570 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7570_ok : code_7570.OK := by native_decide
/-- Code #7570 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7570_qec :
    ∃ ψ, SS.IsAmplitudes code_7570 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7570 code_7570_ok (by decide) (by decide)

/-- Catalogue code #7571: ((6,2,2)), m=13, a=[3, 6, 8, 9, 9, 12], S=[0, 2]. -/
def code_7571 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7571_ok : code_7571.OK := by native_decide
/-- Code #7571 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7571_qec :
    ∃ ψ, SS.IsAmplitudes code_7571 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7571 code_7571_ok (by decide) (by decide)

/-- Catalogue code #7572: ((6,2,2)), m=13, a=[3, 6, 8, 9, 10, 12], S=[0, 11]. -/
def code_7572 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7572_ok : code_7572.OK := by native_decide
/-- Code #7572 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7572_qec :
    ∃ ψ, SS.IsAmplitudes code_7572 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7572 code_7572_ok (by decide) (by decide)

/-- Catalogue code #7573: ((6,2,2)), m=13, a=[3, 6, 8, 9, 11, 11], S=[0, 12]. -/
def code_7573 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7573_ok : code_7573.OK := by native_decide
/-- Code #7573 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7573_qec :
    ∃ ψ, SS.IsAmplitudes code_7573 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7573 code_7573_ok (by decide) (by decide)

/-- Catalogue code #7574: ((6,2,2)), m=13, a=[3, 6, 8, 9, 12, 12], S=[0, 2]. -/
def code_7574 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7574_ok : code_7574.OK := by native_decide
/-- Code #7574 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7574_qec :
    ∃ ψ, SS.IsAmplitudes code_7574 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7574 code_7574_ok (by decide) (by decide)

/-- Catalogue code #7575: ((6,2,2)), m=13, a=[3, 6, 8, 10, 11, 11], S=[0, 1]. -/
def code_7575 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7575_ok : code_7575.OK := by native_decide
/-- Code #7575 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7575_qec :
    ∃ ψ, SS.IsAmplitudes code_7575 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7575 code_7575_ok (by decide) (by decide)

/-- Catalogue code #7576: ((6,2,2)), m=13, a=[3, 6, 8, 10, 11, 11], S=[0, 9]. -/
def code_7576 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7576_ok : code_7576.OK := by native_decide
/-- Code #7576 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7576_qec :
    ∃ ψ, SS.IsAmplitudes code_7576 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7576 code_7576_ok (by decide) (by decide)

/-- Catalogue code #7577: ((6,2,2)), m=13, a=[3, 6, 8, 10, 11, 12], S=[0, 9]. -/
def code_7577 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7577_ok : code_7577.OK := by native_decide
/-- Code #7577 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7577_qec :
    ∃ ψ, SS.IsAmplitudes code_7577 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7577 code_7577_ok (by decide) (by decide)

/-- Catalogue code #7578: ((6,2,2)), m=13, a=[3, 6, 8, 11, 11, 12], S=[0, 4]. -/
def code_7578 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7578_ok : code_7578.OK := by native_decide
/-- Code #7578 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7578_qec :
    ∃ ψ, SS.IsAmplitudes code_7578 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7578 code_7578_ok (by decide) (by decide)

/-- Catalogue code #7579: ((6,2,2)), m=13, a=[3, 6, 8, 11, 11, 12], S=[0, 9]. -/
def code_7579 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7579_ok : code_7579.OK := by native_decide
/-- Code #7579 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7579_qec :
    ∃ ψ, SS.IsAmplitudes code_7579 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7579 code_7579_ok (by decide) (by decide)

/-- Catalogue code #7580: ((6,2,2)), m=13, a=[3, 6, 8, 11, 12, 12], S=[0, 4]. -/
def code_7580 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7580_ok : code_7580.OK := by native_decide
/-- Code #7580 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7580_qec :
    ∃ ψ, SS.IsAmplitudes code_7580 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7580 code_7580_ok (by decide) (by decide)

/-- Catalogue code #7581: ((6,2,2)), m=13, a=[3, 6, 9, 9, 10, 11], S=[0, 8]. -/
def code_7581 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7581_ok : code_7581.OK := by native_decide
/-- Code #7581 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7581_qec :
    ∃ ψ, SS.IsAmplitudes code_7581 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7581 code_7581_ok (by decide) (by decide)

/-- Catalogue code #7582: ((6,2,2)), m=13, a=[3, 6, 9, 9, 10, 12], S=[0, 8]. -/
def code_7582 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7582_ok : code_7582.OK := by native_decide
/-- Code #7582 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7582_qec :
    ∃ ψ, SS.IsAmplitudes code_7582 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7582 code_7582_ok (by decide) (by decide)

/-- Catalogue code #7583: ((6,2,2)), m=13, a=[3, 6, 9, 9, 11, 12], S=[0, 5]. -/
def code_7583 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7583_ok : code_7583.OK := by native_decide
/-- Code #7583 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7583_qec :
    ∃ ψ, SS.IsAmplitudes code_7583 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7583 code_7583_ok (by decide) (by decide)

/-- Catalogue code #7584: ((6,2,2)), m=13, a=[3, 6, 9, 9, 11, 12], S=[0, 8]. -/
def code_7584 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7584_ok : code_7584.OK := by native_decide
/-- Code #7584 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7584_qec :
    ∃ ψ, SS.IsAmplitudes code_7584 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7584 code_7584_ok (by decide) (by decide)

/-- Catalogue code #7585: ((6,2,2)), m=13, a=[3, 6, 9, 10, 11, 12], S=[0, 8]. -/
def code_7585 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7585_ok : code_7585.OK := by native_decide
/-- Code #7585 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7585_qec :
    ∃ ψ, SS.IsAmplitudes code_7585 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7585 code_7585_ok (by decide) (by decide)

/-- Catalogue code #7586: ((6,2,2)), m=13, a=[3, 6, 9, 11, 11, 12], S=[0, 5]. -/
def code_7586 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7586_ok : code_7586.OK := by native_decide
/-- Code #7586 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7586_qec :
    ∃ ψ, SS.IsAmplitudes code_7586 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7586 code_7586_ok (by decide) (by decide)

/-- Catalogue code #7587: ((6,2,2)), m=13, a=[3, 6, 9, 11, 12, 12], S=[0, 5]. -/
def code_7587 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7587_ok : code_7587.OK := by native_decide
/-- Code #7587 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7587_qec :
    ∃ ψ, SS.IsAmplitudes code_7587 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7587 code_7587_ok (by decide) (by decide)

/-- Catalogue code #7588: ((6,2,2)), m=13, a=[3, 6, 10, 11, 11, 12], S=[0, 5]. -/
def code_7588 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-11 : ℚ) / 13)]
theorem code_7588_ok : code_7588.OK := by native_decide
/-- Code #7588 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7588_qec :
    ∃ ψ, SS.IsAmplitudes code_7588 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7588 code_7588_ok (by decide) (by decide)

/-- Catalogue code #7589: ((6,2,2)), m=13, a=[3, 6, 10, 11, 11, 12], S=[0, 9]. -/
def code_7589 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7589_ok : code_7589.OK := by native_decide
/-- Code #7589 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7589_qec :
    ∃ ψ, SS.IsAmplitudes code_7589 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7589 code_7589_ok (by decide) (by decide)

/-- Catalogue code #7590: ((6,2,2)), m=13, a=[3, 6, 10, 11, 12, 12], S=[0, 8]. -/
def code_7590 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7590_ok : code_7590.OK := by native_decide
/-- Code #7590 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7590_qec :
    ∃ ψ, SS.IsAmplitudes code_7590 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7590 code_7590_ok (by decide) (by decide)

/-- Catalogue code #7591: ((6,2,2)), m=13, a=[3, 6, 10, 12, 12, 12], S=[0, 8]. -/
def code_7591 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7591_ok : code_7591.OK := by native_decide
/-- Code #7591 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7591_qec :
    ∃ ψ, SS.IsAmplitudes code_7591 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7591 code_7591_ok (by decide) (by decide)

/-- Catalogue code #7592: ((6,2,2)), m=13, a=[3, 6, 11, 11, 12, 12], S=[0, 9]. -/
def code_7592 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7592_ok : code_7592.OK := by native_decide
/-- Code #7592 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7592_qec :
    ∃ ψ, SS.IsAmplitudes code_7592 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7592 code_7592_ok (by decide) (by decide)

/-- Catalogue code #7593: ((6,2,2)), m=13, a=[3, 7, 7, 8, 8, 9], S=[0, 1]. -/
def code_7593 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7593_ok : code_7593.OK := by native_decide
/-- Code #7593 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7593_qec :
    ∃ ψ, SS.IsAmplitudes code_7593 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7593 code_7593_ok (by decide) (by decide)

/-- Catalogue code #7594: ((6,2,2)), m=13, a=[3, 7, 7, 8, 8, 9], S=[0, 12]. -/
def code_7594 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7594_ok : code_7594.OK := by native_decide
/-- Code #7594 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7594_qec :
    ∃ ψ, SS.IsAmplitudes code_7594 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7594 code_7594_ok (by decide) (by decide)

/-- Catalogue code #7595: ((6,2,2)), m=13, a=[3, 7, 7, 8, 8, 11], S=[0, 1]. -/
def code_7595 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7595_ok : code_7595.OK := by native_decide
/-- Code #7595 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7595_qec :
    ∃ ψ, SS.IsAmplitudes code_7595 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7595 code_7595_ok (by decide) (by decide)

/-- Catalogue code #7596: ((6,2,2)), m=13, a=[3, 7, 7, 8, 8, 12], S=[0, 9]. -/
def code_7596 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7596_ok : code_7596.OK := by native_decide
/-- Code #7596 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7596_qec :
    ∃ ψ, SS.IsAmplitudes code_7596 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7596 code_7596_ok (by decide) (by decide)

/-- Catalogue code #7597: ((6,2,2)), m=13, a=[3, 7, 7, 8, 9, 9], S=[0, 12]. -/
def code_7597 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7597_ok : code_7597.OK := by native_decide
/-- Code #7597 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7597_qec :
    ∃ ψ, SS.IsAmplitudes code_7597 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7597 code_7597_ok (by decide) (by decide)

/-- Catalogue code #7598: ((6,2,2)), m=13, a=[3, 7, 7, 8, 9, 11], S=[0, 1]. -/
def code_7598 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7598_ok : code_7598.OK := by native_decide
/-- Code #7598 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7598_qec :
    ∃ ψ, SS.IsAmplitudes code_7598 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7598 code_7598_ok (by decide) (by decide)

/-- Catalogue code #7599: ((6,2,2)), m=13, a=[3, 7, 7, 8, 9, 12], S=[0, 11]. -/
def code_7599 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7599_ok : code_7599.OK := by native_decide
/-- Code #7599 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7599_qec :
    ∃ ψ, SS.IsAmplitudes code_7599 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7599 code_7599_ok (by decide) (by decide)

/-- Catalogue code #7600: ((6,2,2)), m=13, a=[3, 7, 7, 8, 11, 11], S=[0, 9]. -/
def code_7600 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7600_ok : code_7600.OK := by native_decide
/-- Code #7600 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7600_qec :
    ∃ ψ, SS.IsAmplitudes code_7600 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7600 code_7600_ok (by decide) (by decide)

/-- Catalogue code #7601: ((6,2,2)), m=13, a=[3, 7, 7, 8, 11, 11], S=[0, 12]. -/
def code_7601 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7601_ok : code_7601.OK := by native_decide
/-- Code #7601 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7601_qec :
    ∃ ψ, SS.IsAmplitudes code_7601 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7601 code_7601_ok (by decide) (by decide)

/-- Catalogue code #7602: ((6,2,2)), m=13, a=[3, 7, 7, 9, 9, 11], S=[0, 8]. -/
def code_7602 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7602_ok : code_7602.OK := by native_decide
/-- Code #7602 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7602_qec :
    ∃ ψ, SS.IsAmplitudes code_7602 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7602 code_7602_ok (by decide) (by decide)

/-- Catalogue code #7603: ((6,2,2)), m=13, a=[3, 7, 7, 9, 10, 12], S=[0, 11]. -/
def code_7603 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7603_ok : code_7603.OK := by native_decide
/-- Code #7603 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7603_qec :
    ∃ ψ, SS.IsAmplitudes code_7603 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7603 code_7603_ok (by decide) (by decide)

/-- Catalogue code #7604: ((6,2,2)), m=13, a=[3, 7, 7, 9, 11, 11], S=[0, 1]. -/
def code_7604 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7604_ok : code_7604.OK := by native_decide
/-- Code #7604 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7604_qec :
    ∃ ψ, SS.IsAmplitudes code_7604 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7604 code_7604_ok (by decide) (by decide)

/-- Catalogue code #7605: ((6,2,2)), m=13, a=[3, 7, 7, 9, 11, 12], S=[0, 5]. -/
def code_7605 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7605_ok : code_7605.OK := by native_decide
/-- Code #7605 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7605_qec :
    ∃ ψ, SS.IsAmplitudes code_7605 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7605 code_7605_ok (by decide) (by decide)

/-- Catalogue code #7606: ((6,2,2)), m=13, a=[3, 7, 7, 10, 11, 11], S=[0, 9]. -/
def code_7606 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7606_ok : code_7606.OK := by native_decide
/-- Code #7606 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7606_qec :
    ∃ ψ, SS.IsAmplitudes code_7606 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7606 code_7606_ok (by decide) (by decide)

/-- Catalogue code #7607: ((6,2,2)), m=13, a=[3, 7, 7, 10, 11, 11], S=[0, 12]. -/
def code_7607 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7607_ok : code_7607.OK := by native_decide
/-- Code #7607 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7607_qec :
    ∃ ψ, SS.IsAmplitudes code_7607 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7607 code_7607_ok (by decide) (by decide)

/-- Catalogue code #7608: ((6,2,2)), m=13, a=[3, 7, 7, 10, 11, 12], S=[0, 9]. -/
def code_7608 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7608_ok : code_7608.OK := by native_decide
/-- Code #7608 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7608_qec :
    ∃ ψ, SS.IsAmplitudes code_7608 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7608 code_7608_ok (by decide) (by decide)

/-- Catalogue code #7609: ((6,2,2)), m=13, a=[3, 7, 7, 11, 11, 11], S=[0, 1]. -/
def code_7609 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7609_ok : code_7609.OK := by native_decide
/-- Code #7609 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7609_qec :
    ∃ ψ, SS.IsAmplitudes code_7609 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7609 code_7609_ok (by decide) (by decide)

/-- Catalogue code #7610: ((6,2,2)), m=13, a=[3, 7, 7, 11, 11, 12], S=[0, 4]. -/
def code_7610 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7610_ok : code_7610.OK := by native_decide
/-- Code #7610 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7610_qec :
    ∃ ψ, SS.IsAmplitudes code_7610 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7610 code_7610_ok (by decide) (by decide)

/-- Catalogue code #7611: ((6,2,2)), m=13, a=[3, 7, 7, 11, 11, 12], S=[0, 9]. -/
def code_7611 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7611_ok : code_7611.OK := by native_decide
/-- Code #7611 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7611_qec :
    ∃ ψ, SS.IsAmplitudes code_7611 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7611 code_7611_ok (by decide) (by decide)

/-- Catalogue code #7612: ((6,2,2)), m=13, a=[3, 7, 8, 8, 9, 9], S=[0, 2]. -/
def code_7612 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7612_ok : code_7612.OK := by native_decide
/-- Code #7612 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7612_qec :
    ∃ ψ, SS.IsAmplitudes code_7612 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7612 code_7612_ok (by decide) (by decide)

/-- Catalogue code #7613: ((6,2,2)), m=13, a=[3, 7, 8, 8, 9, 9], S=[0, 12]. -/
def code_7613 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7613_ok : code_7613.OK := by native_decide
/-- Code #7613 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7613_qec :
    ∃ ψ, SS.IsAmplitudes code_7613 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7613 code_7613_ok (by decide) (by decide)

/-- Catalogue code #7614: ((6,2,2)), m=13, a=[3, 7, 8, 8, 9, 10], S=[0, 2]. -/
def code_7614 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7614_ok : code_7614.OK := by native_decide
/-- Code #7614 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7614_qec :
    ∃ ψ, SS.IsAmplitudes code_7614 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7614 code_7614_ok (by decide) (by decide)

/-- Catalogue code #7615: ((6,2,2)), m=13, a=[3, 7, 8, 8, 9, 10], S=[0, 12]. -/
def code_7615 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7615_ok : code_7615.OK := by native_decide
/-- Code #7615 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7615_qec :
    ∃ ψ, SS.IsAmplitudes code_7615 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7615 code_7615_ok (by decide) (by decide)

/-- Catalogue code #7616: ((6,2,2)), m=13, a=[3, 7, 8, 8, 9, 11], S=[0, 1]. -/
def code_7616 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7616_ok : code_7616.OK := by native_decide
/-- Code #7616 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7616_qec :
    ∃ ψ, SS.IsAmplitudes code_7616 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7616 code_7616_ok (by decide) (by decide)

/-- Catalogue code #7617: ((6,2,2)), m=13, a=[3, 7, 8, 8, 10, 11], S=[0, 4]. -/
def code_7617 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7617_ok : code_7617.OK := by native_decide
/-- Code #7617 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7617_qec :
    ∃ ψ, SS.IsAmplitudes code_7617 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7617 code_7617_ok (by decide) (by decide)

/-- Catalogue code #7618: ((6,2,2)), m=13, a=[3, 7, 8, 8, 12, 12], S=[0, 9]. -/
def code_7618 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-11 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7618_ok : code_7618.OK := by native_decide
/-- Code #7618 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7618_qec :
    ∃ ψ, SS.IsAmplitudes code_7618 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7618 code_7618_ok (by decide) (by decide)

/-- Catalogue code #7619: ((6,2,2)), m=13, a=[3, 7, 8, 9, 9, 10], S=[0, 2]. -/
def code_7619 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7619_ok : code_7619.OK := by native_decide
/-- Code #7619 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7619_qec :
    ∃ ψ, SS.IsAmplitudes code_7619 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7619 code_7619_ok (by decide) (by decide)

/-- Catalogue code #7620: ((6,2,2)), m=13, a=[3, 7, 8, 9, 9, 11], S=[0, 1]. -/
def code_7620 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7620_ok : code_7620.OK := by native_decide
/-- Code #7620 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7620_qec :
    ∃ ψ, SS.IsAmplitudes code_7620 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7620 code_7620_ok (by decide) (by decide)

/-- Catalogue code #7621: ((6,2,2)), m=13, a=[3, 7, 8, 9, 9, 12], S=[0, 2]. -/
def code_7621 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7621_ok : code_7621.OK := by native_decide
/-- Code #7621 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7621_qec :
    ∃ ψ, SS.IsAmplitudes code_7621 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7621 code_7621_ok (by decide) (by decide)

/-- Catalogue code #7622: ((6,2,2)), m=13, a=[3, 7, 8, 9, 10, 12], S=[0, 11]. -/
def code_7622 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7622_ok : code_7622.OK := by native_decide
/-- Code #7622 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7622_qec :
    ∃ ψ, SS.IsAmplitudes code_7622 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7622 code_7622_ok (by decide) (by decide)

/-- Catalogue code #7623: ((6,2,2)), m=13, a=[3, 7, 8, 9, 12, 12], S=[0, 2]. -/
def code_7623 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7623_ok : code_7623.OK := by native_decide
/-- Code #7623 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7623_qec :
    ∃ ψ, SS.IsAmplitudes code_7623 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7623 code_7623_ok (by decide) (by decide)

/-- Catalogue code #7624: ((6,2,2)), m=13, a=[3, 7, 8, 11, 12, 12], S=[0, 9]. -/
def code_7624 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7624_ok : code_7624.OK := by native_decide
/-- Code #7624 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7624_qec :
    ∃ ψ, SS.IsAmplitudes code_7624 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7624 code_7624_ok (by decide) (by decide)

/-- Catalogue code #7625: ((6,2,2)), m=13, a=[3, 7, 9, 9, 10, 11], S=[0, 5]. -/
def code_7625 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7625_ok : code_7625.OK := by native_decide
/-- Code #7625 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7625_qec :
    ∃ ψ, SS.IsAmplitudes code_7625 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7625 code_7625_ok (by decide) (by decide)

/-- Catalogue code #7626: ((6,2,2)), m=13, a=[3, 7, 9, 9, 11, 12], S=[0, 5]. -/
def code_7626 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7626_ok : code_7626.OK := by native_decide
/-- Code #7626 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7626_qec :
    ∃ ψ, SS.IsAmplitudes code_7626 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7626 code_7626_ok (by decide) (by decide)

/-- Catalogue code #7627: ((6,2,2)), m=13, a=[3, 7, 10, 11, 11, 11], S=[0, 4]. -/
def code_7627 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-5 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7627_ok : code_7627.OK := by native_decide
/-- Code #7627 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7627_qec :
    ∃ ψ, SS.IsAmplitudes code_7627 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7627 code_7627_ok (by decide) (by decide)

/-- Catalogue code #7628: ((6,2,2)), m=13, a=[3, 7, 10, 11, 11, 12], S=[0, 9]. -/
def code_7628 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7628_ok : code_7628.OK := by native_decide
/-- Code #7628 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7628_qec :
    ∃ ψ, SS.IsAmplitudes code_7628 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7628 code_7628_ok (by decide) (by decide)

/-- Catalogue code #7629: ((6,2,2)), m=13, a=[3, 7, 10, 11, 12, 12], S=[0, 8]. -/
def code_7629 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7629_ok : code_7629.OK := by native_decide
/-- Code #7629 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7629_qec :
    ∃ ψ, SS.IsAmplitudes code_7629 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7629 code_7629_ok (by decide) (by decide)

/-- Catalogue code #7630: ((6,2,2)), m=13, a=[3, 8, 8, 9, 9, 10], S=[0, 2]. -/
def code_7630 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7630_ok : code_7630.OK := by native_decide
/-- Code #7630 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7630_qec :
    ∃ ψ, SS.IsAmplitudes code_7630 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7630 code_7630_ok (by decide) (by decide)

/-- Catalogue code #7631: ((6,2,2)), m=13, a=[3, 8, 8, 9, 9, 10], S=[0, 6]. -/
def code_7631 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7631_ok : code_7631.OK := by native_decide
/-- Code #7631 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7631_qec :
    ∃ ψ, SS.IsAmplitudes code_7631 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7631 code_7631_ok (by decide) (by decide)

/-- Catalogue code #7632: ((6,2,2)), m=13, a=[3, 8, 8, 9, 9, 11], S=[0, 6]. -/
def code_7632 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7632_ok : code_7632.OK := by native_decide
/-- Code #7632 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7632_qec :
    ∃ ψ, SS.IsAmplitudes code_7632 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7632 code_7632_ok (by decide) (by decide)

/-- Catalogue code #7633: ((6,2,2)), m=13, a=[3, 8, 8, 9, 10, 11], S=[0, 6]. -/
def code_7633 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7633_ok : code_7633.OK := by native_decide
/-- Code #7633 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7633_qec :
    ∃ ψ, SS.IsAmplitudes code_7633 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7633 code_7633_ok (by decide) (by decide)

/-- Catalogue code #7634: ((6,2,2)), m=13, a=[3, 8, 8, 9, 11, 11], S=[0, 12]. -/
def code_7634 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7634_ok : code_7634.OK := by native_decide
/-- Code #7634 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7634_qec :
    ∃ ψ, SS.IsAmplitudes code_7634 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7634 code_7634_ok (by decide) (by decide)

/-- Catalogue code #7635: ((6,2,2)), m=13, a=[3, 8, 8, 9, 11, 12], S=[0, 6]. -/
def code_7635 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7635_ok : code_7635.OK := by native_decide
/-- Code #7635 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7635_qec :
    ∃ ψ, SS.IsAmplitudes code_7635 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7635 code_7635_ok (by decide) (by decide)

/-- Catalogue code #7636: ((6,2,2)), m=13, a=[3, 8, 8, 9, 12, 12], S=[0, 2]. -/
def code_7636 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7636_ok : code_7636.OK := by native_decide
/-- Code #7636 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7636_qec :
    ∃ ψ, SS.IsAmplitudes code_7636 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7636 code_7636_ok (by decide) (by decide)

/-- Catalogue code #7637: ((6,2,2)), m=13, a=[3, 8, 8, 11, 12, 12], S=[0, 6]. -/
def code_7637 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7637_ok : code_7637.OK := by native_decide
/-- Code #7637 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7637_qec :
    ∃ ψ, SS.IsAmplitudes code_7637 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7637 code_7637_ok (by decide) (by decide)

/-- Catalogue code #7638: ((6,2,2)), m=13, a=[3, 8, 8, 11, 12, 12], S=[0, 9]. -/
def code_7638 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7638_ok : code_7638.OK := by native_decide
/-- Code #7638 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7638_qec :
    ∃ ψ, SS.IsAmplitudes code_7638 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7638 code_7638_ok (by decide) (by decide)

/-- Catalogue code #7639: ((6,2,2)), m=13, a=[3, 8, 8, 12, 12, 12], S=[0, 6]. -/
def code_7639 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7639_ok : code_7639.OK := by native_decide
/-- Code #7639 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7639_qec :
    ∃ ψ, SS.IsAmplitudes code_7639 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7639 code_7639_ok (by decide) (by decide)

/-- Catalogue code #7640: ((6,2,2)), m=13, a=[3, 8, 9, 9, 10, 11], S=[0, 6]. -/
def code_7640 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7640_ok : code_7640.OK := by native_decide
/-- Code #7640 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7640_qec :
    ∃ ψ, SS.IsAmplitudes code_7640 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7640 code_7640_ok (by decide) (by decide)

/-- Catalogue code #7641: ((6,2,2)), m=13, a=[3, 8, 9, 9, 11, 12], S=[0, 6]. -/
def code_7641 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7641_ok : code_7641.OK := by native_decide
/-- Code #7641 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7641_qec :
    ∃ ψ, SS.IsAmplitudes code_7641 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7641 code_7641_ok (by decide) (by decide)

/-- Catalogue code #7642: ((6,2,2)), m=13, a=[3, 8, 9, 11, 12, 12], S=[0, 6]. -/
def code_7642 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7642_ok : code_7642.OK := by native_decide
/-- Code #7642 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7642_qec :
    ∃ ψ, SS.IsAmplitudes code_7642 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7642 code_7642_ok (by decide) (by decide)

/-- Catalogue code #7643: ((6,2,2)), m=13, a=[3, 8, 10, 11, 11, 12], S=[0, 7]. -/
def code_7643 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7643_ok : code_7643.OK := by native_decide
/-- Code #7643 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7643_qec :
    ∃ ψ, SS.IsAmplitudes code_7643 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7643 code_7643_ok (by decide) (by decide)

/-- Catalogue code #7644: ((6,2,2)), m=13, a=[3, 8, 10, 11, 11, 12], S=[0, 9]. -/
def code_7644 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7644_ok : code_7644.OK := by native_decide
/-- Code #7644 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7644_qec :
    ∃ ψ, SS.IsAmplitudes code_7644 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7644 code_7644_ok (by decide) (by decide)

/-- Catalogue code #7645: ((6,2,2)), m=13, a=[3, 9, 9, 10, 11, 11], S=[0, 6]. -/
def code_7645 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7645_ok : code_7645.OK := by native_decide
/-- Code #7645 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7645_qec :
    ∃ ψ, SS.IsAmplitudes code_7645 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7645 code_7645_ok (by decide) (by decide)

/-- Catalogue code #7646: ((6,2,2)), m=13, a=[3, 9, 9, 10, 11, 12], S=[0, 7]. -/
def code_7646 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7646_ok : code_7646.OK := by native_decide
/-- Code #7646 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7646_qec :
    ∃ ψ, SS.IsAmplitudes code_7646 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7646 code_7646_ok (by decide) (by decide)

/-- Catalogue code #7647: ((6,2,2)), m=13, a=[3, 9, 9, 10, 11, 12], S=[0, 8]. -/
def code_7647 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7647_ok : code_7647.OK := by native_decide
/-- Code #7647 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7647_qec :
    ∃ ψ, SS.IsAmplitudes code_7647 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7647 code_7647_ok (by decide) (by decide)

/-- Catalogue code #7648: ((6,2,2)), m=13, a=[3, 9, 10, 11, 11, 11], S=[0, 6]. -/
def code_7648 : ExampleData 6 13 2 where
  a := ![(3 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7648_ok : code_7648.OK := by native_decide
/-- Code #7648 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7648_qec :
    ∃ ψ, SS.IsAmplitudes code_7648 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7648 code_7648_ok (by decide) (by decide)

/-- Catalogue code #7649: ((6,2,2)), m=13, a=[4, 4, 4, 7, 7, 12], S=[0, 11]. -/
def code_7649 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_7649_ok : code_7649.OK := by native_decide
/-- Code #7649 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7649_qec :
    ∃ ψ, SS.IsAmplitudes code_7649 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7649 code_7649_ok (by decide) (by decide)

/-- Catalogue code #7650: ((6,2,2)), m=13, a=[4, 4, 5, 5, 6, 10], S=[0, 1]. -/
def code_7650 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7650_ok : code_7650.OK := by native_decide
/-- Code #7650 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7650_qec :
    ∃ ψ, SS.IsAmplitudes code_7650 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7650 code_7650_ok (by decide) (by decide)

/-- Catalogue code #7651: ((6,2,2)), m=13, a=[4, 4, 5, 5, 6, 10], S=[0, 11]. -/
def code_7651 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7651_ok : code_7651.OK := by native_decide
/-- Code #7651 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7651_qec :
    ∃ ψ, SS.IsAmplitudes code_7651 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7651 code_7651_ok (by decide) (by decide)

/-- Catalogue code #7652: ((6,2,2)), m=13, a=[4, 4, 5, 5, 10, 12], S=[0, 7]. -/
def code_7652 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7652_ok : code_7652.OK := by native_decide
/-- Code #7652 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7652_qec :
    ∃ ψ, SS.IsAmplitudes code_7652 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7652 code_7652_ok (by decide) (by decide)

/-- Catalogue code #7653: ((6,2,2)), m=13, a=[4, 4, 5, 6, 6, 9], S=[0, 1]. -/
def code_7653 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7653_ok : code_7653.OK := by native_decide
/-- Code #7653 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7653_qec :
    ∃ ψ, SS.IsAmplitudes code_7653 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7653 code_7653_ok (by decide) (by decide)

/-- Catalogue code #7654: ((6,2,2)), m=13, a=[4, 4, 5, 6, 6, 10], S=[0, 1]. -/
def code_7654 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7654_ok : code_7654.OK := by native_decide
/-- Code #7654 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7654_qec :
    ∃ ψ, SS.IsAmplitudes code_7654 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7654 code_7654_ok (by decide) (by decide)

/-- Catalogue code #7655: ((6,2,2)), m=13, a=[4, 4, 5, 6, 7, 10], S=[0, 11]. -/
def code_7655 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_7655_ok : code_7655.OK := by native_decide
/-- Code #7655 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7655_qec :
    ∃ ψ, SS.IsAmplitudes code_7655 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7655 code_7655_ok (by decide) (by decide)

/-- Catalogue code #7656: ((6,2,2)), m=13, a=[4, 4, 5, 6, 7, 11], S=[0, 1]. -/
def code_7656 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7656_ok : code_7656.OK := by native_decide
/-- Code #7656 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7656_qec :
    ∃ ψ, SS.IsAmplitudes code_7656 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7656 code_7656_ok (by decide) (by decide)

/-- Catalogue code #7657: ((6,2,2)), m=13, a=[4, 4, 5, 6, 7, 11], S=[0, 10]. -/
def code_7657 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7657_ok : code_7657.OK := by native_decide
/-- Code #7657 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7657_qec :
    ∃ ψ, SS.IsAmplitudes code_7657 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7657 code_7657_ok (by decide) (by decide)

/-- Catalogue code #7658: ((6,2,2)), m=13, a=[4, 4, 5, 6, 7, 12], S=[0, 2]. -/
def code_7658 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_7658_ok : code_7658.OK := by native_decide
/-- Code #7658 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7658_qec :
    ∃ ψ, SS.IsAmplitudes code_7658 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7658 code_7658_ok (by decide) (by decide)

/-- Catalogue code #7659: ((6,2,2)), m=13, a=[4, 4, 5, 6, 7, 12], S=[0, 10]. -/
def code_7659 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7659_ok : code_7659.OK := by native_decide
/-- Code #7659 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7659_qec :
    ∃ ψ, SS.IsAmplitudes code_7659 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7659 code_7659_ok (by decide) (by decide)

/-- Catalogue code #7660: ((6,2,2)), m=13, a=[4, 4, 5, 6, 8, 8], S=[0, 11]. -/
def code_7660 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7660_ok : code_7660.OK := by native_decide
/-- Code #7660 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7660_qec :
    ∃ ψ, SS.IsAmplitudes code_7660 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7660 code_7660_ok (by decide) (by decide)

/-- Catalogue code #7661: ((6,2,2)), m=13, a=[4, 4, 5, 6, 10, 10], S=[0, 2]. -/
def code_7661 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7661_ok : code_7661.OK := by native_decide
/-- Code #7661 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7661_qec :
    ∃ ψ, SS.IsAmplitudes code_7661 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7661 code_7661_ok (by decide) (by decide)

/-- Catalogue code #7662: ((6,2,2)), m=13, a=[4, 4, 5, 6, 11, 11], S=[0, 1]. -/
def code_7662 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7662_ok : code_7662.OK := by native_decide
/-- Code #7662 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7662_qec :
    ∃ ψ, SS.IsAmplitudes code_7662 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7662 code_7662_ok (by decide) (by decide)

/-- Catalogue code #7663: ((6,2,2)), m=13, a=[4, 4, 5, 6, 11, 12], S=[0, 10]. -/
def code_7663 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7663_ok : code_7663.OK := by native_decide
/-- Code #7663 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7663_qec :
    ∃ ψ, SS.IsAmplitudes code_7663 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7663 code_7663_ok (by decide) (by decide)

/-- Catalogue code #7664: ((6,2,2)), m=13, a=[4, 4, 5, 6, 12, 12], S=[0, 2]. -/
def code_7664 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7664_ok : code_7664.OK := by native_decide
/-- Code #7664 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7664_qec :
    ∃ ψ, SS.IsAmplitudes code_7664 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7664 code_7664_ok (by decide) (by decide)

/-- Catalogue code #7665: ((6,2,2)), m=13, a=[4, 4, 5, 7, 8, 10], S=[0, 2]. -/
def code_7665 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7665_ok : code_7665.OK := by native_decide
/-- Code #7665 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7665_qec :
    ∃ ψ, SS.IsAmplitudes code_7665 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7665 code_7665_ok (by decide) (by decide)

/-- Catalogue code #7666: ((6,2,2)), m=13, a=[4, 4, 5, 7, 8, 11], S=[0, 3]. -/
def code_7666 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7666_ok : code_7666.OK := by native_decide
/-- Code #7666 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7666_qec :
    ∃ ψ, SS.IsAmplitudes code_7666 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7666 code_7666_ok (by decide) (by decide)

/-- Catalogue code #7667: ((6,2,2)), m=13, a=[4, 4, 5, 7, 10, 11], S=[0, 1]. -/
def code_7667 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7667_ok : code_7667.OK := by native_decide
/-- Code #7667 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7667_qec :
    ∃ ψ, SS.IsAmplitudes code_7667 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7667 code_7667_ok (by decide) (by decide)

/-- Catalogue code #7668: ((6,2,2)), m=13, a=[4, 4, 5, 7, 10, 12], S=[0, 2]. -/
def code_7668 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_7668_ok : code_7668.OK := by native_decide
/-- Code #7668 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7668_qec :
    ∃ ψ, SS.IsAmplitudes code_7668 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7668 code_7668_ok (by decide) (by decide)

/-- Catalogue code #7669: ((6,2,2)), m=13, a=[4, 4, 5, 7, 12, 12], S=[0, 2]. -/
def code_7669 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7669_ok : code_7669.OK := by native_decide
/-- Code #7669 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7669_qec :
    ∃ ψ, SS.IsAmplitudes code_7669 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7669 code_7669_ok (by decide) (by decide)

/-- Catalogue code #7670: ((6,2,2)), m=13, a=[4, 4, 5, 8, 10, 11], S=[0, 1]. -/
def code_7670 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7670_ok : code_7670.OK := by native_decide
/-- Code #7670 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7670_qec :
    ∃ ψ, SS.IsAmplitudes code_7670 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7670 code_7670_ok (by decide) (by decide)

/-- Catalogue code #7671: ((6,2,2)), m=13, a=[4, 4, 5, 8, 10, 11], S=[0, 6]. -/
def code_7671 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7671_ok : code_7671.OK := by native_decide
/-- Code #7671 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7671_qec :
    ∃ ψ, SS.IsAmplitudes code_7671 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7671 code_7671_ok (by decide) (by decide)

/-- Catalogue code #7672: ((6,2,2)), m=13, a=[4, 4, 5, 8, 10, 12], S=[0, 2]. -/
def code_7672 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7672_ok : code_7672.OK := by native_decide
/-- Code #7672 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7672_qec :
    ∃ ψ, SS.IsAmplitudes code_7672 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7672 code_7672_ok (by decide) (by decide)

/-- Catalogue code #7673: ((6,2,2)), m=13, a=[4, 4, 5, 8, 11, 11], S=[0, 1]. -/
def code_7673 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7673_ok : code_7673.OK := by native_decide
/-- Code #7673 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7673_qec :
    ∃ ψ, SS.IsAmplitudes code_7673 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7673 code_7673_ok (by decide) (by decide)

/-- Catalogue code #7674: ((6,2,2)), m=13, a=[4, 4, 5, 8, 11, 12], S=[0, 3]. -/
def code_7674 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7674_ok : code_7674.OK := by native_decide
/-- Code #7674 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7674_qec :
    ∃ ψ, SS.IsAmplitudes code_7674 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7674 code_7674_ok (by decide) (by decide)

/-- Catalogue code #7675: ((6,2,2)), m=13, a=[4, 4, 5, 10, 10, 11], S=[0, 6]. -/
def code_7675 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7675_ok : code_7675.OK := by native_decide
/-- Code #7675 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7675_qec :
    ∃ ψ, SS.IsAmplitudes code_7675 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7675 code_7675_ok (by decide) (by decide)

/-- Catalogue code #7676: ((6,2,2)), m=13, a=[4, 4, 5, 10, 10, 11], S=[0, 7]. -/
def code_7676 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7676_ok : code_7676.OK := by native_decide
/-- Code #7676 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7676_qec :
    ∃ ψ, SS.IsAmplitudes code_7676 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7676 code_7676_ok (by decide) (by decide)

/-- Catalogue code #7677: ((6,2,2)), m=13, a=[4, 4, 5, 10, 11, 11], S=[0, 1]. -/
def code_7677 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7677_ok : code_7677.OK := by native_decide
/-- Code #7677 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7677_qec :
    ∃ ψ, SS.IsAmplitudes code_7677 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7677 code_7677_ok (by decide) (by decide)

/-- Catalogue code #7678: ((6,2,2)), m=13, a=[4, 4, 5, 11, 11, 12], S=[0, 7]. -/
def code_7678 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7678_ok : code_7678.OK := by native_decide
/-- Code #7678 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7678_qec :
    ∃ ψ, SS.IsAmplitudes code_7678 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7678 code_7678_ok (by decide) (by decide)

/-- Catalogue code #7679: ((6,2,2)), m=13, a=[4, 4, 5, 11, 12, 12], S=[0, 7]. -/
def code_7679 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7679_ok : code_7679.OK := by native_decide
/-- Code #7679 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7679_qec :
    ∃ ψ, SS.IsAmplitudes code_7679 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7679 code_7679_ok (by decide) (by decide)

/-- Catalogue code #7680: ((6,2,2)), m=13, a=[4, 4, 6, 6, 9, 12], S=[0, 8]. -/
def code_7680 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7680_ok : code_7680.OK := by native_decide
/-- Code #7680 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7680_qec :
    ∃ ψ, SS.IsAmplitudes code_7680 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7680 code_7680_ok (by decide) (by decide)

/-- Catalogue code #7681: ((6,2,2)), m=13, a=[4, 4, 6, 6, 11, 12], S=[0, 5]. -/
def code_7681 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7681_ok : code_7681.OK := by native_decide
/-- Code #7681 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7681_qec :
    ∃ ψ, SS.IsAmplitudes code_7681 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7681 code_7681_ok (by decide) (by decide)

/-- Catalogue code #7682: ((6,2,2)), m=13, a=[4, 4, 6, 7, 8, 8], S=[0, 1]. -/
def code_7682 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7682_ok : code_7682.OK := by native_decide
/-- Code #7682 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7682_qec :
    ∃ ψ, SS.IsAmplitudes code_7682 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7682 code_7682_ok (by decide) (by decide)

/-- Catalogue code #7683: ((6,2,2)), m=13, a=[4, 4, 6, 7, 9, 12], S=[0, 2]. -/
def code_7683 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_7683_ok : code_7683.OK := by native_decide
/-- Code #7683 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7683_qec :
    ∃ ψ, SS.IsAmplitudes code_7683 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7683 code_7683_ok (by decide) (by decide)

/-- Catalogue code #7684: ((6,2,2)), m=13, a=[4, 4, 6, 7, 11, 12], S=[0, 8]. -/
def code_7684 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7684_ok : code_7684.OK := by native_decide
/-- Code #7684 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7684_qec :
    ∃ ψ, SS.IsAmplitudes code_7684 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7684 code_7684_ok (by decide) (by decide)

/-- Catalogue code #7685: ((6,2,2)), m=13, a=[4, 4, 6, 8, 11, 12], S=[0, 3]. -/
def code_7685 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7685_ok : code_7685.OK := by native_decide
/-- Code #7685 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7685_qec :
    ∃ ψ, SS.IsAmplitudes code_7685 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7685 code_7685_ok (by decide) (by decide)

/-- Catalogue code #7686: ((6,2,2)), m=13, a=[4, 4, 6, 9, 12, 12], S=[0, 2]. -/
def code_7686 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7686_ok : code_7686.OK := by native_decide
/-- Code #7686 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7686_qec :
    ∃ ψ, SS.IsAmplitudes code_7686 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7686 code_7686_ok (by decide) (by decide)

/-- Catalogue code #7687: ((6,2,2)), m=13, a=[4, 4, 6, 10, 11, 12], S=[0, 5]. -/
def code_7687 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7687_ok : code_7687.OK := by native_decide
/-- Code #7687 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7687_qec :
    ∃ ψ, SS.IsAmplitudes code_7687 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7687 code_7687_ok (by decide) (by decide)

/-- Catalogue code #7688: ((6,2,2)), m=13, a=[4, 4, 6, 11, 11, 12], S=[0, 8]. -/
def code_7688 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7688_ok : code_7688.OK := by native_decide
/-- Code #7688 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7688_qec :
    ∃ ψ, SS.IsAmplitudes code_7688 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7688 code_7688_ok (by decide) (by decide)

/-- Catalogue code #7689: ((6,2,2)), m=13, a=[4, 4, 6, 11, 12, 12], S=[0, 8]. -/
def code_7689 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7689_ok : code_7689.OK := by native_decide
/-- Code #7689 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7689_qec :
    ∃ ψ, SS.IsAmplitudes code_7689 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7689 code_7689_ok (by decide) (by decide)

/-- Catalogue code #7690: ((6,2,2)), m=13, a=[4, 4, 7, 7, 7, 8], S=[0, 3]. -/
def code_7690 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-11 : ℚ) / 13)]
theorem code_7690_ok : code_7690.OK := by native_decide
/-- Code #7690 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7690_qec :
    ∃ ψ, SS.IsAmplitudes code_7690 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7690 code_7690_ok (by decide) (by decide)

/-- Catalogue code #7691: ((6,2,2)), m=13, a=[4, 4, 7, 7, 8, 10], S=[0, 2]. -/
def code_7691 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_7691_ok : code_7691.OK := by native_decide
/-- Code #7691 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7691_qec :
    ∃ ψ, SS.IsAmplitudes code_7691 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7691 code_7691_ok (by decide) (by decide)

/-- Catalogue code #7692: ((6,2,2)), m=13, a=[4, 4, 7, 7, 8, 10], S=[0, 12]. -/
def code_7692 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7692_ok : code_7692.OK := by native_decide
/-- Code #7692 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7692_qec :
    ∃ ψ, SS.IsAmplitudes code_7692 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7692 code_7692_ok (by decide) (by decide)

/-- Catalogue code #7693: ((6,2,2)), m=13, a=[4, 4, 7, 7, 8, 11], S=[0, 1]. -/
def code_7693 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7693_ok : code_7693.OK := by native_decide
/-- Code #7693 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7693_qec :
    ∃ ψ, SS.IsAmplitudes code_7693 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7693 code_7693_ok (by decide) (by decide)

/-- Catalogue code #7694: ((6,2,2)), m=13, a=[4, 4, 7, 7, 8, 11], S=[0, 3]. -/
def code_7694 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7694_ok : code_7694.OK := by native_decide
/-- Code #7694 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7694_qec :
    ∃ ψ, SS.IsAmplitudes code_7694 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7694 code_7694_ok (by decide) (by decide)

/-- Catalogue code #7695: ((6,2,2)), m=13, a=[4, 4, 7, 7, 8, 11], S=[0, 12]. -/
def code_7695 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7695_ok : code_7695.OK := by native_decide
/-- Code #7695 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7695_qec :
    ∃ ψ, SS.IsAmplitudes code_7695 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7695 code_7695_ok (by decide) (by decide)

/-- Catalogue code #7696: ((6,2,2)), m=13, a=[4, 4, 7, 7, 10, 11], S=[0, 5]. -/
def code_7696 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7696_ok : code_7696.OK := by native_decide
/-- Code #7696 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7696_qec :
    ∃ ψ, SS.IsAmplitudes code_7696 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7696 code_7696_ok (by decide) (by decide)

/-- Catalogue code #7697: ((6,2,2)), m=13, a=[4, 4, 7, 7, 10, 11], S=[0, 12]. -/
def code_7697 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7697_ok : code_7697.OK := by native_decide
/-- Code #7697 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7697_qec :
    ∃ ψ, SS.IsAmplitudes code_7697 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7697 code_7697_ok (by decide) (by decide)

/-- Catalogue code #7698: ((6,2,2)), m=13, a=[4, 4, 7, 7, 12, 12], S=[0, 5]. -/
def code_7698 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7698_ok : code_7698.OK := by native_decide
/-- Code #7698 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7698_qec :
    ∃ ψ, SS.IsAmplitudes code_7698 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7698 code_7698_ok (by decide) (by decide)

/-- Catalogue code #7699: ((6,2,2)), m=13, a=[4, 4, 7, 7, 12, 12], S=[0, 11]. -/
def code_7699 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7699_ok : code_7699.OK := by native_decide
/-- Code #7699 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7699_qec :
    ∃ ψ, SS.IsAmplitudes code_7699 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7699 code_7699_ok (by decide) (by decide)

/-- Catalogue code #7700: ((6,2,2)), m=13, a=[4, 4, 7, 8, 10, 10], S=[0, 2]. -/
def code_7700 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7700_ok : code_7700.OK := by native_decide
/-- Code #7700 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7700_qec :
    ∃ ψ, SS.IsAmplitudes code_7700 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7700 code_7700_ok (by decide) (by decide)

/-- Catalogue code #7701: ((6,2,2)), m=13, a=[4, 4, 7, 8, 10, 11], S=[0, 12]. -/
def code_7701 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7701_ok : code_7701.OK := by native_decide
/-- Code #7701 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7701_qec :
    ∃ ψ, SS.IsAmplitudes code_7701 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7701 code_7701_ok (by decide) (by decide)

/-- Catalogue code #7702: ((6,2,2)), m=13, a=[4, 4, 7, 8, 11, 11], S=[0, 3]. -/
def code_7702 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7702_ok : code_7702.OK := by native_decide
/-- Code #7702 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7702_qec :
    ∃ ψ, SS.IsAmplitudes code_7702 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7702 code_7702_ok (by decide) (by decide)

/-- Catalogue code #7703: ((6,2,2)), m=13, a=[4, 4, 7, 8, 11, 12], S=[0, 10]. -/
def code_7703 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7703_ok : code_7703.OK := by native_decide
/-- Code #7703 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7703_qec :
    ∃ ψ, SS.IsAmplitudes code_7703 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7703 code_7703_ok (by decide) (by decide)

/-- Catalogue code #7704: ((6,2,2)), m=13, a=[4, 4, 7, 8, 12, 12], S=[0, 11]. -/
def code_7704 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7704_ok : code_7704.OK := by native_decide
/-- Code #7704 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7704_qec :
    ∃ ψ, SS.IsAmplitudes code_7704 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7704 code_7704_ok (by decide) (by decide)

/-- Catalogue code #7705: ((6,2,2)), m=13, a=[4, 4, 7, 9, 12, 12], S=[0, 2]. -/
def code_7705 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7705_ok : code_7705.OK := by native_decide
/-- Code #7705 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7705_qec :
    ∃ ψ, SS.IsAmplitudes code_7705 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7705 code_7705_ok (by decide) (by decide)

/-- Catalogue code #7706: ((6,2,2)), m=13, a=[4, 4, 7, 10, 10, 11], S=[0, 8]. -/
def code_7706 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7706_ok : code_7706.OK := by native_decide
/-- Code #7706 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7706_qec :
    ∃ ψ, SS.IsAmplitudes code_7706 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7706 code_7706_ok (by decide) (by decide)

/-- Catalogue code #7707: ((6,2,2)), m=13, a=[4, 4, 7, 10, 11, 12], S=[0, 8]. -/
def code_7707 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7707_ok : code_7707.OK := by native_decide
/-- Code #7707 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7707_qec :
    ∃ ψ, SS.IsAmplitudes code_7707 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7707 code_7707_ok (by decide) (by decide)

/-- Catalogue code #7708: ((6,2,2)), m=13, a=[4, 4, 7, 10, 12, 12], S=[0, 2]. -/
def code_7708 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7708_ok : code_7708.OK := by native_decide
/-- Code #7708 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7708_qec :
    ∃ ψ, SS.IsAmplitudes code_7708 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7708 code_7708_ok (by decide) (by decide)

/-- Catalogue code #7709: ((6,2,2)), m=13, a=[4, 4, 7, 10, 12, 12], S=[0, 8]. -/
def code_7709 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7709_ok : code_7709.OK := by native_decide
/-- Code #7709 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7709_qec :
    ∃ ψ, SS.IsAmplitudes code_7709 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7709 code_7709_ok (by decide) (by decide)

/-- Catalogue code #7710: ((6,2,2)), m=13, a=[4, 4, 7, 11, 12, 12], S=[0, 8]. -/
def code_7710 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7710_ok : code_7710.OK := by native_decide
/-- Code #7710 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7710_qec :
    ∃ ψ, SS.IsAmplitudes code_7710 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7710 code_7710_ok (by decide) (by decide)

/-- Catalogue code #7711: ((6,2,2)), m=13, a=[4, 4, 8, 10, 11, 12], S=[0, 7]. -/
def code_7711 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7711_ok : code_7711.OK := by native_decide
/-- Code #7711 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7711_qec :
    ∃ ψ, SS.IsAmplitudes code_7711 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7711 code_7711_ok (by decide) (by decide)

/-- Catalogue code #7712: ((6,2,2)), m=13, a=[4, 4, 8, 11, 11, 12], S=[0, 3]. -/
def code_7712 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7712_ok : code_7712.OK := by native_decide
/-- Code #7712 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7712_qec :
    ∃ ψ, SS.IsAmplitudes code_7712 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7712 code_7712_ok (by decide) (by decide)

/-- Catalogue code #7713: ((6,2,2)), m=13, a=[4, 4, 9, 11, 12, 12], S=[0, 6]. -/
def code_7713 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7713_ok : code_7713.OK := by native_decide
/-- Code #7713 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7713_qec :
    ∃ ψ, SS.IsAmplitudes code_7713 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7713 code_7713_ok (by decide) (by decide)

/-- Catalogue code #7714: ((6,2,2)), m=13, a=[4, 4, 10, 10, 11, 12], S=[0, 5]. -/
def code_7714 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7714_ok : code_7714.OK := by native_decide
/-- Code #7714 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7714_qec :
    ∃ ψ, SS.IsAmplitudes code_7714 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7714 code_7714_ok (by decide) (by decide)

/-- Catalogue code #7715: ((6,2,2)), m=13, a=[4, 4, 10, 10, 11, 12], S=[0, 7]. -/
def code_7715 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7715_ok : code_7715.OK := by native_decide
/-- Code #7715 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7715_qec :
    ∃ ψ, SS.IsAmplitudes code_7715 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7715 code_7715_ok (by decide) (by decide)

/-- Catalogue code #7716: ((6,2,2)), m=13, a=[4, 4, 10, 11, 11, 12], S=[0, 5]. -/
def code_7716 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7716_ok : code_7716.OK := by native_decide
/-- Code #7716 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7716_qec :
    ∃ ψ, SS.IsAmplitudes code_7716 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7716 code_7716_ok (by decide) (by decide)

/-- Catalogue code #7717: ((6,2,2)), m=13, a=[4, 5, 5, 6, 6, 7], S=[0, 3]. -/
def code_7717 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7717_ok : code_7717.OK := by native_decide
/-- Code #7717 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7717_qec :
    ∃ ψ, SS.IsAmplitudes code_7717 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7717 code_7717_ok (by decide) (by decide)

/-- Catalogue code #7718: ((6,2,2)), m=13, a=[4, 5, 5, 6, 6, 9], S=[0, 3]. -/
def code_7718 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7718_ok : code_7718.OK := by native_decide
/-- Code #7718 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7718_qec :
    ∃ ψ, SS.IsAmplitudes code_7718 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7718 code_7718_ok (by decide) (by decide)

/-- Catalogue code #7719: ((6,2,2)), m=13, a=[4, 5, 5, 6, 6, 9], S=[0, 12]. -/
def code_7719 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7719_ok : code_7719.OK := by native_decide
/-- Code #7719 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7719_qec :
    ∃ ψ, SS.IsAmplitudes code_7719 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7719 code_7719_ok (by decide) (by decide)

/-- Catalogue code #7720: ((6,2,2)), m=13, a=[4, 5, 5, 6, 6, 11], S=[0, 1]. -/
def code_7720 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7720_ok : code_7720.OK := by native_decide
/-- Code #7720 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7720_qec :
    ∃ ψ, SS.IsAmplitudes code_7720 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7720 code_7720_ok (by decide) (by decide)

/-- Catalogue code #7721: ((6,2,2)), m=13, a=[4, 5, 5, 6, 6, 11], S=[0, 10]. -/
def code_7721 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7721_ok : code_7721.OK := by native_decide
/-- Code #7721 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7721_qec :
    ∃ ψ, SS.IsAmplitudes code_7721 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7721 code_7721_ok (by decide) (by decide)

/-- Catalogue code #7722: ((6,2,2)), m=13, a=[4, 5, 5, 6, 6, 12], S=[0, 10]. -/
def code_7722 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7722_ok : code_7722.OK := by native_decide
/-- Code #7722 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7722_qec :
    ∃ ψ, SS.IsAmplitudes code_7722 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7722 code_7722_ok (by decide) (by decide)

/-- Catalogue code #7723: ((6,2,2)), m=13, a=[4, 5, 5, 6, 7, 10], S=[0, 1]. -/
def code_7723 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-9 : ℚ) / 13)]
theorem code_7723_ok : code_7723.OK := by native_decide
/-- Code #7723 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7723_qec :
    ∃ ψ, SS.IsAmplitudes code_7723 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7723 code_7723_ok (by decide) (by decide)

/-- Catalogue code #7724: ((6,2,2)), m=13, a=[4, 5, 5, 6, 7, 12], S=[0, 3]. -/
def code_7724 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7724_ok : code_7724.OK := by native_decide
/-- Code #7724 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7724_qec :
    ∃ ψ, SS.IsAmplitudes code_7724 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7724 code_7724_ok (by decide) (by decide)

/-- Catalogue code #7725: ((6,2,2)), m=13, a=[4, 5, 5, 6, 7, 12], S=[0, 10]. -/
def code_7725 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7725_ok : code_7725.OK := by native_decide
/-- Code #7725 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7725_qec :
    ∃ ψ, SS.IsAmplitudes code_7725 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7725 code_7725_ok (by decide) (by decide)

/-- Catalogue code #7726: ((6,2,2)), m=13, a=[4, 5, 5, 6, 10, 11], S=[0, 1]. -/
def code_7726 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7726_ok : code_7726.OK := by native_decide
/-- Code #7726 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7726_qec :
    ∃ ψ, SS.IsAmplitudes code_7726 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7726 code_7726_ok (by decide) (by decide)

/-- Catalogue code #7727: ((6,2,2)), m=13, a=[4, 5, 5, 6, 10, 12], S=[0, 2]. -/
def code_7727 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7727_ok : code_7727.OK := by native_decide
/-- Code #7727 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7727_qec :
    ∃ ψ, SS.IsAmplitudes code_7727 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7727 code_7727_ok (by decide) (by decide)

/-- Catalogue code #7728: ((6,2,2)), m=13, a=[4, 5, 5, 6, 12, 12], S=[0, 2]. -/
def code_7728 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7728_ok : code_7728.OK := by native_decide
/-- Code #7728 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7728_qec :
    ∃ ψ, SS.IsAmplitudes code_7728 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7728 code_7728_ok (by decide) (by decide)

/-- Catalogue code #7729: ((6,2,2)), m=13, a=[4, 5, 5, 6, 12, 12], S=[0, 3]. -/
def code_7729 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7729_ok : code_7729.OK := by native_decide
/-- Code #7729 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7729_qec :
    ∃ ψ, SS.IsAmplitudes code_7729 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7729 code_7729_ok (by decide) (by decide)

/-- Catalogue code #7730: ((6,2,2)), m=13, a=[4, 5, 5, 7, 7, 12], S=[0, 3]. -/
def code_7730 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-9 : ℚ) / 13)]
theorem code_7730_ok : code_7730.OK := by native_decide
/-- Code #7730 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7730_qec :
    ∃ ψ, SS.IsAmplitudes code_7730 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7730 code_7730_ok (by decide) (by decide)

/-- Catalogue code #7731: ((6,2,2)), m=13, a=[4, 5, 5, 7, 9, 10], S=[0, 11]. -/
def code_7731 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7731_ok : code_7731.OK := by native_decide
/-- Code #7731 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7731_qec :
    ∃ ψ, SS.IsAmplitudes code_7731 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7731 code_7731_ok (by decide) (by decide)

/-- Catalogue code #7732: ((6,2,2)), m=13, a=[4, 5, 5, 7, 10, 10], S=[0, 11]. -/
def code_7732 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7732_ok : code_7732.OK := by native_decide
/-- Code #7732 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7732_qec :
    ∃ ψ, SS.IsAmplitudes code_7732 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7732 code_7732_ok (by decide) (by decide)

/-- Catalogue code #7733: ((6,2,2)), m=13, a=[4, 5, 5, 7, 10, 12], S=[0, 2]. -/
def code_7733 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7733_ok : code_7733.OK := by native_decide
/-- Code #7733 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7733_qec :
    ∃ ψ, SS.IsAmplitudes code_7733 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7733 code_7733_ok (by decide) (by decide)

/-- Catalogue code #7734: ((6,2,2)), m=13, a=[4, 5, 5, 7, 11, 12], S=[0, 3]. -/
def code_7734 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7734_ok : code_7734.OK := by native_decide
/-- Code #7734 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7734_qec :
    ∃ ψ, SS.IsAmplitudes code_7734 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7734 code_7734_ok (by decide) (by decide)

/-- Catalogue code #7735: ((6,2,2)), m=13, a=[4, 5, 5, 9, 10, 10], S=[0, 6]. -/
def code_7735 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7735_ok : code_7735.OK := by native_decide
/-- Code #7735 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7735_qec :
    ∃ ψ, SS.IsAmplitudes code_7735 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7735 code_7735_ok (by decide) (by decide)

/-- Catalogue code #7736: ((6,2,2)), m=13, a=[4, 5, 5, 9, 10, 10], S=[0, 11]. -/
def code_7736 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7736_ok : code_7736.OK := by native_decide
/-- Code #7736 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7736_qec :
    ∃ ψ, SS.IsAmplitudes code_7736 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7736 code_7736_ok (by decide) (by decide)

/-- Catalogue code #7737: ((6,2,2)), m=13, a=[4, 5, 5, 10, 11, 12], S=[0, 7]. -/
def code_7737 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7737_ok : code_7737.OK := by native_decide
/-- Code #7737 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7737_qec :
    ∃ ψ, SS.IsAmplitudes code_7737 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7737 code_7737_ok (by decide) (by decide)

/-- Catalogue code #7738: ((6,2,2)), m=13, a=[4, 5, 5, 10, 12, 12], S=[0, 2]. -/
def code_7738 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7738_ok : code_7738.OK := by native_decide
/-- Code #7738 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7738_qec :
    ∃ ψ, SS.IsAmplitudes code_7738 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7738 code_7738_ok (by decide) (by decide)

/-- Catalogue code #7739: ((6,2,2)), m=13, a=[4, 5, 5, 10, 12, 12], S=[0, 7]. -/
def code_7739 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7739_ok : code_7739.OK := by native_decide
/-- Code #7739 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7739_qec :
    ∃ ψ, SS.IsAmplitudes code_7739 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7739 code_7739_ok (by decide) (by decide)

/-- Catalogue code #7740: ((6,2,2)), m=13, a=[4, 5, 5, 11, 11, 12], S=[0, 3]. -/
def code_7740 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7740_ok : code_7740.OK := by native_decide
/-- Code #7740 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7740_qec :
    ∃ ψ, SS.IsAmplitudes code_7740 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7740 code_7740_ok (by decide) (by decide)

/-- Catalogue code #7741: ((6,2,2)), m=13, a=[4, 5, 5, 11, 12, 12], S=[0, 3]. -/
def code_7741 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7741_ok : code_7741.OK := by native_decide
/-- Code #7741 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7741_qec :
    ∃ ψ, SS.IsAmplitudes code_7741 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7741 code_7741_ok (by decide) (by decide)

/-- Catalogue code #7742: ((6,2,2)), m=13, a=[4, 5, 5, 11, 12, 12], S=[0, 7]. -/
def code_7742 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7742_ok : code_7742.OK := by native_decide
/-- Code #7742 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7742_qec :
    ∃ ψ, SS.IsAmplitudes code_7742 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7742 code_7742_ok (by decide) (by decide)

/-- Catalogue code #7743: ((6,2,2)), m=13, a=[4, 5, 6, 6, 7, 9], S=[0, 3]. -/
def code_7743 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7743_ok : code_7743.OK := by native_decide
/-- Code #7743 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7743_qec :
    ∃ ψ, SS.IsAmplitudes code_7743 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7743 code_7743_ok (by decide) (by decide)

/-- Catalogue code #7744: ((6,2,2)), m=13, a=[4, 5, 6, 6, 9, 10], S=[0, 2]. -/
def code_7744 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_7744_ok : code_7744.OK := by native_decide
/-- Code #7744 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7744_qec :
    ∃ ψ, SS.IsAmplitudes code_7744 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7744 code_7744_ok (by decide) (by decide)

/-- Catalogue code #7745: ((6,2,2)), m=13, a=[4, 5, 6, 6, 9, 10], S=[0, 12]. -/
def code_7745 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7745_ok : code_7745.OK := by native_decide
/-- Code #7745 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7745_qec :
    ∃ ψ, SS.IsAmplitudes code_7745 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7745 code_7745_ok (by decide) (by decide)

/-- Catalogue code #7746: ((6,2,2)), m=13, a=[4, 5, 6, 6, 9, 11], S=[0, 1]. -/
def code_7746 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7746_ok : code_7746.OK := by native_decide
/-- Code #7746 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7746_qec :
    ∃ ψ, SS.IsAmplitudes code_7746 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7746 code_7746_ok (by decide) (by decide)

/-- Catalogue code #7747: ((6,2,2)), m=13, a=[4, 5, 6, 6, 9, 11], S=[0, 3]. -/
def code_7747 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7747_ok : code_7747.OK := by native_decide
/-- Code #7747 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7747_qec :
    ∃ ψ, SS.IsAmplitudes code_7747 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7747 code_7747_ok (by decide) (by decide)

/-- Catalogue code #7748: ((6,2,2)), m=13, a=[4, 5, 6, 6, 9, 11], S=[0, 12]. -/
def code_7748 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7748_ok : code_7748.OK := by native_decide
/-- Code #7748 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7748_qec :
    ∃ ψ, SS.IsAmplitudes code_7748 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7748 code_7748_ok (by decide) (by decide)

/-- Catalogue code #7749: ((6,2,2)), m=13, a=[4, 5, 6, 6, 10, 11], S=[0, 1]. -/
def code_7749 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7749_ok : code_7749.OK := by native_decide
/-- Code #7749 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7749_qec :
    ∃ ψ, SS.IsAmplitudes code_7749 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7749 code_7749_ok (by decide) (by decide)

/-- Catalogue code #7750: ((6,2,2)), m=13, a=[4, 5, 6, 6, 10, 11], S=[0, 12]. -/
def code_7750 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7750_ok : code_7750.OK := by native_decide
/-- Code #7750 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7750_qec :
    ∃ ψ, SS.IsAmplitudes code_7750 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7750 code_7750_ok (by decide) (by decide)

/-- Catalogue code #7751: ((6,2,2)), m=13, a=[4, 5, 6, 6, 10, 12], S=[0, 2]. -/
def code_7751 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7751_ok : code_7751.OK := by native_decide
/-- Code #7751 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7751_qec :
    ∃ ψ, SS.IsAmplitudes code_7751 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7751 code_7751_ok (by decide) (by decide)

/-- Catalogue code #7752: ((6,2,2)), m=13, a=[4, 5, 6, 6, 11, 11], S=[0, 1]. -/
def code_7752 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7752_ok : code_7752.OK := by native_decide
/-- Code #7752 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7752_qec :
    ∃ ψ, SS.IsAmplitudes code_7752 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7752 code_7752_ok (by decide) (by decide)

/-- Catalogue code #7753: ((6,2,2)), m=13, a=[4, 5, 6, 6, 11, 12], S=[0, 10]. -/
def code_7753 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7753_ok : code_7753.OK := by native_decide
/-- Code #7753 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7753_qec :
    ∃ ψ, SS.IsAmplitudes code_7753 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7753 code_7753_ok (by decide) (by decide)

/-- Catalogue code #7754: ((6,2,2)), m=13, a=[4, 5, 6, 7, 8, 10], S=[0, 12]. -/
def code_7754 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7754_ok : code_7754.OK := by native_decide
/-- Code #7754 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7754_qec :
    ∃ ψ, SS.IsAmplitudes code_7754 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7754 code_7754_ok (by decide) (by decide)

/-- Catalogue code #7755: ((6,2,2)), m=13, a=[4, 5, 6, 7, 8, 11], S=[0, 3]. -/
def code_7755 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13)]
theorem code_7755_ok : code_7755.OK := by native_decide
/-- Code #7755 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7755_qec :
    ∃ ψ, SS.IsAmplitudes code_7755 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7755 code_7755_ok (by decide) (by decide)

/-- Catalogue code #7756: ((6,2,2)), m=13, a=[4, 5, 6, 7, 8, 11], S=[0, 12]. -/
def code_7756 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7756_ok : code_7756.OK := by native_decide
/-- Code #7756 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7756_qec :
    ∃ ψ, SS.IsAmplitudes code_7756 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7756 code_7756_ok (by decide) (by decide)

/-- Catalogue code #7757: ((6,2,2)), m=13, a=[4, 5, 6, 7, 10, 11], S=[0, 12]. -/
def code_7757 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7757_ok : code_7757.OK := by native_decide
/-- Code #7757 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7757_qec :
    ∃ ψ, SS.IsAmplitudes code_7757 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7757 code_7757_ok (by decide) (by decide)

/-- Catalogue code #7758: ((6,2,2)), m=13, a=[4, 5, 6, 8, 10, 11], S=[0, 12]. -/
def code_7758 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7758_ok : code_7758.OK := by native_decide
/-- Code #7758 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7758_qec :
    ∃ ψ, SS.IsAmplitudes code_7758 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7758 code_7758_ok (by decide) (by decide)

/-- Catalogue code #7759: ((6,2,2)), m=13, a=[4, 5, 6, 8, 12, 12], S=[0, 10]. -/
def code_7759 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7759_ok : code_7759.OK := by native_decide
/-- Code #7759 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7759_qec :
    ∃ ψ, SS.IsAmplitudes code_7759 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7759 code_7759_ok (by decide) (by decide)

/-- Catalogue code #7760: ((6,2,2)), m=13, a=[4, 5, 6, 8, 12, 12], S=[0, 11]. -/
def code_7760 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7760_ok : code_7760.OK := by native_decide
/-- Code #7760 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7760_qec :
    ∃ ψ, SS.IsAmplitudes code_7760 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7760 code_7760_ok (by decide) (by decide)

/-- Catalogue code #7761: ((6,2,2)), m=13, a=[4, 5, 6, 9, 10, 11], S=[0, 12]. -/
def code_7761 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7761_ok : code_7761.OK := by native_decide
/-- Code #7761 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7761_qec :
    ∃ ψ, SS.IsAmplitudes code_7761 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7761 code_7761_ok (by decide) (by decide)

/-- Catalogue code #7762: ((6,2,2)), m=13, a=[4, 5, 6, 9, 11, 11], S=[0, 10]. -/
def code_7762 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((8 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7762_ok : code_7762.OK := by native_decide
/-- Code #7762 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7762_qec :
    ∃ ψ, SS.IsAmplitudes code_7762 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7762 code_7762_ok (by decide) (by decide)

/-- Catalogue code #7763: ((6,2,2)), m=13, a=[4, 5, 6, 9, 12, 12], S=[0, 11]. -/
def code_7763 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7763_ok : code_7763.OK := by native_decide
/-- Code #7763 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7763_qec :
    ∃ ψ, SS.IsAmplitudes code_7763 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7763 code_7763_ok (by decide) (by decide)

/-- Catalogue code #7764: ((6,2,2)), m=13, a=[4, 5, 6, 10, 11, 11], S=[0, 1]. -/
def code_7764 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7764_ok : code_7764.OK := by native_decide
/-- Code #7764 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7764_qec :
    ∃ ψ, SS.IsAmplitudes code_7764 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7764 code_7764_ok (by decide) (by decide)

/-- Catalogue code #7765: ((6,2,2)), m=13, a=[4, 5, 6, 10, 12, 12], S=[0, 2]. -/
def code_7765 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7765_ok : code_7765.OK := by native_decide
/-- Code #7765 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7765_qec :
    ∃ ψ, SS.IsAmplitudes code_7765 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7765 code_7765_ok (by decide) (by decide)

/-- Catalogue code #7766: ((6,2,2)), m=13, a=[4, 5, 6, 11, 12, 12], S=[0, 3]. -/
def code_7766 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7766_ok : code_7766.OK := by native_decide
/-- Code #7766 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7766_qec :
    ∃ ψ, SS.IsAmplitudes code_7766 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7766 code_7766_ok (by decide) (by decide)

/-- Catalogue code #7767: ((6,2,2)), m=13, a=[4, 5, 7, 7, 7, 8], S=[0, 3]. -/
def code_7767 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7767_ok : code_7767.OK := by native_decide
/-- Code #7767 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7767_qec :
    ∃ ψ, SS.IsAmplitudes code_7767 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7767 code_7767_ok (by decide) (by decide)

/-- Catalogue code #7768: ((6,2,2)), m=13, a=[4, 5, 7, 7, 8, 10], S=[0, 12]. -/
def code_7768 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7768_ok : code_7768.OK := by native_decide
/-- Code #7768 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7768_qec :
    ∃ ψ, SS.IsAmplitudes code_7768 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7768 code_7768_ok (by decide) (by decide)

/-- Catalogue code #7769: ((6,2,2)), m=13, a=[4, 5, 7, 7, 9, 10], S=[0, 1]. -/
def code_7769 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7769_ok : code_7769.OK := by native_decide
/-- Code #7769 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7769_qec :
    ∃ ψ, SS.IsAmplitudes code_7769 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7769 code_7769_ok (by decide) (by decide)

/-- Catalogue code #7770: ((6,2,2)), m=13, a=[4, 5, 7, 7, 9, 10], S=[0, 2]. -/
def code_7770 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-11 : ℚ) / 13)]
theorem code_7770_ok : code_7770.OK := by native_decide
/-- Code #7770 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7770_qec :
    ∃ ψ, SS.IsAmplitudes code_7770 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7770 code_7770_ok (by decide) (by decide)

/-- Catalogue code #7771: ((6,2,2)), m=13, a=[4, 5, 7, 7, 9, 12], S=[0, 2]. -/
def code_7771 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-11 : ℚ) / 13)]
theorem code_7771_ok : code_7771.OK := by native_decide
/-- Code #7771 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7771_qec :
    ∃ ψ, SS.IsAmplitudes code_7771 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7771 code_7771_ok (by decide) (by decide)

/-- Catalogue code #7772: ((6,2,2)), m=13, a=[4, 5, 7, 7, 9, 12], S=[0, 3]. -/
def code_7772 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((11 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7772_ok : code_7772.OK := by native_decide
/-- Code #7772 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7772_qec :
    ∃ ψ, SS.IsAmplitudes code_7772 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7772 code_7772_ok (by decide) (by decide)

/-- Catalogue code #7773: ((6,2,2)), m=13, a=[4, 5, 7, 7, 10, 11], S=[0, 1]. -/
def code_7773 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7773_ok : code_7773.OK := by native_decide
/-- Code #7773 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7773_qec :
    ∃ ψ, SS.IsAmplitudes code_7773 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7773 code_7773_ok (by decide) (by decide)

/-- Catalogue code #7774: ((6,2,2)), m=13, a=[4, 5, 7, 7, 10, 12], S=[0, 2]. -/
def code_7774 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7774_ok : code_7774.OK := by native_decide
/-- Code #7774 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7774_qec :
    ∃ ψ, SS.IsAmplitudes code_7774 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7774 code_7774_ok (by decide) (by decide)

/-- Catalogue code #7775: ((6,2,2)), m=13, a=[4, 5, 7, 7, 11, 12], S=[0, 3]. -/
def code_7775 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7775_ok : code_7775.OK := by native_decide
/-- Code #7775 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7775_qec :
    ∃ ψ, SS.IsAmplitudes code_7775 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7775 code_7775_ok (by decide) (by decide)

/-- Catalogue code #7776: ((6,2,2)), m=13, a=[4, 5, 7, 8, 10, 10], S=[0, 12]. -/
def code_7776 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7776_ok : code_7776.OK := by native_decide
/-- Code #7776 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7776_qec :
    ∃ ψ, SS.IsAmplitudes code_7776 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7776 code_7776_ok (by decide) (by decide)

/-- Catalogue code #7777: ((6,2,2)), m=13, a=[4, 5, 7, 8, 11, 12], S=[0, 10]. -/
def code_7777 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7777_ok : code_7777.OK := by native_decide
/-- Code #7777 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7777_qec :
    ∃ ψ, SS.IsAmplitudes code_7777 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7777 code_7777_ok (by decide) (by decide)

/-- Catalogue code #7778: ((6,2,2)), m=13, a=[4, 5, 7, 9, 10, 10], S=[0, 11]. -/
def code_7778 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7778_ok : code_7778.OK := by native_decide
/-- Code #7778 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7778_qec :
    ∃ ψ, SS.IsAmplitudes code_7778 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7778 code_7778_ok (by decide) (by decide)

/-- Catalogue code #7779: ((6,2,2)), m=13, a=[4, 5, 7, 9, 10, 11], S=[0, 1]. -/
def code_7779 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7779_ok : code_7779.OK := by native_decide
/-- Code #7779 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7779_qec :
    ∃ ψ, SS.IsAmplitudes code_7779 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7779 code_7779_ok (by decide) (by decide)

/-- Catalogue code #7780: ((6,2,2)), m=13, a=[4, 5, 7, 9, 10, 12], S=[0, 2]. -/
def code_7780 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7780_ok : code_7780.OK := by native_decide
/-- Code #7780 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7780_qec :
    ∃ ψ, SS.IsAmplitudes code_7780 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7780 code_7780_ok (by decide) (by decide)

/-- Catalogue code #7781: ((6,2,2)), m=13, a=[4, 5, 7, 9, 11, 12], S=[0, 3]. -/
def code_7781 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7781_ok : code_7781.OK := by native_decide
/-- Code #7781 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7781_qec :
    ∃ ψ, SS.IsAmplitudes code_7781 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7781 code_7781_ok (by decide) (by decide)

/-- Catalogue code #7782: ((6,2,2)), m=13, a=[4, 5, 7, 10, 11, 11], S=[0, 12]. -/
def code_7782 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7782_ok : code_7782.OK := by native_decide
/-- Code #7782 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7782_qec :
    ∃ ψ, SS.IsAmplitudes code_7782 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7782 code_7782_ok (by decide) (by decide)

/-- Catalogue code #7783: ((6,2,2)), m=13, a=[4, 5, 7, 10, 12, 12], S=[0, 2]. -/
def code_7783 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7783_ok : code_7783.OK := by native_decide
/-- Code #7783 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7783_qec :
    ∃ ψ, SS.IsAmplitudes code_7783 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7783 code_7783_ok (by decide) (by decide)

/-- Catalogue code #7784: ((6,2,2)), m=13, a=[4, 5, 7, 11, 11, 12], S=[0, 3]. -/
def code_7784 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7784_ok : code_7784.OK := by native_decide
/-- Code #7784 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7784_qec :
    ∃ ψ, SS.IsAmplitudes code_7784 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7784 code_7784_ok (by decide) (by decide)

/-- Catalogue code #7785: ((6,2,2)), m=13, a=[4, 5, 8, 9, 10, 12], S=[0, 11]. -/
def code_7785 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7785_ok : code_7785.OK := by native_decide
/-- Code #7785 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7785_qec :
    ∃ ψ, SS.IsAmplitudes code_7785 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7785 code_7785_ok (by decide) (by decide)

/-- Catalogue code #7786: ((6,2,2)), m=13, a=[4, 5, 8, 9, 11, 11], S=[0, 10]. -/
def code_7786 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7786_ok : code_7786.OK := by native_decide
/-- Code #7786 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7786_qec :
    ∃ ψ, SS.IsAmplitudes code_7786 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7786 code_7786_ok (by decide) (by decide)

/-- Catalogue code #7787: ((6,2,2)), m=13, a=[4, 5, 8, 9, 11, 11], S=[0, 12]. -/
def code_7787 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7787_ok : code_7787.OK := by native_decide
/-- Code #7787 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7787_qec :
    ∃ ψ, SS.IsAmplitudes code_7787 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7787 code_7787_ok (by decide) (by decide)

/-- Catalogue code #7788: ((6,2,2)), m=13, a=[4, 5, 8, 10, 11, 11], S=[0, 1]. -/
def code_7788 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7788_ok : code_7788.OK := by native_decide
/-- Code #7788 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7788_qec :
    ∃ ψ, SS.IsAmplitudes code_7788 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7788 code_7788_ok (by decide) (by decide)

/-- Catalogue code #7789: ((6,2,2)), m=13, a=[4, 5, 8, 11, 11, 12], S=[0, 3]. -/
def code_7789 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7789_ok : code_7789.OK := by native_decide
/-- Code #7789 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7789_qec :
    ∃ ψ, SS.IsAmplitudes code_7789 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7789 code_7789_ok (by decide) (by decide)

/-- Catalogue code #7790: ((6,2,2)), m=13, a=[4, 5, 9, 10, 10, 10], S=[0, 11]. -/
def code_7790 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7790_ok : code_7790.OK := by native_decide
/-- Code #7790 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7790_qec :
    ∃ ψ, SS.IsAmplitudes code_7790 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7790 code_7790_ok (by decide) (by decide)

/-- Catalogue code #7791: ((6,2,2)), m=13, a=[4, 5, 9, 10, 11, 12], S=[0, 6]. -/
def code_7791 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7791_ok : code_7791.OK := by native_decide
/-- Code #7791 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7791_qec :
    ∃ ψ, SS.IsAmplitudes code_7791 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7791 code_7791_ok (by decide) (by decide)

/-- Catalogue code #7792: ((6,2,2)), m=13, a=[4, 5, 9, 11, 12, 12], S=[0, 7]. -/
def code_7792 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7792_ok : code_7792.OK := by native_decide
/-- Code #7792 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7792_qec :
    ∃ ψ, SS.IsAmplitudes code_7792 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7792 code_7792_ok (by decide) (by decide)

/-- Catalogue code #7793: ((6,2,2)), m=13, a=[4, 5, 10, 11, 11, 12], S=[0, 7]. -/
def code_7793 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7793_ok : code_7793.OK := by native_decide
/-- Code #7793 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7793_qec :
    ∃ ψ, SS.IsAmplitudes code_7793 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7793 code_7793_ok (by decide) (by decide)

/-- Catalogue code #7794: ((6,2,2)), m=13, a=[4, 5, 10, 11, 12, 12], S=[0, 7]. -/
def code_7794 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7794_ok : code_7794.OK := by native_decide
/-- Code #7794 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7794_qec :
    ∃ ψ, SS.IsAmplitudes code_7794 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7794 code_7794_ok (by decide) (by decide)

/-- Catalogue code #7795: ((6,2,2)), m=13, a=[4, 5, 11, 11, 12, 12], S=[0, 7]. -/
def code_7795 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7795_ok : code_7795.OK := by native_decide
/-- Code #7795 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7795_qec :
    ∃ ψ, SS.IsAmplitudes code_7795 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7795 code_7795_ok (by decide) (by decide)

/-- Catalogue code #7796: ((6,2,2)), m=13, a=[4, 6, 6, 6, 9, 12], S=[0, 8]. -/
def code_7796 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7796_ok : code_7796.OK := by native_decide
/-- Code #7796 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7796_qec :
    ∃ ψ, SS.IsAmplitudes code_7796 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7796 code_7796_ok (by decide) (by decide)

/-- Catalogue code #7797: ((6,2,2)), m=13, a=[4, 6, 6, 7, 9, 10], S=[0, 8]. -/
def code_7797 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7797_ok : code_7797.OK := by native_decide
/-- Code #7797 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7797_qec :
    ∃ ψ, SS.IsAmplitudes code_7797 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7797 code_7797_ok (by decide) (by decide)

/-- Catalogue code #7798: ((6,2,2)), m=13, a=[4, 6, 6, 8, 9, 10], S=[0, 12]. -/
def code_7798 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7798_ok : code_7798.OK := by native_decide
/-- Code #7798 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7798_qec :
    ∃ ψ, SS.IsAmplitudes code_7798 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7798 code_7798_ok (by decide) (by decide)

/-- Catalogue code #7799: ((6,2,2)), m=13, a=[4, 6, 6, 8, 11, 12], S=[0, 3]. -/
def code_7799 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7799_ok : code_7799.OK := by native_decide
/-- Code #7799 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7799_qec :
    ∃ ψ, SS.IsAmplitudes code_7799 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7799 code_7799_ok (by decide) (by decide)

/-- Catalogue code #7800: ((6,2,2)), m=13, a=[4, 6, 6, 9, 10, 11], S=[0, 8]. -/
def code_7800 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7800_ok : code_7800.OK := by native_decide
/-- Code #7800 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7800_qec :
    ∃ ψ, SS.IsAmplitudes code_7800 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7800 code_7800_ok (by decide) (by decide)

/-- Catalogue code #7801: ((6,2,2)), m=13, a=[4, 6, 6, 9, 10, 11], S=[0, 12]. -/
def code_7801 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7801_ok : code_7801.OK := by native_decide
/-- Code #7801 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7801_qec :
    ∃ ψ, SS.IsAmplitudes code_7801 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7801 code_7801_ok (by decide) (by decide)

/-- Catalogue code #7802: ((6,2,2)), m=13, a=[4, 6, 6, 9, 11, 12], S=[0, 8]. -/
def code_7802 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7802_ok : code_7802.OK := by native_decide
/-- Code #7802 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7802_qec :
    ∃ ψ, SS.IsAmplitudes code_7802 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7802 code_7802_ok (by decide) (by decide)

/-- Catalogue code #7803: ((6,2,2)), m=13, a=[4, 6, 6, 9, 12, 12], S=[0, 8]. -/
def code_7803 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7803_ok : code_7803.OK := by native_decide
/-- Code #7803 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7803_qec :
    ∃ ψ, SS.IsAmplitudes code_7803 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7803 code_7803_ok (by decide) (by decide)

/-- Catalogue code #7804: ((6,2,2)), m=13, a=[4, 6, 6, 10, 11, 12], S=[0, 5]. -/
def code_7804 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7804_ok : code_7804.OK := by native_decide
/-- Code #7804 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7804_qec :
    ∃ ψ, SS.IsAmplitudes code_7804 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7804 code_7804_ok (by decide) (by decide)

/-- Catalogue code #7805: ((6,2,2)), m=13, a=[4, 6, 6, 11, 11, 12], S=[0, 10]. -/
def code_7805 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7805_ok : code_7805.OK := by native_decide
/-- Code #7805 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7805_qec :
    ∃ ψ, SS.IsAmplitudes code_7805 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7805 code_7805_ok (by decide) (by decide)

/-- Catalogue code #7806: ((6,2,2)), m=13, a=[4, 6, 6, 11, 12, 12], S=[0, 8]. -/
def code_7806 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7806_ok : code_7806.OK := by native_decide
/-- Code #7806 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7806_qec :
    ∃ ψ, SS.IsAmplitudes code_7806 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7806 code_7806_ok (by decide) (by decide)

/-- Catalogue code #7807: ((6,2,2)), m=13, a=[4, 6, 6, 11, 12, 12], S=[0, 10]. -/
def code_7807 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_7807_ok : code_7807.OK := by native_decide
/-- Code #7807 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7807_qec :
    ∃ ψ, SS.IsAmplitudes code_7807 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7807 code_7807_ok (by decide) (by decide)

/-- Catalogue code #7808: ((6,2,2)), m=13, a=[4, 6, 7, 7, 8, 8], S=[0, 10]. -/
def code_7808 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7808_ok : code_7808.OK := by native_decide
/-- Code #7808 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7808_qec :
    ∃ ψ, SS.IsAmplitudes code_7808 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7808 code_7808_ok (by decide) (by decide)

/-- Catalogue code #7809: ((6,2,2)), m=13, a=[4, 6, 7, 7, 8, 9], S=[0, 10]. -/
def code_7809 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7809_ok : code_7809.OK := by native_decide
/-- Code #7809 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7809_qec :
    ∃ ψ, SS.IsAmplitudes code_7809 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7809 code_7809_ok (by decide) (by decide)

/-- Catalogue code #7810: ((6,2,2)), m=13, a=[4, 6, 7, 8, 8, 10], S=[0, 1]. -/
def code_7810 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7810_ok : code_7810.OK := by native_decide
/-- Code #7810 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7810_qec :
    ∃ ψ, SS.IsAmplitudes code_7810 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7810 code_7810_ok (by decide) (by decide)

/-- Catalogue code #7811: ((6,2,2)), m=13, a=[4, 6, 7, 8, 10, 11], S=[0, 12]. -/
def code_7811 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7811_ok : code_7811.OK := by native_decide
/-- Code #7811 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7811_qec :
    ∃ ψ, SS.IsAmplitudes code_7811 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7811 code_7811_ok (by decide) (by decide)

/-- Catalogue code #7812: ((6,2,2)), m=13, a=[4, 6, 7, 9, 12, 12], S=[0, 2]. -/
def code_7812 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7812_ok : code_7812.OK := by native_decide
/-- Code #7812 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7812_qec :
    ∃ ψ, SS.IsAmplitudes code_7812 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7812 code_7812_ok (by decide) (by decide)

/-- Catalogue code #7813: ((6,2,2)), m=13, a=[4, 6, 7, 10, 10, 12], S=[0, 5]. -/
def code_7813 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7813_ok : code_7813.OK := by native_decide
/-- Code #7813 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7813_qec :
    ∃ ψ, SS.IsAmplitudes code_7813 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7813 code_7813_ok (by decide) (by decide)

/-- Catalogue code #7814: ((6,2,2)), m=13, a=[4, 6, 8, 8, 9, 10], S=[0, 12]. -/
def code_7814 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7814_ok : code_7814.OK := by native_decide
/-- Code #7814 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7814_qec :
    ∃ ψ, SS.IsAmplitudes code_7814 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7814 code_7814_ok (by decide) (by decide)

/-- Catalogue code #7815: ((6,2,2)), m=13, a=[4, 6, 8, 8, 11, 12], S=[0, 3]. -/
def code_7815 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7815_ok : code_7815.OK := by native_decide
/-- Code #7815 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7815_qec :
    ∃ ψ, SS.IsAmplitudes code_7815 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7815 code_7815_ok (by decide) (by decide)

/-- Catalogue code #7816: ((6,2,2)), m=13, a=[4, 6, 8, 9, 10, 12], S=[0, 11]. -/
def code_7816 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-11 : ℚ) / 13)]
theorem code_7816_ok : code_7816.OK := by native_decide
/-- Code #7816 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7816_qec :
    ∃ ψ, SS.IsAmplitudes code_7816 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7816 code_7816_ok (by decide) (by decide)

/-- Catalogue code #7817: ((6,2,2)), m=13, a=[4, 6, 8, 9, 12, 12], S=[0, 2]. -/
def code_7817 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7817_ok : code_7817.OK := by native_decide
/-- Code #7817 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7817_qec :
    ∃ ψ, SS.IsAmplitudes code_7817 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7817 code_7817_ok (by decide) (by decide)

/-- Catalogue code #7818: ((6,2,2)), m=13, a=[4, 6, 8, 11, 11, 12], S=[0, 3]. -/
def code_7818 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7818_ok : code_7818.OK := by native_decide
/-- Code #7818 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7818_qec :
    ∃ ψ, SS.IsAmplitudes code_7818 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7818 code_7818_ok (by decide) (by decide)

/-- Catalogue code #7819: ((6,2,2)), m=13, a=[4, 6, 8, 11, 11, 12], S=[0, 10]. -/
def code_7819 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7819_ok : code_7819.OK := by native_decide
/-- Code #7819 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7819_qec :
    ∃ ψ, SS.IsAmplitudes code_7819 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7819 code_7819_ok (by decide) (by decide)

/-- Catalogue code #7820: ((6,2,2)), m=13, a=[4, 6, 9, 11, 12, 12], S=[0, 5]. -/
def code_7820 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7820_ok : code_7820.OK := by native_decide
/-- Code #7820 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7820_qec :
    ∃ ψ, SS.IsAmplitudes code_7820 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7820 code_7820_ok (by decide) (by decide)

/-- Catalogue code #7821: ((6,2,2)), m=13, a=[4, 6, 9, 11, 12, 12], S=[0, 8]. -/
def code_7821 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7821_ok : code_7821.OK := by native_decide
/-- Code #7821 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7821_qec :
    ∃ ψ, SS.IsAmplitudes code_7821 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7821 code_7821_ok (by decide) (by decide)

/-- Catalogue code #7822: ((6,2,2)), m=13, a=[4, 6, 10, 10, 11, 12], S=[0, 5]. -/
def code_7822 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7822_ok : code_7822.OK := by native_decide
/-- Code #7822 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7822_qec :
    ∃ ψ, SS.IsAmplitudes code_7822 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7822 code_7822_ok (by decide) (by decide)

/-- Catalogue code #7823: ((6,2,2)), m=13, a=[4, 6, 10, 11, 11, 12], S=[0, 5]. -/
def code_7823 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7823_ok : code_7823.OK := by native_decide
/-- Code #7823 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7823_qec :
    ∃ ψ, SS.IsAmplitudes code_7823 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7823 code_7823_ok (by decide) (by decide)

/-- Catalogue code #7824: ((6,2,2)), m=13, a=[4, 6, 10, 11, 12, 12], S=[0, 8]. -/
def code_7824 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7824_ok : code_7824.OK := by native_decide
/-- Code #7824 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7824_qec :
    ∃ ψ, SS.IsAmplitudes code_7824 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7824 code_7824_ok (by decide) (by decide)

/-- Catalogue code #7825: ((6,2,2)), m=13, a=[4, 6, 11, 11, 12, 12], S=[0, 10]. -/
def code_7825 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7825_ok : code_7825.OK := by native_decide
/-- Code #7825 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7825_qec :
    ∃ ψ, SS.IsAmplitudes code_7825 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7825 code_7825_ok (by decide) (by decide)

/-- Catalogue code #7826: ((6,2,2)), m=13, a=[4, 7, 7, 8, 8, 9], S=[0, 1]. -/
def code_7826 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7826_ok : code_7826.OK := by native_decide
/-- Code #7826 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7826_qec :
    ∃ ψ, SS.IsAmplitudes code_7826 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7826 code_7826_ok (by decide) (by decide)

/-- Catalogue code #7827: ((6,2,2)), m=13, a=[4, 7, 7, 8, 8, 9], S=[0, 10]. -/
def code_7827 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7827_ok : code_7827.OK := by native_decide
/-- Code #7827 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7827_qec :
    ∃ ψ, SS.IsAmplitudes code_7827 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7827 code_7827_ok (by decide) (by decide)

/-- Catalogue code #7828: ((6,2,2)), m=13, a=[4, 7, 7, 8, 8, 10], S=[0, 1]. -/
def code_7828 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7828_ok : code_7828.OK := by native_decide
/-- Code #7828 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7828_qec :
    ∃ ψ, SS.IsAmplitudes code_7828 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7828 code_7828_ok (by decide) (by decide)

/-- Catalogue code #7829: ((6,2,2)), m=13, a=[4, 7, 7, 8, 8, 12], S=[0, 10]. -/
def code_7829 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7829_ok : code_7829.OK := by native_decide
/-- Code #7829 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7829_qec :
    ∃ ψ, SS.IsAmplitudes code_7829 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7829 code_7829_ok (by decide) (by decide)

/-- Catalogue code #7830: ((6,2,2)), m=13, a=[4, 7, 7, 8, 9, 9], S=[0, 12]. -/
def code_7830 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7830_ok : code_7830.OK := by native_decide
/-- Code #7830 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7830_qec :
    ∃ ψ, SS.IsAmplitudes code_7830 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7830 code_7830_ok (by decide) (by decide)

/-- Catalogue code #7831: ((6,2,2)), m=13, a=[4, 7, 7, 8, 9, 12], S=[0, 10]. -/
def code_7831 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7831_ok : code_7831.OK := by native_decide
/-- Code #7831 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7831_qec :
    ∃ ψ, SS.IsAmplitudes code_7831 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7831 code_7831_ok (by decide) (by decide)

/-- Catalogue code #7832: ((6,2,2)), m=13, a=[4, 7, 7, 8, 9, 12], S=[0, 11]. -/
def code_7832 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_7832_ok : code_7832.OK := by native_decide
/-- Code #7832 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7832_qec :
    ∃ ψ, SS.IsAmplitudes code_7832 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7832 code_7832_ok (by decide) (by decide)

/-- Catalogue code #7833: ((6,2,2)), m=13, a=[4, 7, 7, 8, 10, 10], S=[0, 12]. -/
def code_7833 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7833_ok : code_7833.OK := by native_decide
/-- Code #7833 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7833_qec :
    ∃ ψ, SS.IsAmplitudes code_7833 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7833 code_7833_ok (by decide) (by decide)

/-- Catalogue code #7834: ((6,2,2)), m=13, a=[4, 7, 7, 8, 10, 11], S=[0, 12]. -/
def code_7834 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7834_ok : code_7834.OK := by native_decide
/-- Code #7834 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7834_qec :
    ∃ ψ, SS.IsAmplitudes code_7834 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7834 code_7834_ok (by decide) (by decide)

/-- Catalogue code #7835: ((6,2,2)), m=13, a=[4, 7, 7, 8, 10, 12], S=[0, 11]. -/
def code_7835 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7835_ok : code_7835.OK := by native_decide
/-- Code #7835 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7835_qec :
    ∃ ψ, SS.IsAmplitudes code_7835 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7835 code_7835_ok (by decide) (by decide)

/-- Catalogue code #7836: ((6,2,2)), m=13, a=[4, 7, 7, 8, 11, 11], S=[0, 12]. -/
def code_7836 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7836_ok : code_7836.OK := by native_decide
/-- Code #7836 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7836_qec :
    ∃ ψ, SS.IsAmplitudes code_7836 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7836 code_7836_ok (by decide) (by decide)

/-- Catalogue code #7837: ((6,2,2)), m=13, a=[4, 7, 7, 9, 10, 11], S=[0, 1]. -/
def code_7837 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7837_ok : code_7837.OK := by native_decide
/-- Code #7837 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7837_qec :
    ∃ ψ, SS.IsAmplitudes code_7837 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7837 code_7837_ok (by decide) (by decide)

/-- Catalogue code #7838: ((6,2,2)), m=13, a=[4, 7, 7, 9, 10, 11], S=[0, 8]. -/
def code_7838 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7838_ok : code_7838.OK := by native_decide
/-- Code #7838 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7838_qec :
    ∃ ψ, SS.IsAmplitudes code_7838 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7838 code_7838_ok (by decide) (by decide)

/-- Catalogue code #7839: ((6,2,2)), m=13, a=[4, 7, 7, 9, 10, 12], S=[0, 2]. -/
def code_7839 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7839_ok : code_7839.OK := by native_decide
/-- Code #7839 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7839_qec :
    ∃ ψ, SS.IsAmplitudes code_7839 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7839 code_7839_ok (by decide) (by decide)

/-- Catalogue code #7840: ((6,2,2)), m=13, a=[4, 7, 7, 9, 10, 12], S=[0, 5]. -/
def code_7840 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7840_ok : code_7840.OK := by native_decide
/-- Code #7840 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7840_qec :
    ∃ ψ, SS.IsAmplitudes code_7840 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7840 code_7840_ok (by decide) (by decide)

/-- Catalogue code #7841: ((6,2,2)), m=13, a=[4, 7, 7, 9, 10, 12], S=[0, 8]. -/
def code_7841 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7841_ok : code_7841.OK := by native_decide
/-- Code #7841 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7841_qec :
    ∃ ψ, SS.IsAmplitudes code_7841 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7841 code_7841_ok (by decide) (by decide)

/-- Catalogue code #7842: ((6,2,2)), m=13, a=[4, 7, 7, 9, 11, 12], S=[0, 3]. -/
def code_7842 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7842_ok : code_7842.OK := by native_decide
/-- Code #7842 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7842_qec :
    ∃ ψ, SS.IsAmplitudes code_7842 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7842 code_7842_ok (by decide) (by decide)

/-- Catalogue code #7843: ((6,2,2)), m=13, a=[4, 7, 7, 9, 11, 12], S=[0, 8]. -/
def code_7843 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7843_ok : code_7843.OK := by native_decide
/-- Code #7843 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7843_qec :
    ∃ ψ, SS.IsAmplitudes code_7843 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7843 code_7843_ok (by decide) (by decide)

/-- Catalogue code #7844: ((6,2,2)), m=13, a=[4, 7, 7, 10, 11, 11], S=[0, 12]. -/
def code_7844 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7844_ok : code_7844.OK := by native_decide
/-- Code #7844 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7844_qec :
    ∃ ψ, SS.IsAmplitudes code_7844 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7844 code_7844_ok (by decide) (by decide)

/-- Catalogue code #7845: ((6,2,2)), m=13, a=[4, 7, 7, 10, 11, 12], S=[0, 8]. -/
def code_7845 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7845_ok : code_7845.OK := by native_decide
/-- Code #7845 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7845_qec :
    ∃ ψ, SS.IsAmplitudes code_7845 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7845 code_7845_ok (by decide) (by decide)

/-- Catalogue code #7846: ((6,2,2)), m=13, a=[4, 7, 7, 10, 12, 12], S=[0, 2]. -/
def code_7846 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7846_ok : code_7846.OK := by native_decide
/-- Code #7846 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7846_qec :
    ∃ ψ, SS.IsAmplitudes code_7846 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7846 code_7846_ok (by decide) (by decide)

/-- Catalogue code #7847: ((6,2,2)), m=13, a=[4, 7, 7, 11, 11, 12], S=[0, 3]. -/
def code_7847 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7847_ok : code_7847.OK := by native_decide
/-- Code #7847 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7847_qec :
    ∃ ψ, SS.IsAmplitudes code_7847 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7847 code_7847_ok (by decide) (by decide)

/-- Catalogue code #7848: ((6,2,2)), m=13, a=[4, 7, 7, 11, 12, 12], S=[0, 3]. -/
def code_7848 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-11 : ℚ) / 13)]
theorem code_7848_ok : code_7848.OK := by native_decide
/-- Code #7848 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7848_qec :
    ∃ ψ, SS.IsAmplitudes code_7848 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7848 code_7848_ok (by decide) (by decide)

/-- Catalogue code #7849: ((6,2,2)), m=13, a=[4, 7, 7, 11, 12, 12], S=[0, 5]. -/
def code_7849 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7849_ok : code_7849.OK := by native_decide
/-- Code #7849 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7849_qec :
    ∃ ψ, SS.IsAmplitudes code_7849 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7849 code_7849_ok (by decide) (by decide)

/-- Catalogue code #7850: ((6,2,2)), m=13, a=[4, 7, 8, 8, 10, 10], S=[0, 1]. -/
def code_7850 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7850_ok : code_7850.OK := by native_decide
/-- Code #7850 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7850_qec :
    ∃ ψ, SS.IsAmplitudes code_7850 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7850 code_7850_ok (by decide) (by decide)

/-- Catalogue code #7851: ((6,2,2)), m=13, a=[4, 7, 8, 8, 10, 12], S=[0, 11]. -/
def code_7851 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7851_ok : code_7851.OK := by native_decide
/-- Code #7851 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7851_qec :
    ∃ ψ, SS.IsAmplitudes code_7851 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7851 code_7851_ok (by decide) (by decide)

/-- Catalogue code #7852: ((6,2,2)), m=13, a=[4, 7, 8, 8, 11, 12], S=[0, 10]. -/
def code_7852 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7852_ok : code_7852.OK := by native_decide
/-- Code #7852 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7852_qec :
    ∃ ψ, SS.IsAmplitudes code_7852 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7852 code_7852_ok (by decide) (by decide)

/-- Catalogue code #7853: ((6,2,2)), m=13, a=[4, 7, 8, 8, 12, 12], S=[0, 2]. -/
def code_7853 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7853_ok : code_7853.OK := by native_decide
/-- Code #7853 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7853_qec :
    ∃ ψ, SS.IsAmplitudes code_7853 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7853 code_7853_ok (by decide) (by decide)

/-- Catalogue code #7854: ((6,2,2)), m=13, a=[4, 7, 8, 8, 12, 12], S=[0, 10]. -/
def code_7854 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7854_ok : code_7854.OK := by native_decide
/-- Code #7854 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7854_qec :
    ∃ ψ, SS.IsAmplitudes code_7854 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7854 code_7854_ok (by decide) (by decide)

/-- Catalogue code #7855: ((6,2,2)), m=13, a=[4, 7, 8, 9, 10, 10], S=[0, 11]. -/
def code_7855 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7855_ok : code_7855.OK := by native_decide
/-- Code #7855 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7855_qec :
    ∃ ψ, SS.IsAmplitudes code_7855 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7855 code_7855_ok (by decide) (by decide)

/-- Catalogue code #7856: ((6,2,2)), m=13, a=[4, 7, 8, 9, 11, 11], S=[0, 12]. -/
def code_7856 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7856_ok : code_7856.OK := by native_decide
/-- Code #7856 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7856_qec :
    ∃ ψ, SS.IsAmplitudes code_7856 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7856 code_7856_ok (by decide) (by decide)

/-- Catalogue code #7857: ((6,2,2)), m=13, a=[4, 7, 8, 9, 12, 12], S=[0, 2]. -/
def code_7857 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7857_ok : code_7857.OK := by native_decide
/-- Code #7857 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7857_qec :
    ∃ ψ, SS.IsAmplitudes code_7857 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7857 code_7857_ok (by decide) (by decide)

/-- Catalogue code #7858: ((6,2,2)), m=13, a=[4, 7, 8, 9, 12, 12], S=[0, 11]. -/
def code_7858 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7858_ok : code_7858.OK := by native_decide
/-- Code #7858 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7858_qec :
    ∃ ψ, SS.IsAmplitudes code_7858 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7858 code_7858_ok (by decide) (by decide)

/-- Catalogue code #7859: ((6,2,2)), m=13, a=[4, 7, 8, 10, 10, 11], S=[0, 12]. -/
def code_7859 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7859_ok : code_7859.OK := by native_decide
/-- Code #7859 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7859_qec :
    ∃ ψ, SS.IsAmplitudes code_7859 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7859 code_7859_ok (by decide) (by decide)

/-- Catalogue code #7860: ((6,2,2)), m=13, a=[4, 7, 8, 10, 10, 12], S=[0, 11]. -/
def code_7860 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7860_ok : code_7860.OK := by native_decide
/-- Code #7860 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7860_qec :
    ∃ ψ, SS.IsAmplitudes code_7860 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7860 code_7860_ok (by decide) (by decide)

/-- Catalogue code #7861: ((6,2,2)), m=13, a=[4, 7, 8, 10, 12, 12], S=[0, 11]. -/
def code_7861 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7861_ok : code_7861.OK := by native_decide
/-- Code #7861 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7861_qec :
    ∃ ψ, SS.IsAmplitudes code_7861 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7861 code_7861_ok (by decide) (by decide)

/-- Catalogue code #7862: ((6,2,2)), m=13, a=[4, 7, 8, 11, 12, 12], S=[0, 10]. -/
def code_7862 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7862_ok : code_7862.OK := by native_decide
/-- Code #7862 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7862_qec :
    ∃ ψ, SS.IsAmplitudes code_7862 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7862 code_7862_ok (by decide) (by decide)

/-- Catalogue code #7863: ((6,2,2)), m=13, a=[4, 7, 9, 10, 11, 12], S=[0, 8]. -/
def code_7863 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7863_ok : code_7863.OK := by native_decide
/-- Code #7863 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7863_qec :
    ∃ ψ, SS.IsAmplitudes code_7863 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7863 code_7863_ok (by decide) (by decide)

/-- Catalogue code #7864: ((6,2,2)), m=13, a=[4, 7, 9, 11, 12, 12], S=[0, 5]. -/
def code_7864 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7864_ok : code_7864.OK := by native_decide
/-- Code #7864 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7864_qec :
    ∃ ψ, SS.IsAmplitudes code_7864 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7864 code_7864_ok (by decide) (by decide)

/-- Catalogue code #7865: ((6,2,2)), m=13, a=[4, 7, 10, 10, 12, 12], S=[0, 11]. -/
def code_7865 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7865_ok : code_7865.OK := by native_decide
/-- Code #7865 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7865_qec :
    ∃ ψ, SS.IsAmplitudes code_7865 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7865 code_7865_ok (by decide) (by decide)

/-- Catalogue code #7866: ((6,2,2)), m=13, a=[4, 7, 10, 11, 11, 12], S=[0, 8]. -/
def code_7866 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7866_ok : code_7866.OK := by native_decide
/-- Code #7866 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7866_qec :
    ∃ ψ, SS.IsAmplitudes code_7866 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7866 code_7866_ok (by decide) (by decide)

/-- Catalogue code #7867: ((6,2,2)), m=13, a=[4, 7, 10, 11, 12, 12], S=[0, 8]. -/
def code_7867 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7867_ok : code_7867.OK := by native_decide
/-- Code #7867 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7867_qec :
    ∃ ψ, SS.IsAmplitudes code_7867 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7867 code_7867_ok (by decide) (by decide)

/-- Catalogue code #7868: ((6,2,2)), m=13, a=[4, 8, 8, 9, 10, 12], S=[0, 6]. -/
def code_7868 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7868_ok : code_7868.OK := by native_decide
/-- Code #7868 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7868_qec :
    ∃ ψ, SS.IsAmplitudes code_7868 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7868 code_7868_ok (by decide) (by decide)

/-- Catalogue code #7869: ((6,2,2)), m=13, a=[4, 8, 8, 11, 11, 12], S=[0, 3]. -/
def code_7869 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7869_ok : code_7869.OK := by native_decide
/-- Code #7869 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7869_qec :
    ∃ ψ, SS.IsAmplitudes code_7869 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7869 code_7869_ok (by decide) (by decide)

/-- Catalogue code #7870: ((6,2,2)), m=13, a=[4, 8, 8, 11, 12, 12], S=[0, 6]. -/
def code_7870 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7870_ok : code_7870.OK := by native_decide
/-- Code #7870 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7870_qec :
    ∃ ψ, SS.IsAmplitudes code_7870 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7870 code_7870_ok (by decide) (by decide)

/-- Catalogue code #7871: ((6,2,2)), m=13, a=[4, 8, 9, 11, 12, 12], S=[0, 6]. -/
def code_7871 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7871_ok : code_7871.OK := by native_decide
/-- Code #7871 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7871_qec :
    ∃ ψ, SS.IsAmplitudes code_7871 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7871 code_7871_ok (by decide) (by decide)

/-- Catalogue code #7872: ((6,2,2)), m=13, a=[4, 8, 10, 10, 11, 12], S=[0, 7]. -/
def code_7872 : ExampleData 6 13 2 where
  a := ![(4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7872_ok : code_7872.OK := by native_decide
/-- Code #7872 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7872_qec :
    ∃ ψ, SS.IsAmplitudes code_7872 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7872 code_7872_ok (by decide) (by decide)

/-- Catalogue code #7873: ((6,2,2)), m=13, a=[5, 5, 5, 9, 12, 12], S=[0, 11]. -/
def code_7873 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7873_ok : code_7873.OK := by native_decide
/-- Code #7873 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7873_qec :
    ∃ ψ, SS.IsAmplitudes code_7873 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7873 code_7873_ok (by decide) (by decide)

/-- Catalogue code #7874: ((6,2,2)), m=13, a=[5, 5, 6, 6, 7, 9], S=[0, 3]. -/
def code_7874 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7874_ok : code_7874.OK := by native_decide
/-- Code #7874 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7874_qec :
    ∃ ψ, SS.IsAmplitudes code_7874 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7874 code_7874_ok (by decide) (by decide)

/-- Catalogue code #7875: ((6,2,2)), m=13, a=[5, 5, 6, 6, 9, 10], S=[0, 12]. -/
def code_7875 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7875_ok : code_7875.OK := by native_decide
/-- Code #7875 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7875_qec :
    ∃ ψ, SS.IsAmplitudes code_7875 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7875 code_7875_ok (by decide) (by decide)

/-- Catalogue code #7876: ((6,2,2)), m=13, a=[5, 5, 6, 7, 9, 9], S=[0, 12]. -/
def code_7876 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7876_ok : code_7876.OK := by native_decide
/-- Code #7876 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7876_qec :
    ∃ ψ, SS.IsAmplitudes code_7876 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7876 code_7876_ok (by decide) (by decide)

/-- Catalogue code #7877: ((6,2,2)), m=13, a=[5, 5, 6, 7, 9, 10], S=[0, 1]. -/
def code_7877 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7877_ok : code_7877.OK := by native_decide
/-- Code #7877 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7877_qec :
    ∃ ψ, SS.IsAmplitudes code_7877 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7877 code_7877_ok (by decide) (by decide)

/-- Catalogue code #7878: ((6,2,2)), m=13, a=[5, 5, 6, 7, 9, 11], S=[0, 3]. -/
def code_7878 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7878_ok : code_7878.OK := by native_decide
/-- Code #7878 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7878_qec :
    ∃ ψ, SS.IsAmplitudes code_7878 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7878 code_7878_ok (by decide) (by decide)

/-- Catalogue code #7879: ((6,2,2)), m=13, a=[5, 5, 6, 7, 9, 12], S=[0, 3]. -/
def code_7879 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7879_ok : code_7879.OK := by native_decide
/-- Code #7879 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7879_qec :
    ∃ ψ, SS.IsAmplitudes code_7879 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7879 code_7879_ok (by decide) (by decide)

/-- Catalogue code #7880: ((6,2,2)), m=13, a=[5, 5, 6, 7, 10, 11], S=[0, 1]. -/
def code_7880 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7880_ok : code_7880.OK := by native_decide
/-- Code #7880 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7880_qec :
    ∃ ψ, SS.IsAmplitudes code_7880 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7880 code_7880_ok (by decide) (by decide)

/-- Catalogue code #7881: ((6,2,2)), m=13, a=[5, 5, 6, 7, 10, 12], S=[0, 9]. -/
def code_7881 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7881_ok : code_7881.OK := by native_decide
/-- Code #7881 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7881_qec :
    ∃ ψ, SS.IsAmplitudes code_7881 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7881 code_7881_ok (by decide) (by decide)

/-- Catalogue code #7882: ((6,2,2)), m=13, a=[5, 5, 6, 7, 11, 12], S=[0, 3]. -/
def code_7882 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7882_ok : code_7882.OK := by native_decide
/-- Code #7882 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7882_qec :
    ∃ ψ, SS.IsAmplitudes code_7882 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7882 code_7882_ok (by decide) (by decide)

/-- Catalogue code #7883: ((6,2,2)), m=13, a=[5, 5, 6, 9, 9, 10], S=[0, 2]. -/
def code_7883 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7883_ok : code_7883.OK := by native_decide
/-- Code #7883 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7883_qec :
    ∃ ψ, SS.IsAmplitudes code_7883 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7883 code_7883_ok (by decide) (by decide)

/-- Catalogue code #7884: ((6,2,2)), m=13, a=[5, 5, 6, 9, 9, 10], S=[0, 12]. -/
def code_7884 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7884_ok : code_7884.OK := by native_decide
/-- Code #7884 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7884_qec :
    ∃ ψ, SS.IsAmplitudes code_7884 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7884 code_7884_ok (by decide) (by decide)

/-- Catalogue code #7885: ((6,2,2)), m=13, a=[5, 5, 6, 9, 10, 10], S=[0, 2]. -/
def code_7885 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7885_ok : code_7885.OK := by native_decide
/-- Code #7885 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7885_qec :
    ∃ ψ, SS.IsAmplitudes code_7885 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7885 code_7885_ok (by decide) (by decide)

/-- Catalogue code #7886: ((6,2,2)), m=13, a=[5, 5, 6, 9, 10, 10], S=[0, 12]. -/
def code_7886 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7886_ok : code_7886.OK := by native_decide
/-- Code #7886 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7886_qec :
    ∃ ψ, SS.IsAmplitudes code_7886 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7886 code_7886_ok (by decide) (by decide)

/-- Catalogue code #7887: ((6,2,2)), m=13, a=[5, 5, 6, 9, 10, 11], S=[0, 1]. -/
def code_7887 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7887_ok : code_7887.OK := by native_decide
/-- Code #7887 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7887_qec :
    ∃ ψ, SS.IsAmplitudes code_7887 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7887 code_7887_ok (by decide) (by decide)

/-- Catalogue code #7888: ((6,2,2)), m=13, a=[5, 5, 6, 9, 11, 12], S=[0, 3]. -/
def code_7888 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((9 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7888_ok : code_7888.OK := by native_decide
/-- Code #7888 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7888_qec :
    ∃ ψ, SS.IsAmplitudes code_7888 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7888 code_7888_ok (by decide) (by decide)

/-- Catalogue code #7889: ((6,2,2)), m=13, a=[5, 5, 6, 9, 11, 12], S=[0, 10]. -/
def code_7889 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7889_ok : code_7889.OK := by native_decide
/-- Code #7889 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7889_qec :
    ∃ ψ, SS.IsAmplitudes code_7889 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7889 code_7889_ok (by decide) (by decide)

/-- Catalogue code #7890: ((6,2,2)), m=13, a=[5, 5, 6, 10, 10, 11], S=[0, 4]. -/
def code_7890 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7890_ok : code_7890.OK := by native_decide
/-- Code #7890 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7890_qec :
    ∃ ψ, SS.IsAmplitudes code_7890 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7890 code_7890_ok (by decide) (by decide)

/-- Catalogue code #7891: ((6,2,2)), m=13, a=[5, 5, 6, 10, 11, 12], S=[0, 9]. -/
def code_7891 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7891_ok : code_7891.OK := by native_decide
/-- Code #7891 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7891_qec :
    ∃ ψ, SS.IsAmplitudes code_7891 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7891 code_7891_ok (by decide) (by decide)

/-- Catalogue code #7892: ((6,2,2)), m=13, a=[5, 5, 6, 10, 12, 12], S=[0, 2]. -/
def code_7892 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7892_ok : code_7892.OK := by native_decide
/-- Code #7892 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7892_qec :
    ∃ ψ, SS.IsAmplitudes code_7892 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7892 code_7892_ok (by decide) (by decide)

/-- Catalogue code #7893: ((6,2,2)), m=13, a=[5, 5, 6, 10, 12, 12], S=[0, 9]. -/
def code_7893 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7893_ok : code_7893.OK := by native_decide
/-- Code #7893 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7893_qec :
    ∃ ψ, SS.IsAmplitudes code_7893 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7893 code_7893_ok (by decide) (by decide)

/-- Catalogue code #7894: ((6,2,2)), m=13, a=[5, 5, 7, 7, 9, 10], S=[0, 1]. -/
def code_7894 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7894_ok : code_7894.OK := by native_decide
/-- Code #7894 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7894_qec :
    ∃ ψ, SS.IsAmplitudes code_7894 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7894 code_7894_ok (by decide) (by decide)

/-- Catalogue code #7895: ((6,2,2)), m=13, a=[5, 5, 7, 7, 9, 12], S=[0, 3]. -/
def code_7895 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7895_ok : code_7895.OK := by native_decide
/-- Code #7895 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7895_qec :
    ∃ ψ, SS.IsAmplitudes code_7895 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7895 code_7895_ok (by decide) (by decide)

/-- Catalogue code #7896: ((6,2,2)), m=13, a=[5, 5, 7, 7, 10, 12], S=[0, 4]. -/
def code_7896 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7896_ok : code_7896.OK := by native_decide
/-- Code #7896 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7896_qec :
    ∃ ψ, SS.IsAmplitudes code_7896 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7896 code_7896_ok (by decide) (by decide)

/-- Catalogue code #7897: ((6,2,2)), m=13, a=[5, 5, 7, 8, 9, 9], S=[0, 2]. -/
def code_7897 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7897_ok : code_7897.OK := by native_decide
/-- Code #7897 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7897_qec :
    ∃ ψ, SS.IsAmplitudes code_7897 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7897 code_7897_ok (by decide) (by decide)

/-- Catalogue code #7898: ((6,2,2)), m=13, a=[5, 5, 7, 8, 11, 11], S=[0, 4]. -/
def code_7898 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7898_ok : code_7898.OK := by native_decide
/-- Code #7898 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7898_qec :
    ∃ ψ, SS.IsAmplitudes code_7898 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7898 code_7898_ok (by decide) (by decide)

/-- Catalogue code #7899: ((6,2,2)), m=13, a=[5, 5, 7, 9, 9, 10], S=[0, 12]. -/
def code_7899 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7899_ok : code_7899.OK := by native_decide
/-- Code #7899 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7899_qec :
    ∃ ψ, SS.IsAmplitudes code_7899 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7899 code_7899_ok (by decide) (by decide)

/-- Catalogue code #7900: ((6,2,2)), m=13, a=[5, 5, 7, 9, 10, 10], S=[0, 11]. -/
def code_7900 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7900_ok : code_7900.OK := by native_decide
/-- Code #7900 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7900_qec :
    ∃ ψ, SS.IsAmplitudes code_7900 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7900 code_7900_ok (by decide) (by decide)

/-- Catalogue code #7901: ((6,2,2)), m=13, a=[5, 5, 7, 9, 10, 11], S=[0, 1]. -/
def code_7901 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7901_ok : code_7901.OK := by native_decide
/-- Code #7901 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7901_qec :
    ∃ ψ, SS.IsAmplitudes code_7901 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7901 code_7901_ok (by decide) (by decide)

/-- Catalogue code #7902: ((6,2,2)), m=13, a=[5, 5, 7, 9, 10, 12], S=[0, 11]. -/
def code_7902 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7902_ok : code_7902.OK := by native_decide
/-- Code #7902 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7902_qec :
    ∃ ψ, SS.IsAmplitudes code_7902 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7902 code_7902_ok (by decide) (by decide)

/-- Catalogue code #7903: ((6,2,2)), m=13, a=[5, 5, 7, 9, 11, 12], S=[0, 3]. -/
def code_7903 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7903_ok : code_7903.OK := by native_decide
/-- Code #7903 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7903_qec :
    ∃ ψ, SS.IsAmplitudes code_7903 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7903 code_7903_ok (by decide) (by decide)

/-- Catalogue code #7904: ((6,2,2)), m=13, a=[5, 5, 7, 10, 10, 12], S=[0, 4]. -/
def code_7904 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7904_ok : code_7904.OK := by native_decide
/-- Code #7904 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7904_qec :
    ∃ ψ, SS.IsAmplitudes code_7904 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7904 code_7904_ok (by decide) (by decide)

/-- Catalogue code #7905: ((6,2,2)), m=13, a=[5, 5, 7, 10, 10, 12], S=[0, 11]. -/
def code_7905 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7905_ok : code_7905.OK := by native_decide
/-- Code #7905 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7905_qec :
    ∃ ψ, SS.IsAmplitudes code_7905 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7905 code_7905_ok (by decide) (by decide)

/-- Catalogue code #7906: ((6,2,2)), m=13, a=[5, 5, 7, 10, 11, 11], S=[0, 9]. -/
def code_7906 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7906_ok : code_7906.OK := by native_decide
/-- Code #7906 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7906_qec :
    ∃ ψ, SS.IsAmplitudes code_7906 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7906 code_7906_ok (by decide) (by decide)

/-- Catalogue code #7907: ((6,2,2)), m=13, a=[5, 5, 7, 10, 11, 12], S=[0, 9]. -/
def code_7907 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7907_ok : code_7907.OK := by native_decide
/-- Code #7907 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7907_qec :
    ∃ ψ, SS.IsAmplitudes code_7907 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7907 code_7907_ok (by decide) (by decide)

/-- Catalogue code #7908: ((6,2,2)), m=13, a=[5, 5, 7, 10, 12, 12], S=[0, 2]. -/
def code_7908 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7908_ok : code_7908.OK := by native_decide
/-- Code #7908 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7908_qec :
    ∃ ψ, SS.IsAmplitudes code_7908 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7908 code_7908_ok (by decide) (by decide)

/-- Catalogue code #7909: ((6,2,2)), m=13, a=[5, 5, 7, 11, 11, 12], S=[0, 3]. -/
def code_7909 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7909_ok : code_7909.OK := by native_decide
/-- Code #7909 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7909_qec :
    ∃ ψ, SS.IsAmplitudes code_7909 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7909 code_7909_ok (by decide) (by decide)

/-- Catalogue code #7910: ((6,2,2)), m=13, a=[5, 5, 7, 11, 11, 12], S=[0, 9]. -/
def code_7910 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7910_ok : code_7910.OK := by native_decide
/-- Code #7910 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7910_qec :
    ∃ ψ, SS.IsAmplitudes code_7910 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7910 code_7910_ok (by decide) (by decide)

/-- Catalogue code #7911: ((6,2,2)), m=13, a=[5, 5, 7, 11, 12, 12], S=[0, 3]. -/
def code_7911 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7911_ok : code_7911.OK := by native_decide
/-- Code #7911 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7911_qec :
    ∃ ψ, SS.IsAmplitudes code_7911 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7911 code_7911_ok (by decide) (by decide)

/-- Catalogue code #7912: ((6,2,2)), m=13, a=[5, 5, 7, 11, 12, 12], S=[0, 10]. -/
def code_7912 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7912_ok : code_7912.OK := by native_decide
/-- Code #7912 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7912_qec :
    ∃ ψ, SS.IsAmplitudes code_7912 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7912 code_7912_ok (by decide) (by decide)

/-- Catalogue code #7913: ((6,2,2)), m=13, a=[5, 5, 9, 9, 10, 10], S=[0, 2]. -/
def code_7913 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7913_ok : code_7913.OK := by native_decide
/-- Code #7913 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7913_qec :
    ∃ ψ, SS.IsAmplitudes code_7913 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7913 code_7913_ok (by decide) (by decide)

/-- Catalogue code #7914: ((6,2,2)), m=13, a=[5, 5, 9, 9, 10, 10], S=[0, 7]. -/
def code_7914 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7914_ok : code_7914.OK := by native_decide
/-- Code #7914 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7914_qec :
    ∃ ψ, SS.IsAmplitudes code_7914 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7914 code_7914_ok (by decide) (by decide)

/-- Catalogue code #7915: ((6,2,2)), m=13, a=[5, 5, 9, 9, 10, 11], S=[0, 12]. -/
def code_7915 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7915_ok : code_7915.OK := by native_decide
/-- Code #7915 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7915_qec :
    ∃ ψ, SS.IsAmplitudes code_7915 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7915 code_7915_ok (by decide) (by decide)

/-- Catalogue code #7916: ((6,2,2)), m=13, a=[5, 5, 9, 9, 11, 12], S=[0, 10]. -/
def code_7916 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7916_ok : code_7916.OK := by native_decide
/-- Code #7916 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7916_qec :
    ∃ ψ, SS.IsAmplitudes code_7916 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7916 code_7916_ok (by decide) (by decide)

/-- Catalogue code #7917: ((6,2,2)), m=13, a=[5, 5, 9, 10, 10, 11], S=[0, 7]. -/
def code_7917 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7917_ok : code_7917.OK := by native_decide
/-- Code #7917 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7917_qec :
    ∃ ψ, SS.IsAmplitudes code_7917 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7917 code_7917_ok (by decide) (by decide)

/-- Catalogue code #7918: ((6,2,2)), m=13, a=[5, 5, 9, 10, 10, 12], S=[0, 6]. -/
def code_7918 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7918_ok : code_7918.OK := by native_decide
/-- Code #7918 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7918_qec :
    ∃ ψ, SS.IsAmplitudes code_7918 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7918 code_7918_ok (by decide) (by decide)

/-- Catalogue code #7919: ((6,2,2)), m=13, a=[5, 5, 9, 10, 11, 12], S=[0, 6]. -/
def code_7919 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7919_ok : code_7919.OK := by native_decide
/-- Code #7919 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7919_qec :
    ∃ ψ, SS.IsAmplitudes code_7919 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7919 code_7919_ok (by decide) (by decide)

/-- Catalogue code #7920: ((6,2,2)), m=13, a=[5, 5, 9, 11, 11, 12], S=[0, 10]. -/
def code_7920 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7920_ok : code_7920.OK := by native_decide
/-- Code #7920 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7920_qec :
    ∃ ψ, SS.IsAmplitudes code_7920 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7920 code_7920_ok (by decide) (by decide)

/-- Catalogue code #7921: ((6,2,2)), m=13, a=[5, 6, 6, 6, 8, 9], S=[0, 10]. -/
def code_7921 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7921_ok : code_7921.OK := by native_decide
/-- Code #7921 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7921_qec :
    ∃ ψ, SS.IsAmplitudes code_7921 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7921 code_7921_ok (by decide) (by decide)

/-- Catalogue code #7922: ((6,2,2)), m=13, a=[5, 6, 6, 8, 9, 9], S=[0, 1]. -/
def code_7922 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7922_ok : code_7922.OK := by native_decide
/-- Code #7922 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7922_qec :
    ∃ ψ, SS.IsAmplitudes code_7922 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7922 code_7922_ok (by decide) (by decide)

/-- Catalogue code #7923: ((6,2,2)), m=13, a=[5, 6, 6, 8, 9, 9], S=[0, 10]. -/
def code_7923 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7923_ok : code_7923.OK := by native_decide
/-- Code #7923 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7923_qec :
    ∃ ψ, SS.IsAmplitudes code_7923 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7923 code_7923_ok (by decide) (by decide)

/-- Catalogue code #7924: ((6,2,2)), m=13, a=[5, 6, 6, 8, 9, 10], S=[0, 1]. -/
def code_7924 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7924_ok : code_7924.OK := by native_decide
/-- Code #7924 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7924_qec :
    ∃ ψ, SS.IsAmplitudes code_7924 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7924 code_7924_ok (by decide) (by decide)

/-- Catalogue code #7925: ((6,2,2)), m=13, a=[5, 6, 6, 8, 9, 12], S=[0, 10]. -/
def code_7925 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7925_ok : code_7925.OK := by native_decide
/-- Code #7925 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7925_qec :
    ∃ ψ, SS.IsAmplitudes code_7925 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7925 code_7925_ok (by decide) (by decide)

/-- Catalogue code #7926: ((6,2,2)), m=13, a=[5, 6, 6, 8, 10, 12], S=[0, 4]. -/
def code_7926 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7926_ok : code_7926.OK := by native_decide
/-- Code #7926 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7926_qec :
    ∃ ψ, SS.IsAmplitudes code_7926 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7926 code_7926_ok (by decide) (by decide)

/-- Catalogue code #7927: ((6,2,2)), m=13, a=[5, 6, 6, 9, 9, 12], S=[0, 10]. -/
def code_7927 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-11 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7927_ok : code_7927.OK := by native_decide
/-- Code #7927 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7927_qec :
    ∃ ψ, SS.IsAmplitudes code_7927 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7927 code_7927_ok (by decide) (by decide)

/-- Catalogue code #7928: ((6,2,2)), m=13, a=[5, 6, 6, 9, 9, 12], S=[0, 11]. -/
def code_7928 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_7928_ok : code_7928.OK := by native_decide
/-- Code #7928 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7928_qec :
    ∃ ψ, SS.IsAmplitudes code_7928 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7928 code_7928_ok (by decide) (by decide)

/-- Catalogue code #7929: ((6,2,2)), m=13, a=[5, 6, 6, 9, 10, 10], S=[0, 12]. -/
def code_7929 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7929_ok : code_7929.OK := by native_decide
/-- Code #7929 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7929_qec :
    ∃ ψ, SS.IsAmplitudes code_7929 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7929 code_7929_ok (by decide) (by decide)

/-- Catalogue code #7930: ((6,2,2)), m=13, a=[5, 6, 6, 9, 10, 11], S=[0, 12]. -/
def code_7930 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7930_ok : code_7930.OK := by native_decide
/-- Code #7930 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7930_qec :
    ∃ ψ, SS.IsAmplitudes code_7930 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7930 code_7930_ok (by decide) (by decide)

/-- Catalogue code #7931: ((6,2,2)), m=13, a=[5, 6, 6, 9, 10, 12], S=[0, 11]. -/
def code_7931 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7931_ok : code_7931.OK := by native_decide
/-- Code #7931 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7931_qec :
    ∃ ψ, SS.IsAmplitudes code_7931 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7931 code_7931_ok (by decide) (by decide)

/-- Catalogue code #7932: ((6,2,2)), m=13, a=[5, 6, 6, 10, 11, 11], S=[0, 1]. -/
def code_7932 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7932_ok : code_7932.OK := by native_decide
/-- Code #7932 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7932_qec :
    ∃ ψ, SS.IsAmplitudes code_7932 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7932 code_7932_ok (by decide) (by decide)

/-- Catalogue code #7933: ((6,2,2)), m=13, a=[5, 6, 6, 10, 11, 11], S=[0, 9]. -/
def code_7933 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7933_ok : code_7933.OK := by native_decide
/-- Code #7933 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7933_qec :
    ∃ ψ, SS.IsAmplitudes code_7933 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7933 code_7933_ok (by decide) (by decide)

/-- Catalogue code #7934: ((6,2,2)), m=13, a=[5, 6, 6, 10, 11, 12], S=[0, 9]. -/
def code_7934 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7934_ok : code_7934.OK := by native_decide
/-- Code #7934 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7934_qec :
    ∃ ψ, SS.IsAmplitudes code_7934 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7934 code_7934_ok (by decide) (by decide)

/-- Catalogue code #7935: ((6,2,2)), m=13, a=[5, 6, 6, 10, 12, 12], S=[0, 2]. -/
def code_7935 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7935_ok : code_7935.OK := by native_decide
/-- Code #7935 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7935_qec :
    ∃ ψ, SS.IsAmplitudes code_7935 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7935 code_7935_ok (by decide) (by decide)

/-- Catalogue code #7936: ((6,2,2)), m=13, a=[5, 6, 7, 8, 9, 12], S=[0, 10]. -/
def code_7936 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13)]
theorem code_7936_ok : code_7936.OK := by native_decide
/-- Code #7936 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7936_qec :
    ∃ ψ, SS.IsAmplitudes code_7936 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7936 code_7936_ok (by decide) (by decide)

/-- Catalogue code #7937: ((6,2,2)), m=13, a=[5, 6, 7, 8, 10, 11], S=[0, 12]. -/
def code_7937 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7937_ok : code_7937.OK := by native_decide
/-- Code #7937 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7937_qec :
    ∃ ψ, SS.IsAmplitudes code_7937 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7937 code_7937_ok (by decide) (by decide)

/-- Catalogue code #7938: ((6,2,2)), m=13, a=[5, 6, 7, 9, 9, 10], S=[0, 12]. -/
def code_7938 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7938_ok : code_7938.OK := by native_decide
/-- Code #7938 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7938_qec :
    ∃ ψ, SS.IsAmplitudes code_7938 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7938 code_7938_ok (by decide) (by decide)

/-- Catalogue code #7939: ((6,2,2)), m=13, a=[5, 6, 7, 9, 10, 11], S=[0, 1]. -/
def code_7939 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7939_ok : code_7939.OK := by native_decide
/-- Code #7939 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7939_qec :
    ∃ ψ, SS.IsAmplitudes code_7939 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7939 code_7939_ok (by decide) (by decide)

/-- Catalogue code #7940: ((6,2,2)), m=13, a=[5, 6, 7, 9, 11, 12], S=[0, 3]. -/
def code_7940 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7940_ok : code_7940.OK := by native_decide
/-- Code #7940 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7940_qec :
    ∃ ψ, SS.IsAmplitudes code_7940 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7940 code_7940_ok (by decide) (by decide)

/-- Catalogue code #7941: ((6,2,2)), m=13, a=[5, 6, 8, 9, 9, 10], S=[0, 1]. -/
def code_7941 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7941_ok : code_7941.OK := by native_decide
/-- Code #7941 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7941_qec :
    ∃ ψ, SS.IsAmplitudes code_7941 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7941 code_7941_ok (by decide) (by decide)

/-- Catalogue code #7942: ((6,2,2)), m=13, a=[5, 6, 8, 9, 9, 10], S=[0, 11]. -/
def code_7942 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7942_ok : code_7942.OK := by native_decide
/-- Code #7942 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7942_qec :
    ∃ ψ, SS.IsAmplitudes code_7942 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7942 code_7942_ok (by decide) (by decide)

/-- Catalogue code #7943: ((6,2,2)), m=13, a=[5, 6, 8, 9, 11, 11], S=[0, 10]. -/
def code_7943 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7943_ok : code_7943.OK := by native_decide
/-- Code #7943 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7943_qec :
    ∃ ψ, SS.IsAmplitudes code_7943 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7943 code_7943_ok (by decide) (by decide)

/-- Catalogue code #7944: ((6,2,2)), m=13, a=[5, 6, 8, 9, 11, 12], S=[0, 10]. -/
def code_7944 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7944_ok : code_7944.OK := by native_decide
/-- Code #7944 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7944_qec :
    ∃ ψ, SS.IsAmplitudes code_7944 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7944 code_7944_ok (by decide) (by decide)

/-- Catalogue code #7945: ((6,2,2)), m=13, a=[5, 6, 8, 10, 10, 11], S=[0, 12]. -/
def code_7945 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((8 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7945_ok : code_7945.OK := by native_decide
/-- Code #7945 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7945_qec :
    ∃ ψ, SS.IsAmplitudes code_7945 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7945 code_7945_ok (by decide) (by decide)

/-- Catalogue code #7946: ((6,2,2)), m=13, a=[5, 6, 8, 10, 10, 12], S=[0, 11]. -/
def code_7946 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7946_ok : code_7946.OK := by native_decide
/-- Code #7946 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7946_qec :
    ∃ ψ, SS.IsAmplitudes code_7946 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7946 code_7946_ok (by decide) (by decide)

/-- Catalogue code #7947: ((6,2,2)), m=13, a=[5, 6, 8, 10, 12, 12], S=[0, 11]. -/
def code_7947 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7947_ok : code_7947.OK := by native_decide
/-- Code #7947 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7947_qec :
    ∃ ψ, SS.IsAmplitudes code_7947 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7947 code_7947_ok (by decide) (by decide)

/-- Catalogue code #7948: ((6,2,2)), m=13, a=[5, 6, 8, 11, 11, 12], S=[0, 4]. -/
def code_7948 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7948_ok : code_7948.OK := by native_decide
/-- Code #7948 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7948_qec :
    ∃ ψ, SS.IsAmplitudes code_7948 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7948 code_7948_ok (by decide) (by decide)

/-- Catalogue code #7949: ((6,2,2)), m=13, a=[5, 6, 8, 11, 11, 12], S=[0, 10]. -/
def code_7949 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13)]
theorem code_7949_ok : code_7949.OK := by native_decide
/-- Code #7949 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7949_qec :
    ∃ ψ, SS.IsAmplitudes code_7949 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7949 code_7949_ok (by decide) (by decide)

/-- Catalogue code #7950: ((6,2,2)), m=13, a=[5, 6, 9, 9, 10, 10], S=[0, 2]. -/
def code_7950 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_7950_ok : code_7950.OK := by native_decide
/-- Code #7950 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7950_qec :
    ∃ ψ, SS.IsAmplitudes code_7950 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7950 code_7950_ok (by decide) (by decide)

/-- Catalogue code #7951: ((6,2,2)), m=13, a=[5, 6, 9, 9, 10, 11], S=[0, 12]. -/
def code_7951 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7951_ok : code_7951.OK := by native_decide
/-- Code #7951 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7951_qec :
    ∃ ψ, SS.IsAmplitudes code_7951 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7951 code_7951_ok (by decide) (by decide)

/-- Catalogue code #7952: ((6,2,2)), m=13, a=[5, 6, 9, 9, 10, 12], S=[0, 11]. -/
def code_7952 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_7952_ok : code_7952.OK := by native_decide
/-- Code #7952 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7952_qec :
    ∃ ψ, SS.IsAmplitudes code_7952 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7952 code_7952_ok (by decide) (by decide)

/-- Catalogue code #7953: ((6,2,2)), m=13, a=[5, 6, 9, 9, 11, 12], S=[0, 3]. -/
def code_7953 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7953_ok : code_7953.OK := by native_decide
/-- Code #7953 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7953_qec :
    ∃ ψ, SS.IsAmplitudes code_7953 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7953 code_7953_ok (by decide) (by decide)

/-- Catalogue code #7954: ((6,2,2)), m=13, a=[5, 6, 9, 10, 10, 11], S=[0, 1]. -/
def code_7954 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7954_ok : code_7954.OK := by native_decide
/-- Code #7954 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7954_qec :
    ∃ ψ, SS.IsAmplitudes code_7954 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7954 code_7954_ok (by decide) (by decide)

/-- Catalogue code #7955: ((6,2,2)), m=13, a=[5, 6, 9, 10, 10, 12], S=[0, 2]. -/
def code_7955 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7955_ok : code_7955.OK := by native_decide
/-- Code #7955 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7955_qec :
    ∃ ψ, SS.IsAmplitudes code_7955 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7955 code_7955_ok (by decide) (by decide)

/-- Catalogue code #7956: ((6,2,2)), m=13, a=[5, 6, 9, 10, 12, 12], S=[0, 11]. -/
def code_7956 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7956_ok : code_7956.OK := by native_decide
/-- Code #7956 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7956_qec :
    ∃ ψ, SS.IsAmplitudes code_7956 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7956 code_7956_ok (by decide) (by decide)

/-- Catalogue code #7957: ((6,2,2)), m=13, a=[5, 6, 9, 11, 11, 12], S=[0, 10]. -/
def code_7957 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7957_ok : code_7957.OK := by native_decide
/-- Code #7957 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7957_qec :
    ∃ ψ, SS.IsAmplitudes code_7957 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7957 code_7957_ok (by decide) (by decide)

/-- Catalogue code #7958: ((6,2,2)), m=13, a=[5, 6, 10, 10, 11, 12], S=[0, 4]. -/
def code_7958 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7958_ok : code_7958.OK := by native_decide
/-- Code #7958 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7958_qec :
    ∃ ψ, SS.IsAmplitudes code_7958 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7958 code_7958_ok (by decide) (by decide)

/-- Catalogue code #7959: ((6,2,2)), m=13, a=[5, 6, 10, 10, 12, 12], S=[0, 11]. -/
def code_7959 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7959_ok : code_7959.OK := by native_decide
/-- Code #7959 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7959_qec :
    ∃ ψ, SS.IsAmplitudes code_7959 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7959 code_7959_ok (by decide) (by decide)

/-- Catalogue code #7960: ((6,2,2)), m=13, a=[5, 6, 10, 11, 11, 12], S=[0, 9]. -/
def code_7960 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7960_ok : code_7960.OK := by native_decide
/-- Code #7960 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7960_qec :
    ∃ ψ, SS.IsAmplitudes code_7960 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7960 code_7960_ok (by decide) (by decide)

/-- Catalogue code #7961: ((6,2,2)), m=13, a=[5, 6, 10, 11, 12, 12], S=[0, 9]. -/
def code_7961 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7961_ok : code_7961.OK := by native_decide
/-- Code #7961 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7961_qec :
    ∃ ψ, SS.IsAmplitudes code_7961 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7961 code_7961_ok (by decide) (by decide)

/-- Catalogue code #7962: ((6,2,2)), m=13, a=[5, 7, 7, 7, 8, 10], S=[0, 9]. -/
def code_7962 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7962_ok : code_7962.OK := by native_decide
/-- Code #7962 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7962_qec :
    ∃ ψ, SS.IsAmplitudes code_7962 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7962 code_7962_ok (by decide) (by decide)

/-- Catalogue code #7963: ((6,2,2)), m=13, a=[5, 7, 7, 7, 8, 11], S=[0, 3]. -/
def code_7963 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7963_ok : code_7963.OK := by native_decide
/-- Code #7963 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7963_qec :
    ∃ ψ, SS.IsAmplitudes code_7963 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7963 code_7963_ok (by decide) (by decide)

/-- Catalogue code #7964: ((6,2,2)), m=13, a=[5, 7, 7, 8, 10, 10], S=[0, 9]. -/
def code_7964 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7964_ok : code_7964.OK := by native_decide
/-- Code #7964 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7964_qec :
    ∃ ψ, SS.IsAmplitudes code_7964 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7964 code_7964_ok (by decide) (by decide)

/-- Catalogue code #7965: ((6,2,2)), m=13, a=[5, 7, 7, 8, 10, 10], S=[0, 12]. -/
def code_7965 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7965_ok : code_7965.OK := by native_decide
/-- Code #7965 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7965_qec :
    ∃ ψ, SS.IsAmplitudes code_7965 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7965 code_7965_ok (by decide) (by decide)

/-- Catalogue code #7966: ((6,2,2)), m=13, a=[5, 7, 7, 9, 10, 10], S=[0, 1]. -/
def code_7966 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7966_ok : code_7966.OK := by native_decide
/-- Code #7966 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7966_qec :
    ∃ ψ, SS.IsAmplitudes code_7966 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7966 code_7966_ok (by decide) (by decide)

/-- Catalogue code #7967: ((6,2,2)), m=13, a=[5, 7, 7, 9, 10, 11], S=[0, 12]. -/
def code_7967 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7967_ok : code_7967.OK := by native_decide
/-- Code #7967 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7967_qec :
    ∃ ψ, SS.IsAmplitudes code_7967 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7967 code_7967_ok (by decide) (by decide)

/-- Catalogue code #7968: ((6,2,2)), m=13, a=[5, 7, 7, 9, 10, 12], S=[0, 2]. -/
def code_7968 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7968_ok : code_7968.OK := by native_decide
/-- Code #7968 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7968_qec :
    ∃ ψ, SS.IsAmplitudes code_7968 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7968 code_7968_ok (by decide) (by decide)

/-- Catalogue code #7969: ((6,2,2)), m=13, a=[5, 7, 7, 9, 11, 12], S=[0, 3]. -/
def code_7969 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_7969_ok : code_7969.OK := by native_decide
/-- Code #7969 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7969_qec :
    ∃ ψ, SS.IsAmplitudes code_7969 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7969 code_7969_ok (by decide) (by decide)

/-- Catalogue code #7970: ((6,2,2)), m=13, a=[5, 7, 7, 10, 10, 11], S=[0, 12]. -/
def code_7970 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7970_ok : code_7970.OK := by native_decide
/-- Code #7970 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7970_qec :
    ∃ ψ, SS.IsAmplitudes code_7970 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7970 code_7970_ok (by decide) (by decide)

/-- Catalogue code #7971: ((6,2,2)), m=13, a=[5, 7, 7, 10, 10, 12], S=[0, 4]. -/
def code_7971 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7971_ok : code_7971.OK := by native_decide
/-- Code #7971 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7971_qec :
    ∃ ψ, SS.IsAmplitudes code_7971 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7971 code_7971_ok (by decide) (by decide)

/-- Catalogue code #7972: ((6,2,2)), m=13, a=[5, 7, 7, 10, 10, 12], S=[0, 11]. -/
def code_7972 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7972_ok : code_7972.OK := by native_decide
/-- Code #7972 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7972_qec :
    ∃ ψ, SS.IsAmplitudes code_7972 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7972 code_7972_ok (by decide) (by decide)

/-- Catalogue code #7973: ((6,2,2)), m=13, a=[5, 7, 7, 10, 11, 12], S=[0, 4]. -/
def code_7973 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7973_ok : code_7973.OK := by native_decide
/-- Code #7973 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7973_qec :
    ∃ ψ, SS.IsAmplitudes code_7973 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7973 code_7973_ok (by decide) (by decide)

/-- Catalogue code #7974: ((6,2,2)), m=13, a=[5, 7, 7, 10, 11, 12], S=[0, 9]. -/
def code_7974 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7974_ok : code_7974.OK := by native_decide
/-- Code #7974 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7974_qec :
    ∃ ψ, SS.IsAmplitudes code_7974 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7974 code_7974_ok (by decide) (by decide)

/-- Catalogue code #7975: ((6,2,2)), m=13, a=[5, 7, 7, 10, 12, 12], S=[0, 11]. -/
def code_7975 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7975_ok : code_7975.OK := by native_decide
/-- Code #7975 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7975_qec :
    ∃ ψ, SS.IsAmplitudes code_7975 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7975 code_7975_ok (by decide) (by decide)

/-- Catalogue code #7976: ((6,2,2)), m=13, a=[5, 7, 8, 9, 10, 11], S=[0, 12]. -/
def code_7976 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7976_ok : code_7976.OK := by native_decide
/-- Code #7976 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7976_qec :
    ∃ ψ, SS.IsAmplitudes code_7976 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7976 code_7976_ok (by decide) (by decide)

/-- Catalogue code #7977: ((6,2,2)), m=13, a=[5, 7, 8, 9, 10, 12], S=[0, 11]. -/
def code_7977 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_7977_ok : code_7977.OK := by native_decide
/-- Code #7977 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7977_qec :
    ∃ ψ, SS.IsAmplitudes code_7977 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7977 code_7977_ok (by decide) (by decide)

/-- Catalogue code #7978: ((6,2,2)), m=13, a=[5, 7, 8, 9, 12, 12], S=[0, 3]. -/
def code_7978 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7978_ok : code_7978.OK := by native_decide
/-- Code #7978 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7978_qec :
    ∃ ψ, SS.IsAmplitudes code_7978 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7978 code_7978_ok (by decide) (by decide)

/-- Catalogue code #7979: ((6,2,2)), m=13, a=[5, 7, 8, 9, 12, 12], S=[0, 11]. -/
def code_7979 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7979_ok : code_7979.OK := by native_decide
/-- Code #7979 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7979_qec :
    ∃ ψ, SS.IsAmplitudes code_7979 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7979 code_7979_ok (by decide) (by decide)

/-- Catalogue code #7980: ((6,2,2)), m=13, a=[5, 7, 8, 10, 12, 12], S=[0, 4]. -/
def code_7980 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((11 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7980_ok : code_7980.OK := by native_decide
/-- Code #7980 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7980_qec :
    ∃ ψ, SS.IsAmplitudes code_7980 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7980 code_7980_ok (by decide) (by decide)

/-- Catalogue code #7981: ((6,2,2)), m=13, a=[5, 7, 8, 10, 12, 12], S=[0, 11]. -/
def code_7981 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7981_ok : code_7981.OK := by native_decide
/-- Code #7981 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7981_qec :
    ∃ ψ, SS.IsAmplitudes code_7981 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7981 code_7981_ok (by decide) (by decide)

/-- Catalogue code #7982: ((6,2,2)), m=13, a=[5, 7, 9, 10, 10, 11], S=[0, 1]. -/
def code_7982 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7982_ok : code_7982.OK := by native_decide
/-- Code #7982 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7982_qec :
    ∃ ψ, SS.IsAmplitudes code_7982 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7982 code_7982_ok (by decide) (by decide)

/-- Catalogue code #7983: ((6,2,2)), m=13, a=[5, 7, 9, 10, 10, 12], S=[0, 2]. -/
def code_7983 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7983_ok : code_7983.OK := by native_decide
/-- Code #7983 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7983_qec :
    ∃ ψ, SS.IsAmplitudes code_7983 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7983 code_7983_ok (by decide) (by decide)

/-- Catalogue code #7984: ((6,2,2)), m=13, a=[5, 7, 9, 10, 12, 12], S=[0, 11]. -/
def code_7984 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7984_ok : code_7984.OK := by native_decide
/-- Code #7984 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7984_qec :
    ∃ ψ, SS.IsAmplitudes code_7984 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7984 code_7984_ok (by decide) (by decide)

/-- Catalogue code #7985: ((6,2,2)), m=13, a=[5, 7, 10, 10, 12, 12], S=[0, 11]. -/
def code_7985 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_7985_ok : code_7985.OK := by native_decide
/-- Code #7985 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7985_qec :
    ∃ ψ, SS.IsAmplitudes code_7985 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7985 code_7985_ok (by decide) (by decide)

/-- Catalogue code #7986: ((6,2,2)), m=13, a=[5, 7, 10, 11, 11, 12], S=[0, 9]. -/
def code_7986 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7986_ok : code_7986.OK := by native_decide
/-- Code #7986 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7986_qec :
    ∃ ψ, SS.IsAmplitudes code_7986 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7986 code_7986_ok (by decide) (by decide)

/-- Catalogue code #7987: ((6,2,2)), m=13, a=[5, 7, 10, 11, 12, 12], S=[0, 9]. -/
def code_7987 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7987_ok : code_7987.OK := by native_decide
/-- Code #7987 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7987_qec :
    ∃ ψ, SS.IsAmplitudes code_7987 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7987 code_7987_ok (by decide) (by decide)

/-- Catalogue code #7988: ((6,2,2)), m=13, a=[5, 8, 8, 11, 11, 12], S=[0, 4]. -/
def code_7988 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7988_ok : code_7988.OK := by native_decide
/-- Code #7988 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7988_qec :
    ∃ ψ, SS.IsAmplitudes code_7988 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7988 code_7988_ok (by decide) (by decide)

/-- Catalogue code #7989: ((6,2,2)), m=13, a=[5, 8, 9, 9, 10, 12], S=[0, 7]. -/
def code_7989 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7989_ok : code_7989.OK := by native_decide
/-- Code #7989 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7989_qec :
    ∃ ψ, SS.IsAmplitudes code_7989 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7989 code_7989_ok (by decide) (by decide)

/-- Catalogue code #7990: ((6,2,2)), m=13, a=[5, 8, 9, 10, 11, 11], S=[0, 1]. -/
def code_7990 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7990_ok : code_7990.OK := by native_decide
/-- Code #7990 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7990_qec :
    ∃ ψ, SS.IsAmplitudes code_7990 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7990 code_7990_ok (by decide) (by decide)

/-- Catalogue code #7991: ((6,2,2)), m=13, a=[5, 8, 9, 10, 12, 12], S=[0, 6]. -/
def code_7991 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7991_ok : code_7991.OK := by native_decide
/-- Code #7991 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7991_qec :
    ∃ ψ, SS.IsAmplitudes code_7991 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7991 code_7991_ok (by decide) (by decide)

/-- Catalogue code #7992: ((6,2,2)), m=13, a=[5, 8, 9, 10, 12, 12], S=[0, 11]. -/
def code_7992 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_7992_ok : code_7992.OK := by native_decide
/-- Code #7992 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7992_qec :
    ∃ ψ, SS.IsAmplitudes code_7992 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7992 code_7992_ok (by decide) (by decide)

/-- Catalogue code #7993: ((6,2,2)), m=13, a=[5, 8, 9, 11, 11, 12], S=[0, 3]. -/
def code_7993 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7993_ok : code_7993.OK := by native_decide
/-- Code #7993 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7993_qec :
    ∃ ψ, SS.IsAmplitudes code_7993 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7993 code_7993_ok (by decide) (by decide)

/-- Catalogue code #7994: ((6,2,2)), m=13, a=[5, 8, 9, 11, 11, 12], S=[0, 10]. -/
def code_7994 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_7994_ok : code_7994.OK := by native_decide
/-- Code #7994 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7994_qec :
    ∃ ψ, SS.IsAmplitudes code_7994 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7994 code_7994_ok (by decide) (by decide)

/-- Catalogue code #7995: ((6,2,2)), m=13, a=[5, 8, 9, 11, 12, 12], S=[0, 3]. -/
def code_7995 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_7995_ok : code_7995.OK := by native_decide
/-- Code #7995 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7995_qec :
    ∃ ψ, SS.IsAmplitudes code_7995 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7995 code_7995_ok (by decide) (by decide)

/-- Catalogue code #7996: ((6,2,2)), m=13, a=[5, 8, 10, 10, 12, 12], S=[0, 6]. -/
def code_7996 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_7996_ok : code_7996.OK := by native_decide
/-- Code #7996 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7996_qec :
    ∃ ψ, SS.IsAmplitudes code_7996 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7996 code_7996_ok (by decide) (by decide)

/-- Catalogue code #7997: ((6,2,2)), m=13, a=[5, 8, 10, 11, 11, 12], S=[0, 9]. -/
def code_7997 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_7997_ok : code_7997.OK := by native_decide
/-- Code #7997 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7997_qec :
    ∃ ψ, SS.IsAmplitudes code_7997 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7997 code_7997_ok (by decide) (by decide)

/-- Catalogue code #7998: ((6,2,2)), m=13, a=[5, 8, 11, 11, 12, 12], S=[0, 3]. -/
def code_7998 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7998_ok : code_7998.OK := by native_decide
/-- Code #7998 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7998_qec :
    ∃ ψ, SS.IsAmplitudes code_7998 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7998 code_7998_ok (by decide) (by decide)

/-- Catalogue code #7999: ((6,2,2)), m=13, a=[5, 9, 9, 10, 11, 11], S=[0, 6]. -/
def code_7999 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_7999_ok : code_7999.OK := by native_decide
/-- Code #7999 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7999_qec :
    ∃ ψ, SS.IsAmplitudes code_7999 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7999 code_7999_ok (by decide) (by decide)

end Catalogue.Chunk015
