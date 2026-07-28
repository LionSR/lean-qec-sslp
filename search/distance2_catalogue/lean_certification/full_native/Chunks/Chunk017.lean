import SS

namespace Catalogue.Chunk017

open SS SS.Verify

/-- Catalogue code #8500: ((6,2,2)), m=14, a=[1, 2, 3, 7, 8, 8], S=[0, 5]. -/
def code_8500 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8500_ok : code_8500.OK := by native_decide
/-- Code #8500 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8500_qec :
    ∃ ψ, SS.IsAmplitudes code_8500 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8500 code_8500_ok (by decide) (by decide)

/-- Catalogue code #8501: ((6,2,2)), m=14, a=[1, 2, 3, 7, 8, 9], S=[0, 4]. -/
def code_8501 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8501_ok : code_8501.OK := by native_decide
/-- Code #8501 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8501_qec :
    ∃ ψ, SS.IsAmplitudes code_8501 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8501 code_8501_ok (by decide) (by decide)

/-- Catalogue code #8502: ((6,2,2)), m=14, a=[1, 2, 3, 7, 8, 10], S=[0, 5]. -/
def code_8502 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8502_ok : code_8502.OK := by native_decide
/-- Code #8502 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8502_qec :
    ∃ ψ, SS.IsAmplitudes code_8502 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8502 code_8502_ok (by decide) (by decide)

/-- Catalogue code #8503: ((6,2,2)), m=14, a=[1, 2, 3, 7, 8, 10], S=[0, 9]. -/
def code_8503 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8503_ok : code_8503.OK := by native_decide
/-- Code #8503 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8503_qec :
    ∃ ψ, SS.IsAmplitudes code_8503 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8503 code_8503_ok (by decide) (by decide)

/-- Catalogue code #8504: ((6,2,2)), m=14, a=[1, 2, 3, 7, 8, 11], S=[0, 5]. -/
def code_8504 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8504_ok : code_8504.OK := by native_decide
/-- Code #8504 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8504_qec :
    ∃ ψ, SS.IsAmplitudes code_8504 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8504 code_8504_ok (by decide) (by decide)

/-- Catalogue code #8505: ((6,2,2)), m=14, a=[1, 2, 3, 7, 8, 12], S=[0, 9]. -/
def code_8505 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8505_ok : code_8505.OK := by native_decide
/-- Code #8505 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8505_qec :
    ∃ ψ, SS.IsAmplitudes code_8505 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8505 code_8505_ok (by decide) (by decide)

/-- Catalogue code #8506: ((6,2,2)), m=14, a=[1, 2, 3, 7, 8, 12], S=[0, 10]. -/
def code_8506 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8506_ok : code_8506.OK := by native_decide
/-- Code #8506 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8506_qec :
    ∃ ψ, SS.IsAmplitudes code_8506 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8506 code_8506_ok (by decide) (by decide)

/-- Catalogue code #8507: ((6,2,2)), m=14, a=[1, 2, 3, 7, 8, 13], S=[0, 9]. -/
def code_8507 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ)]
theorem code_8507_ok : code_8507.OK := by native_decide
/-- Code #8507 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8507_qec :
    ∃ ψ, SS.IsAmplitudes code_8507 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8507 code_8507_ok (by decide) (by decide)

/-- Catalogue code #8508: ((6,2,2)), m=14, a=[1, 2, 3, 7, 9, 9], S=[0, 4]. -/
def code_8508 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8508_ok : code_8508.OK := by native_decide
/-- Code #8508 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8508_qec :
    ∃ ψ, SS.IsAmplitudes code_8508 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8508 code_8508_ok (by decide) (by decide)

/-- Catalogue code #8509: ((6,2,2)), m=14, a=[1, 2, 3, 7, 9, 10], S=[0, 8]. -/
def code_8509 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7)]
theorem code_8509_ok : code_8509.OK := by native_decide
/-- Code #8509 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8509_qec :
    ∃ ψ, SS.IsAmplitudes code_8509 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8509 code_8509_ok (by decide) (by decide)

/-- Catalogue code #8510: ((6,2,2)), m=14, a=[1, 2, 3, 7, 9, 11], S=[0, 6]. -/
def code_8510 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8510_ok : code_8510.OK := by native_decide
/-- Code #8510 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8510_qec :
    ∃ ψ, SS.IsAmplitudes code_8510 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8510 code_8510_ok (by decide) (by decide)

/-- Catalogue code #8511: ((6,2,2)), m=14, a=[1, 2, 3, 8, 8, 8], S=[0, 4]. -/
def code_8511 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8511_ok : code_8511.OK := by native_decide
/-- Code #8511 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8511_qec :
    ∃ ψ, SS.IsAmplitudes code_8511 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8511 code_8511_ok (by decide) (by decide)

/-- Catalogue code #8512: ((6,2,2)), m=14, a=[1, 2, 3, 8, 8, 10], S=[0, 5]. -/
def code_8512 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]
theorem code_8512_ok : code_8512.OK := by native_decide
/-- Code #8512 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8512_qec :
    ∃ ψ, SS.IsAmplitudes code_8512 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8512 code_8512_ok (by decide) (by decide)

/-- Catalogue code #8513: ((6,2,2)), m=14, a=[1, 2, 3, 8, 8, 12], S=[0, 4]. -/
def code_8513 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_8513_ok : code_8513.OK := by native_decide
/-- Code #8513 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8513_qec :
    ∃ ψ, SS.IsAmplitudes code_8513 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8513 code_8513_ok (by decide) (by decide)

/-- Catalogue code #8514: ((6,2,2)), m=14, a=[1, 2, 3, 8, 8, 12], S=[0, 10]. -/
def code_8514 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8514_ok : code_8514.OK := by native_decide
/-- Code #8514 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8514_qec :
    ∃ ψ, SS.IsAmplitudes code_8514 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8514 code_8514_ok (by decide) (by decide)

/-- Catalogue code #8515: ((6,2,2)), m=14, a=[1, 2, 3, 8, 9, 11], S=[0, 10]. -/
def code_8515 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8515_ok : code_8515.OK := by native_decide
/-- Code #8515 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8515_qec :
    ∃ ψ, SS.IsAmplitudes code_8515 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8515 code_8515_ok (by decide) (by decide)

/-- Catalogue code #8516: ((6,2,2)), m=14, a=[1, 2, 3, 8, 10, 10], S=[0, 9]. -/
def code_8516 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((-5 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8516_ok : code_8516.OK := by native_decide
/-- Code #8516 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8516_qec :
    ∃ ψ, SS.IsAmplitudes code_8516 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8516 code_8516_ok (by decide) (by decide)

/-- Catalogue code #8517: ((6,2,2)), m=14, a=[1, 2, 3, 8, 12, 12], S=[0, 4]. -/
def code_8517 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8517_ok : code_8517.OK := by native_decide
/-- Code #8517 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8517_qec :
    ∃ ψ, SS.IsAmplitudes code_8517 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8517 code_8517_ok (by decide) (by decide)

/-- Catalogue code #8518: ((6,2,2)), m=14, a=[1, 2, 3, 10, 11, 13], S=[0, 6]. -/
def code_8518 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8518_ok : code_8518.OK := by native_decide
/-- Code #8518 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8518_qec :
    ∃ ψ, SS.IsAmplitudes code_8518 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8518 code_8518_ok (by decide) (by decide)

/-- Catalogue code #8519: ((6,2,2)), m=14, a=[1, 2, 3, 10, 12, 12], S=[0, 6]. -/
def code_8519 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8519_ok : code_8519.OK := by native_decide
/-- Code #8519 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8519_qec :
    ∃ ψ, SS.IsAmplitudes code_8519 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8519 code_8519_ok (by decide) (by decide)

/-- Catalogue code #8520: ((6,2,2)), m=14, a=[1, 2, 4, 4, 4, 5], S=[0, 8]. -/
def code_8520 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8520_ok : code_8520.OK := by native_decide
/-- Code #8520 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8520_qec :
    ∃ ψ, SS.IsAmplitudes code_8520 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8520 code_8520_ok (by decide) (by decide)

/-- Catalogue code #8521: ((6,2,2)), m=14, a=[1, 2, 4, 4, 4, 11], S=[0, 6]. -/
def code_8521 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8521_ok : code_8521.OK := by native_decide
/-- Code #8521 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8521_qec :
    ∃ ψ, SS.IsAmplitudes code_8521 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8521 code_8521_ok (by decide) (by decide)

/-- Catalogue code #8522: ((6,2,2)), m=14, a=[1, 2, 4, 4, 5, 6], S=[0, 11]. -/
def code_8522 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7)]
theorem code_8522_ok : code_8522.OK := by native_decide
/-- Code #8522 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8522_qec :
    ∃ ψ, SS.IsAmplitudes code_8522 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8522 code_8522_ok (by decide) (by decide)

/-- Catalogue code #8523: ((6,2,2)), m=14, a=[1, 2, 4, 4, 5, 7], S=[0, 3]. -/
def code_8523 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8523_ok : code_8523.OK := by native_decide
/-- Code #8523 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8523_qec :
    ∃ ψ, SS.IsAmplitudes code_8523 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8523 code_8523_ok (by decide) (by decide)

/-- Catalogue code #8524: ((6,2,2)), m=14, a=[1, 2, 4, 4, 5, 7], S=[0, 6]. -/
def code_8524 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8524_ok : code_8524.OK := by native_decide
/-- Code #8524 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8524_qec :
    ∃ ψ, SS.IsAmplitudes code_8524 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8524 code_8524_ok (by decide) (by decide)

/-- Catalogue code #8525: ((6,2,2)), m=14, a=[1, 2, 4, 4, 5, 7], S=[0, 8]. -/
def code_8525 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8525_ok : code_8525.OK := by native_decide
/-- Code #8525 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8525_qec :
    ∃ ψ, SS.IsAmplitudes code_8525 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8525 code_8525_ok (by decide) (by decide)

/-- Catalogue code #8526: ((6,2,2)), m=14, a=[1, 2, 4, 4, 5, 8], S=[0, 3]. -/
def code_8526 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7)]
theorem code_8526_ok : code_8526.OK := by native_decide
/-- Code #8526 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8526_qec :
    ∃ ψ, SS.IsAmplitudes code_8526 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8526 code_8526_ok (by decide) (by decide)

/-- Catalogue code #8527: ((6,2,2)), m=14, a=[1, 2, 4, 4, 5, 11], S=[0, 6]. -/
def code_8527 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8527_ok : code_8527.OK := by native_decide
/-- Code #8527 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8527_qec :
    ∃ ψ, SS.IsAmplitudes code_8527 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8527 code_8527_ok (by decide) (by decide)

/-- Catalogue code #8528: ((6,2,2)), m=14, a=[1, 2, 4, 4, 5, 12], S=[0, 6]. -/
def code_8528 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8528_ok : code_8528.OK := by native_decide
/-- Code #8528 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8528_qec :
    ∃ ψ, SS.IsAmplitudes code_8528 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8528 code_8528_ok (by decide) (by decide)

/-- Catalogue code #8529: ((6,2,2)), m=14, a=[1, 2, 4, 4, 5, 13], S=[0, 8]. -/
def code_8529 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8529_ok : code_8529.OK := by native_decide
/-- Code #8529 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8529_qec :
    ∃ ψ, SS.IsAmplitudes code_8529 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8529 code_8529_ok (by decide) (by decide)

/-- Catalogue code #8530: ((6,2,2)), m=14, a=[1, 2, 4, 4, 7, 8], S=[0, 3]. -/
def code_8530 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7)]
theorem code_8530_ok : code_8530.OK := by native_decide
/-- Code #8530 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8530_qec :
    ∃ ψ, SS.IsAmplitudes code_8530 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8530 code_8530_ok (by decide) (by decide)

/-- Catalogue code #8531: ((6,2,2)), m=14, a=[1, 2, 4, 4, 7, 12], S=[0, 6]. -/
def code_8531 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8531_ok : code_8531.OK := by native_decide
/-- Code #8531 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8531_qec :
    ∃ ψ, SS.IsAmplitudes code_8531 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8531 code_8531_ok (by decide) (by decide)

/-- Catalogue code #8532: ((6,2,2)), m=14, a=[1, 2, 4, 4, 7, 12], S=[0, 8]. -/
def code_8532 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8532_ok : code_8532.OK := by native_decide
/-- Code #8532 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8532_qec :
    ∃ ψ, SS.IsAmplitudes code_8532 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8532 code_8532_ok (by decide) (by decide)

/-- Catalogue code #8533: ((6,2,2)), m=14, a=[1, 2, 4, 4, 8, 9], S=[0, 3]. -/
def code_8533 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]
theorem code_8533_ok : code_8533.OK := by native_decide
/-- Code #8533 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8533_qec :
    ∃ ψ, SS.IsAmplitudes code_8533 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8533 code_8533_ok (by decide) (by decide)

/-- Catalogue code #8534: ((6,2,2)), m=14, a=[1, 2, 4, 4, 8, 11], S=[0, 5]. -/
def code_8534 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((6 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]
theorem code_8534_ok : code_8534.OK := by native_decide
/-- Code #8534 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8534_qec :
    ∃ ψ, SS.IsAmplitudes code_8534 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8534 code_8534_ok (by decide) (by decide)

/-- Catalogue code #8535: ((6,2,2)), m=14, a=[1, 2, 4, 4, 9, 11], S=[0, 6]. -/
def code_8535 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8535_ok : code_8535.OK := by native_decide
/-- Code #8535 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8535_qec :
    ∃ ψ, SS.IsAmplitudes code_8535 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8535 code_8535_ok (by decide) (by decide)

/-- Catalogue code #8536: ((6,2,2)), m=14, a=[1, 2, 4, 5, 5, 6], S=[0, 11]. -/
def code_8536 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8536_ok : code_8536.OK := by native_decide
/-- Code #8536 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8536_qec :
    ∃ ψ, SS.IsAmplitudes code_8536 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8536 code_8536_ok (by decide) (by decide)

/-- Catalogue code #8537: ((6,2,2)), m=14, a=[1, 2, 4, 5, 5, 7], S=[0, 11]. -/
def code_8537 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8537_ok : code_8537.OK := by native_decide
/-- Code #8537 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8537_qec :
    ∃ ψ, SS.IsAmplitudes code_8537 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8537 code_8537_ok (by decide) (by decide)

/-- Catalogue code #8538: ((6,2,2)), m=14, a=[1, 2, 4, 5, 6, 8], S=[0, 11]. -/
def code_8538 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-5 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8538_ok : code_8538.OK := by native_decide
/-- Code #8538 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8538_qec :
    ∃ ψ, SS.IsAmplitudes code_8538 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8538 code_8538_ok (by decide) (by decide)

/-- Catalogue code #8539: ((6,2,2)), m=14, a=[1, 2, 4, 5, 6, 13], S=[0, 11]. -/
def code_8539 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8539_ok : code_8539.OK := by native_decide
/-- Code #8539 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8539_qec :
    ∃ ψ, SS.IsAmplitudes code_8539 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8539 code_8539_ok (by decide) (by decide)

/-- Catalogue code #8540: ((6,2,2)), m=14, a=[1, 2, 4, 5, 7, 8], S=[0, 3]. -/
def code_8540 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8540_ok : code_8540.OK := by native_decide
/-- Code #8540 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8540_qec :
    ∃ ψ, SS.IsAmplitudes code_8540 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8540 code_8540_ok (by decide) (by decide)

/-- Catalogue code #8541: ((6,2,2)), m=14, a=[1, 2, 4, 5, 7, 8], S=[0, 11]. -/
def code_8541 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8541_ok : code_8541.OK := by native_decide
/-- Code #8541 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8541_qec :
    ∃ ψ, SS.IsAmplitudes code_8541 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8541 code_8541_ok (by decide) (by decide)

/-- Catalogue code #8542: ((6,2,2)), m=14, a=[1, 2, 4, 5, 7, 11], S=[0, 6]. -/
def code_8542 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8542_ok : code_8542.OK := by native_decide
/-- Code #8542 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8542_qec :
    ∃ ψ, SS.IsAmplitudes code_8542 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8542 code_8542_ok (by decide) (by decide)

/-- Catalogue code #8543: ((6,2,2)), m=14, a=[1, 2, 4, 5, 7, 11], S=[0, 8]. -/
def code_8543 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8543_ok : code_8543.OK := by native_decide
/-- Code #8543 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8543_qec :
    ∃ ψ, SS.IsAmplitudes code_8543 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8543 code_8543_ok (by decide) (by decide)

/-- Catalogue code #8544: ((6,2,2)), m=14, a=[1, 2, 4, 5, 7, 12], S=[0, 11]. -/
def code_8544 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ), ((-4 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8544_ok : code_8544.OK := by native_decide
/-- Code #8544 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8544_qec :
    ∃ ψ, SS.IsAmplitudes code_8544 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8544 code_8544_ok (by decide) (by decide)

/-- Catalogue code #8545: ((6,2,2)), m=14, a=[1, 2, 4, 5, 7, 13], S=[0, 8]. -/
def code_8545 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8545_ok : code_8545.OK := by native_decide
/-- Code #8545 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8545_qec :
    ∃ ψ, SS.IsAmplitudes code_8545 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8545 code_8545_ok (by decide) (by decide)

/-- Catalogue code #8546: ((6,2,2)), m=14, a=[1, 2, 4, 5, 8, 9], S=[0, 3]. -/
def code_8546 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_8546_ok : code_8546.OK := by native_decide
/-- Code #8546 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8546_qec :
    ∃ ψ, SS.IsAmplitudes code_8546 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8546 code_8546_ok (by decide) (by decide)

/-- Catalogue code #8547: ((6,2,2)), m=14, a=[1, 2, 4, 5, 8, 12], S=[0, 11]. -/
def code_8547 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), ((-4 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8547_ok : code_8547.OK := by native_decide
/-- Code #8547 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8547_qec :
    ∃ ψ, SS.IsAmplitudes code_8547 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8547 code_8547_ok (by decide) (by decide)

/-- Catalogue code #8548: ((6,2,2)), m=14, a=[1, 2, 4, 5, 10, 10], S=[0, 6]. -/
def code_8548 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8548_ok : code_8548.OK := by native_decide
/-- Code #8548 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8548_qec :
    ∃ ψ, SS.IsAmplitudes code_8548 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8548 code_8548_ok (by decide) (by decide)

/-- Catalogue code #8549: ((6,2,2)), m=14, a=[1, 2, 4, 5, 10, 12], S=[0, 8]. -/
def code_8549 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8549_ok : code_8549.OK := by native_decide
/-- Code #8549 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8549_qec :
    ∃ ψ, SS.IsAmplitudes code_8549 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8549 code_8549_ok (by decide) (by decide)

/-- Catalogue code #8550: ((6,2,2)), m=14, a=[1, 2, 4, 6, 6, 7], S=[0, 9]. -/
def code_8550 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]
theorem code_8550_ok : code_8550.OK := by native_decide
/-- Code #8550 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8550_qec :
    ∃ ψ, SS.IsAmplitudes code_8550 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8550 code_8550_ok (by decide) (by decide)

/-- Catalogue code #8551: ((6,2,2)), m=14, a=[1, 2, 4, 6, 6, 11], S=[0, 9]. -/
def code_8551 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), ((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ)]
theorem code_8551_ok : code_8551.OK := by native_decide
/-- Code #8551 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8551_qec :
    ∃ ψ, SS.IsAmplitudes code_8551 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8551 code_8551_ok (by decide) (by decide)

/-- Catalogue code #8552: ((6,2,2)), m=14, a=[1, 2, 4, 6, 7, 9], S=[0, 3]. -/
def code_8552 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8552_ok : code_8552.OK := by native_decide
/-- Code #8552 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8552_qec :
    ∃ ψ, SS.IsAmplitudes code_8552 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8552 code_8552_ok (by decide) (by decide)

/-- Catalogue code #8553: ((6,2,2)), m=14, a=[1, 2, 4, 6, 7, 9], S=[0, 11]. -/
def code_8553 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8553_ok : code_8553.OK := by native_decide
/-- Code #8553 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8553_qec :
    ∃ ψ, SS.IsAmplitudes code_8553 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8553 code_8553_ok (by decide) (by decide)

/-- Catalogue code #8554: ((6,2,2)), m=14, a=[1, 2, 4, 6, 7, 10], S=[0, 11]. -/
def code_8554 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7)]
theorem code_8554_ok : code_8554.OK := by native_decide
/-- Code #8554 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8554_qec :
    ∃ ψ, SS.IsAmplitudes code_8554 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8554 code_8554_ok (by decide) (by decide)

/-- Catalogue code #8555: ((6,2,2)), m=14, a=[1, 2, 4, 6, 7, 11], S=[0, 5]. -/
def code_8555 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8555_ok : code_8555.OK := by native_decide
/-- Code #8555 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8555_qec :
    ∃ ψ, SS.IsAmplitudes code_8555 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8555 code_8555_ok (by decide) (by decide)

/-- Catalogue code #8556: ((6,2,2)), m=14, a=[1, 2, 4, 6, 7, 11], S=[0, 9]. -/
def code_8556 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8556_ok : code_8556.OK := by native_decide
/-- Code #8556 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8556_qec :
    ∃ ψ, SS.IsAmplitudes code_8556 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8556 code_8556_ok (by decide) (by decide)

/-- Catalogue code #8557: ((6,2,2)), m=14, a=[1, 2, 4, 6, 8, 13], S=[0, 9]. -/
def code_8557 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ)]
theorem code_8557_ok : code_8557.OK := by native_decide
/-- Code #8557 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8557_qec :
    ∃ ψ, SS.IsAmplitudes code_8557 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8557 code_8557_ok (by decide) (by decide)

/-- Catalogue code #8558: ((6,2,2)), m=14, a=[1, 2, 4, 6, 8, 13], S=[0, 11]. -/
def code_8558 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ)]
theorem code_8558_ok : code_8558.OK := by native_decide
/-- Code #8558 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8558_qec :
    ∃ ψ, SS.IsAmplitudes code_8558 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8558 code_8558_ok (by decide) (by decide)

/-- Catalogue code #8559: ((6,2,2)), m=14, a=[1, 2, 4, 6, 9, 10], S=[0, 11]. -/
def code_8559 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), ((4 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7)]
theorem code_8559_ok : code_8559.OK := by native_decide
/-- Code #8559 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8559_qec :
    ∃ ψ, SS.IsAmplitudes code_8559 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8559 code_8559_ok (by decide) (by decide)

/-- Catalogue code #8560: ((6,2,2)), m=14, a=[1, 2, 4, 7, 8, 8], S=[0, 5]. -/
def code_8560 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8560_ok : code_8560.OK := by native_decide
/-- Code #8560 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8560_qec :
    ∃ ψ, SS.IsAmplitudes code_8560 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8560 code_8560_ok (by decide) (by decide)

/-- Catalogue code #8561: ((6,2,2)), m=14, a=[1, 2, 4, 7, 8, 12], S=[0, 3]. -/
def code_8561 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7)]
theorem code_8561_ok : code_8561.OK := by native_decide
/-- Code #8561 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8561_qec :
    ∃ ψ, SS.IsAmplitudes code_8561 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8561 code_8561_ok (by decide) (by decide)

/-- Catalogue code #8562: ((6,2,2)), m=14, a=[1, 2, 4, 7, 8, 12], S=[0, 9]. -/
def code_8562 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 7)]
theorem code_8562_ok : code_8562.OK := by native_decide
/-- Code #8562 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8562_qec :
    ∃ ψ, SS.IsAmplitudes code_8562 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8562 code_8562_ok (by decide) (by decide)

/-- Catalogue code #8563: ((6,2,2)), m=14, a=[1, 2, 4, 7, 8, 12], S=[0, 11]. -/
def code_8563 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((4 : ℚ) / 7)]
theorem code_8563_ok : code_8563.OK := by native_decide
/-- Code #8563 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8563_qec :
    ∃ ψ, SS.IsAmplitudes code_8563 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8563 code_8563_ok (by decide) (by decide)

/-- Catalogue code #8564: ((6,2,2)), m=14, a=[1, 2, 4, 7, 9, 9], S=[0, 3]. -/
def code_8564 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]
theorem code_8564_ok : code_8564.OK := by native_decide
/-- Code #8564 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8564_qec :
    ∃ ψ, SS.IsAmplitudes code_8564 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8564 code_8564_ok (by decide) (by decide)

/-- Catalogue code #8565: ((6,2,2)), m=14, a=[1, 2, 4, 7, 9, 10], S=[0, 6]. -/
def code_8565 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8565_ok : code_8565.OK := by native_decide
/-- Code #8565 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8565_qec :
    ∃ ψ, SS.IsAmplitudes code_8565 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8565 code_8565_ok (by decide) (by decide)

/-- Catalogue code #8566: ((6,2,2)), m=14, a=[1, 2, 4, 7, 9, 10], S=[0, 8]. -/
def code_8566 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8566_ok : code_8566.OK := by native_decide
/-- Code #8566 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8566_qec :
    ∃ ψ, SS.IsAmplitudes code_8566 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8566 code_8566_ok (by decide) (by decide)

/-- Catalogue code #8567: ((6,2,2)), m=14, a=[1, 2, 4, 7, 9, 10], S=[0, 11]. -/
def code_8567 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8567_ok : code_8567.OK := by native_decide
/-- Code #8567 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8567_qec :
    ∃ ψ, SS.IsAmplitudes code_8567 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8567 code_8567_ok (by decide) (by decide)

/-- Catalogue code #8568: ((6,2,2)), m=14, a=[1, 2, 4, 7, 9, 13], S=[0, 3]. -/
def code_8568 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ)]
theorem code_8568_ok : code_8568.OK := by native_decide
/-- Code #8568 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8568_qec :
    ∃ ψ, SS.IsAmplitudes code_8568 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8568 code_8568_ok (by decide) (by decide)

/-- Catalogue code #8569: ((6,2,2)), m=14, a=[1, 2, 4, 7, 10, 12], S=[0, 6]. -/
def code_8569 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8569_ok : code_8569.OK := by native_decide
/-- Code #8569 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8569_qec :
    ∃ ψ, SS.IsAmplitudes code_8569 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8569 code_8569_ok (by decide) (by decide)

/-- Catalogue code #8570: ((6,2,2)), m=14, a=[1, 2, 4, 7, 11, 13], S=[0, 5]. -/
def code_8570 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8570_ok : code_8570.OK := by native_decide
/-- Code #8570 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8570_qec :
    ∃ ψ, SS.IsAmplitudes code_8570 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8570 code_8570_ok (by decide) (by decide)

/-- Catalogue code #8571: ((6,2,2)), m=14, a=[1, 2, 4, 7, 12, 12], S=[0, 6]. -/
def code_8571 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8571_ok : code_8571.OK := by native_decide
/-- Code #8571 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8571_qec :
    ∃ ψ, SS.IsAmplitudes code_8571 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8571 code_8571_ok (by decide) (by decide)

/-- Catalogue code #8572: ((6,2,2)), m=14, a=[1, 2, 4, 8, 8, 9], S=[0, 3]. -/
def code_8572 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-5 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ)]
theorem code_8572_ok : code_8572.OK := by native_decide
/-- Code #8572 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8572_qec :
    ∃ ψ, SS.IsAmplitudes code_8572 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8572 code_8572_ok (by decide) (by decide)

/-- Catalogue code #8573: ((6,2,2)), m=14, a=[1, 2, 4, 8, 8, 11], S=[0, 5]. -/
def code_8573 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ)]
theorem code_8573_ok : code_8573.OK := by native_decide
/-- Code #8573 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8573_qec :
    ∃ ψ, SS.IsAmplitudes code_8573 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8573 code_8573_ok (by decide) (by decide)

/-- Catalogue code #8574: ((6,2,2)), m=14, a=[1, 2, 4, 8, 8, 13], S=[0, 5]. -/
def code_8574 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]
theorem code_8574_ok : code_8574.OK := by native_decide
/-- Code #8574 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8574_qec :
    ∃ ψ, SS.IsAmplitudes code_8574 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8574 code_8574_ok (by decide) (by decide)

/-- Catalogue code #8575: ((6,2,2)), m=14, a=[1, 2, 4, 8, 9, 13], S=[0, 3]. -/
def code_8575 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8575_ok : code_8575.OK := by native_decide
/-- Code #8575 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8575_qec :
    ∃ ψ, SS.IsAmplitudes code_8575 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8575 code_8575_ok (by decide) (by decide)

/-- Catalogue code #8576: ((6,2,2)), m=14, a=[1, 2, 4, 8, 11, 13], S=[0, 5]. -/
def code_8576 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8576_ok : code_8576.OK := by native_decide
/-- Code #8576 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8576_qec :
    ∃ ψ, SS.IsAmplitudes code_8576 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8576 code_8576_ok (by decide) (by decide)

/-- Catalogue code #8577: ((6,2,2)), m=14, a=[1, 2, 4, 9, 9, 13], S=[0, 3]. -/
def code_8577 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8577_ok : code_8577.OK := by native_decide
/-- Code #8577 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8577_qec :
    ∃ ψ, SS.IsAmplitudes code_8577 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8577 code_8577_ok (by decide) (by decide)

/-- Catalogue code #8578: ((6,2,2)), m=14, a=[1, 2, 4, 9, 11, 13], S=[0, 6]. -/
def code_8578 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8578_ok : code_8578.OK := by native_decide
/-- Code #8578 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8578_qec :
    ∃ ψ, SS.IsAmplitudes code_8578 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8578 code_8578_ok (by decide) (by decide)

/-- Catalogue code #8579: ((6,2,2)), m=14, a=[1, 2, 4, 10, 11, 12], S=[0, 6]. -/
def code_8579 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8579_ok : code_8579.OK := by native_decide
/-- Code #8579 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8579_qec :
    ∃ ψ, SS.IsAmplitudes code_8579 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8579 code_8579_ok (by decide) (by decide)

/-- Catalogue code #8580: ((6,2,2)), m=14, a=[1, 2, 4, 10, 12, 12], S=[0, 6]. -/
def code_8580 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![(1 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8580_ok : code_8580.OK := by native_decide
/-- Code #8580 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8580_qec :
    ∃ ψ, SS.IsAmplitudes code_8580 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8580 code_8580_ok (by decide) (by decide)

/-- Catalogue code #8581: ((6,2,2)), m=14, a=[1, 2, 5, 5, 5, 12], S=[0, 3]. -/
def code_8581 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8581_ok : code_8581.OK := by native_decide
/-- Code #8581 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8581_qec :
    ∃ ψ, SS.IsAmplitudes code_8581 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8581 code_8581_ok (by decide) (by decide)

/-- Catalogue code #8582: ((6,2,2)), m=14, a=[1, 2, 5, 5, 6, 12], S=[0, 4]. -/
def code_8582 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8582_ok : code_8582.OK := by native_decide
/-- Code #8582 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8582_qec :
    ∃ ψ, SS.IsAmplitudes code_8582 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8582 code_8582_ok (by decide) (by decide)

/-- Catalogue code #8583: ((6,2,2)), m=14, a=[1, 2, 5, 5, 7, 10], S=[0, 3]. -/
def code_8583 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8583_ok : code_8583.OK := by native_decide
/-- Code #8583 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8583_qec :
    ∃ ψ, SS.IsAmplitudes code_8583 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8583 code_8583_ok (by decide) (by decide)

/-- Catalogue code #8584: ((6,2,2)), m=14, a=[1, 2, 5, 5, 7, 11], S=[0, 4]. -/
def code_8584 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8584_ok : code_8584.OK := by native_decide
/-- Code #8584 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8584_qec :
    ∃ ψ, SS.IsAmplitudes code_8584 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8584 code_8584_ok (by decide) (by decide)

/-- Catalogue code #8585: ((6,2,2)), m=14, a=[1, 2, 5, 6, 6, 10], S=[0, 3]. -/
def code_8585 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((5 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ)]
theorem code_8585_ok : code_8585.OK := by native_decide
/-- Code #8585 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8585_qec :
    ∃ ψ, SS.IsAmplitudes code_8585 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8585 code_8585_ok (by decide) (by decide)

/-- Catalogue code #8586: ((6,2,2)), m=14, a=[1, 2, 5, 6, 7, 13], S=[0, 3]. -/
def code_8586 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8586_ok : code_8586.OK := by native_decide
/-- Code #8586 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8586_qec :
    ∃ ψ, SS.IsAmplitudes code_8586 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8586 code_8586_ok (by decide) (by decide)

/-- Catalogue code #8587: ((6,2,2)), m=14, a=[1, 2, 5, 6, 7, 13], S=[0, 10]. -/
def code_8587 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8587_ok : code_8587.OK := by native_decide
/-- Code #8587 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8587_qec :
    ∃ ψ, SS.IsAmplitudes code_8587 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8587 code_8587_ok (by decide) (by decide)

/-- Catalogue code #8588: ((6,2,2)), m=14, a=[1, 2, 5, 6, 8, 12], S=[0, 10]. -/
def code_8588 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8588_ok : code_8588.OK := by native_decide
/-- Code #8588 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8588_qec :
    ∃ ψ, SS.IsAmplitudes code_8588 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8588 code_8588_ok (by decide) (by decide)

/-- Catalogue code #8589: ((6,2,2)), m=14, a=[1, 2, 5, 6, 8, 13], S=[0, 11]. -/
def code_8589 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((6 : ℚ) / 7)]
theorem code_8589_ok : code_8589.OK := by native_decide
/-- Code #8589 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8589_qec :
    ∃ ψ, SS.IsAmplitudes code_8589 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8589 code_8589_ok (by decide) (by decide)

/-- Catalogue code #8590: ((6,2,2)), m=14, a=[1, 2, 5, 6, 9, 10], S=[0, 3]. -/
def code_8590 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8590_ok : code_8590.OK := by native_decide
/-- Code #8590 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8590_qec :
    ∃ ψ, SS.IsAmplitudes code_8590 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8590 code_8590_ok (by decide) (by decide)

/-- Catalogue code #8591: ((6,2,2)), m=14, a=[1, 2, 5, 6, 9, 11], S=[0, 4]. -/
def code_8591 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8591_ok : code_8591.OK := by native_decide
/-- Code #8591 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8591_qec :
    ∃ ψ, SS.IsAmplitudes code_8591 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8591 code_8591_ok (by decide) (by decide)

/-- Catalogue code #8592: ((6,2,2)), m=14, a=[1, 2, 5, 6, 9, 12], S=[0, 3]. -/
def code_8592 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8592_ok : code_8592.OK := by native_decide
/-- Code #8592 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8592_qec :
    ∃ ψ, SS.IsAmplitudes code_8592 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8592 code_8592_ok (by decide) (by decide)

/-- Catalogue code #8593: ((6,2,2)), m=14, a=[1, 2, 5, 6, 9, 12], S=[0, 4]. -/
def code_8593 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8593_ok : code_8593.OK := by native_decide
/-- Code #8593 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8593_qec :
    ∃ ψ, SS.IsAmplitudes code_8593 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8593 code_8593_ok (by decide) (by decide)

/-- Catalogue code #8594: ((6,2,2)), m=14, a=[1, 2, 5, 6, 9, 13], S=[0, 10]. -/
def code_8594 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8594_ok : code_8594.OK := by native_decide
/-- Code #8594 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8594_qec :
    ∃ ψ, SS.IsAmplitudes code_8594 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8594 code_8594_ok (by decide) (by decide)

/-- Catalogue code #8595: ((6,2,2)), m=14, a=[1, 2, 5, 6, 10, 10], S=[0, 3]. -/
def code_8595 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8595_ok : code_8595.OK := by native_decide
/-- Code #8595 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8595_qec :
    ∃ ψ, SS.IsAmplitudes code_8595 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8595 code_8595_ok (by decide) (by decide)

/-- Catalogue code #8596: ((6,2,2)), m=14, a=[1, 2, 5, 6, 10, 12], S=[0, 3]. -/
def code_8596 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((4 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8596_ok : code_8596.OK := by native_decide
/-- Code #8596 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8596_qec :
    ∃ ψ, SS.IsAmplitudes code_8596 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8596 code_8596_ok (by decide) (by decide)

/-- Catalogue code #8597: ((6,2,2)), m=14, a=[1, 2, 5, 6, 11, 11], S=[0, 4]. -/
def code_8597 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8597_ok : code_8597.OK := by native_decide
/-- Code #8597 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8597_qec :
    ∃ ψ, SS.IsAmplitudes code_8597 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8597 code_8597_ok (by decide) (by decide)

/-- Catalogue code #8598: ((6,2,2)), m=14, a=[1, 2, 5, 6, 11, 12], S=[0, 4]. -/
def code_8598 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8598_ok : code_8598.OK := by native_decide
/-- Code #8598 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8598_qec :
    ∃ ψ, SS.IsAmplitudes code_8598 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8598 code_8598_ok (by decide) (by decide)

/-- Catalogue code #8599: ((6,2,2)), m=14, a=[1, 2, 5, 7, 8, 10], S=[0, 3]. -/
def code_8599 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8599_ok : code_8599.OK := by native_decide
/-- Code #8599 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8599_qec :
    ∃ ψ, SS.IsAmplitudes code_8599 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8599 code_8599_ok (by decide) (by decide)

/-- Catalogue code #8600: ((6,2,2)), m=14, a=[1, 2, 5, 7, 8, 11], S=[0, 4]. -/
def code_8600 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8600_ok : code_8600.OK := by native_decide
/-- Code #8600 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8600_qec :
    ∃ ψ, SS.IsAmplitudes code_8600 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8600 code_8600_ok (by decide) (by decide)

/-- Catalogue code #8601: ((6,2,2)), m=14, a=[1, 2, 5, 7, 8, 11], S=[0, 10]. -/
def code_8601 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8601_ok : code_8601.OK := by native_decide
/-- Code #8601 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8601_qec :
    ∃ ψ, SS.IsAmplitudes code_8601 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8601 code_8601_ok (by decide) (by decide)

/-- Catalogue code #8602: ((6,2,2)), m=14, a=[1, 2, 5, 7, 8, 12], S=[0, 3]. -/
def code_8602 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8602_ok : code_8602.OK := by native_decide
/-- Code #8602 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8602_qec :
    ∃ ψ, SS.IsAmplitudes code_8602 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8602 code_8602_ok (by decide) (by decide)

/-- Catalogue code #8603: ((6,2,2)), m=14, a=[1, 2, 5, 7, 8, 12], S=[0, 4]. -/
def code_8603 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8603_ok : code_8603.OK := by native_decide
/-- Code #8603 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8603_qec :
    ∃ ψ, SS.IsAmplitudes code_8603 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8603 code_8603_ok (by decide) (by decide)

/-- Catalogue code #8604: ((6,2,2)), m=14, a=[1, 2, 5, 7, 8, 13], S=[0, 4]. -/
def code_8604 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8604_ok : code_8604.OK := by native_decide
/-- Code #8604 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8604_qec :
    ∃ ψ, SS.IsAmplitudes code_8604 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8604 code_8604_ok (by decide) (by decide)

/-- Catalogue code #8605: ((6,2,2)), m=14, a=[1, 2, 5, 7, 8, 13], S=[0, 11]. -/
def code_8605 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8605_ok : code_8605.OK := by native_decide
/-- Code #8605 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8605_qec :
    ∃ ψ, SS.IsAmplitudes code_8605 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8605 code_8605_ok (by decide) (by decide)

/-- Catalogue code #8606: ((6,2,2)), m=14, a=[1, 2, 5, 7, 10, 10], S=[0, 6]. -/
def code_8606 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8606_ok : code_8606.OK := by native_decide
/-- Code #8606 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8606_qec :
    ∃ ψ, SS.IsAmplitudes code_8606 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8606 code_8606_ok (by decide) (by decide)

/-- Catalogue code #8607: ((6,2,2)), m=14, a=[1, 2, 5, 7, 10, 12], S=[0, 3]. -/
def code_8607 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8607_ok : code_8607.OK := by native_decide
/-- Code #8607 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8607_qec :
    ∃ ψ, SS.IsAmplitudes code_8607 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8607 code_8607_ok (by decide) (by decide)

/-- Catalogue code #8608: ((6,2,2)), m=14, a=[1, 2, 5, 7, 10, 13], S=[0, 6]. -/
def code_8608 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8608_ok : code_8608.OK := by native_decide
/-- Code #8608 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8608_qec :
    ∃ ψ, SS.IsAmplitudes code_8608 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8608 code_8608_ok (by decide) (by decide)

/-- Catalogue code #8609: ((6,2,2)), m=14, a=[1, 2, 5, 7, 11, 11], S=[0, 8]. -/
def code_8609 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8609_ok : code_8609.OK := by native_decide
/-- Code #8609 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8609_qec :
    ∃ ψ, SS.IsAmplitudes code_8609 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8609 code_8609_ok (by decide) (by decide)

/-- Catalogue code #8610: ((6,2,2)), m=14, a=[1, 2, 5, 7, 11, 12], S=[0, 4]. -/
def code_8610 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8610_ok : code_8610.OK := by native_decide
/-- Code #8610 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8610_qec :
    ∃ ψ, SS.IsAmplitudes code_8610 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8610 code_8610_ok (by decide) (by decide)

/-- Catalogue code #8611: ((6,2,2)), m=14, a=[1, 2, 5, 7, 11, 13], S=[0, 8]. -/
def code_8611 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8611_ok : code_8611.OK := by native_decide
/-- Code #8611 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8611_qec :
    ∃ ψ, SS.IsAmplitudes code_8611 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8611 code_8611_ok (by decide) (by decide)

/-- Catalogue code #8612: ((6,2,2)), m=14, a=[1, 2, 5, 8, 8, 12], S=[0, 4]. -/
def code_8612 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8612_ok : code_8612.OK := by native_decide
/-- Code #8612 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8612_qec :
    ∃ ψ, SS.IsAmplitudes code_8612 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8612 code_8612_ok (by decide) (by decide)

/-- Catalogue code #8613: ((6,2,2)), m=14, a=[1, 2, 5, 8, 9, 11], S=[0, 10]. -/
def code_8613 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8613_ok : code_8613.OK := by native_decide
/-- Code #8613 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8613_qec :
    ∃ ψ, SS.IsAmplitudes code_8613 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8613 code_8613_ok (by decide) (by decide)

/-- Catalogue code #8614: ((6,2,2)), m=14, a=[1, 2, 5, 8, 10, 12], S=[0, 3]. -/
def code_8614 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8614_ok : code_8614.OK := by native_decide
/-- Code #8614 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8614_qec :
    ∃ ψ, SS.IsAmplitudes code_8614 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8614 code_8614_ok (by decide) (by decide)

/-- Catalogue code #8615: ((6,2,2)), m=14, a=[1, 2, 5, 8, 11, 12], S=[0, 4]. -/
def code_8615 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8615_ok : code_8615.OK := by native_decide
/-- Code #8615 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8615_qec :
    ∃ ψ, SS.IsAmplitudes code_8615 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8615 code_8615_ok (by decide) (by decide)

/-- Catalogue code #8616: ((6,2,2)), m=14, a=[1, 2, 5, 9, 11, 12], S=[0, 4]. -/
def code_8616 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8616_ok : code_8616.OK := by native_decide
/-- Code #8616 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8616_qec :
    ∃ ψ, SS.IsAmplitudes code_8616 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8616 code_8616_ok (by decide) (by decide)

/-- Catalogue code #8617: ((6,2,2)), m=14, a=[1, 2, 5, 10, 10, 10], S=[0, 8]. -/
def code_8617 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8617_ok : code_8617.OK := by native_decide
/-- Code #8617 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8617_qec :
    ∃ ψ, SS.IsAmplitudes code_8617 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8617 code_8617_ok (by decide) (by decide)

/-- Catalogue code #8618: ((6,2,2)), m=14, a=[1, 2, 5, 10, 10, 11], S=[0, 8]. -/
def code_8618 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8618_ok : code_8618.OK := by native_decide
/-- Code #8618 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8618_qec :
    ∃ ψ, SS.IsAmplitudes code_8618 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8618 code_8618_ok (by decide) (by decide)

/-- Catalogue code #8619: ((6,2,2)), m=14, a=[1, 2, 5, 10, 10, 12], S=[0, 6]. -/
def code_8619 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8619_ok : code_8619.OK := by native_decide
/-- Code #8619 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8619_qec :
    ∃ ψ, SS.IsAmplitudes code_8619 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8619 code_8619_ok (by decide) (by decide)

/-- Catalogue code #8620: ((6,2,2)), m=14, a=[1, 2, 5, 10, 10, 12], S=[0, 8]. -/
def code_8620 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8620_ok : code_8620.OK := by native_decide
/-- Code #8620 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8620_qec :
    ∃ ψ, SS.IsAmplitudes code_8620 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8620 code_8620_ok (by decide) (by decide)

/-- Catalogue code #8621: ((6,2,2)), m=14, a=[1, 2, 5, 10, 11, 11], S=[0, 8]. -/
def code_8621 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8621_ok : code_8621.OK := by native_decide
/-- Code #8621 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8621_qec :
    ∃ ψ, SS.IsAmplitudes code_8621 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8621 code_8621_ok (by decide) (by decide)

/-- Catalogue code #8622: ((6,2,2)), m=14, a=[1, 2, 5, 11, 11, 13], S=[0, 8]. -/
def code_8622 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_8622_ok : code_8622.OK := by native_decide
/-- Code #8622 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8622_qec :
    ∃ ψ, SS.IsAmplitudes code_8622 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8622 code_8622_ok (by decide) (by decide)

/-- Catalogue code #8623: ((6,2,2)), m=14, a=[1, 2, 6, 6, 6, 9], S=[0, 4]. -/
def code_8623 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8623_ok : code_8623.OK := by native_decide
/-- Code #8623 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8623_qec :
    ∃ ψ, SS.IsAmplitudes code_8623 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8623 code_8623_ok (by decide) (by decide)

/-- Catalogue code #8624: ((6,2,2)), m=14, a=[1, 2, 6, 6, 7, 11], S=[0, 9]. -/
def code_8624 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8624_ok : code_8624.OK := by native_decide
/-- Code #8624 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8624_qec :
    ∃ ψ, SS.IsAmplitudes code_8624 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8624 code_8624_ok (by decide) (by decide)

/-- Catalogue code #8625: ((6,2,2)), m=14, a=[1, 2, 6, 6, 7, 12], S=[0, 10]. -/
def code_8625 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8625_ok : code_8625.OK := by native_decide
/-- Code #8625 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8625_qec :
    ∃ ψ, SS.IsAmplitudes code_8625 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8625 code_8625_ok (by decide) (by decide)

/-- Catalogue code #8626: ((6,2,2)), m=14, a=[1, 2, 6, 6, 8, 11], S=[0, 10]. -/
def code_8626 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8626_ok : code_8626.OK := by native_decide
/-- Code #8626 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8626_qec :
    ∃ ψ, SS.IsAmplitudes code_8626 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8626 code_8626_ok (by decide) (by decide)

/-- Catalogue code #8627: ((6,2,2)), m=14, a=[1, 2, 6, 6, 8, 12], S=[0, 10]. -/
def code_8627 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![(1 : ℚ), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8627_ok : code_8627.OK := by native_decide
/-- Code #8627 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8627_qec :
    ∃ ψ, SS.IsAmplitudes code_8627 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8627 code_8627_ok (by decide) (by decide)

/-- Catalogue code #8628: ((6,2,2)), m=14, a=[1, 2, 6, 6, 9, 12], S=[0, 4]. -/
def code_8628 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8628_ok : code_8628.OK := by native_decide
/-- Code #8628 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8628_qec :
    ∃ ψ, SS.IsAmplitudes code_8628 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8628 code_8628_ok (by decide) (by decide)

/-- Catalogue code #8629: ((6,2,2)), m=14, a=[1, 2, 6, 6, 9, 12], S=[0, 10]. -/
def code_8629 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8629_ok : code_8629.OK := by native_decide
/-- Code #8629 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8629_qec :
    ∃ ψ, SS.IsAmplitudes code_8629 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8629 code_8629_ok (by decide) (by decide)

/-- Catalogue code #8630: ((6,2,2)), m=14, a=[1, 2, 6, 6, 10, 11], S=[0, 9]. -/
def code_8630 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]
theorem code_8630_ok : code_8630.OK := by native_decide
/-- Code #8630 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8630_qec :
    ∃ ψ, SS.IsAmplitudes code_8630 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8630 code_8630_ok (by decide) (by decide)

/-- Catalogue code #8631: ((6,2,2)), m=14, a=[1, 2, 6, 7, 8, 10], S=[0, 9]. -/
def code_8631 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8631_ok : code_8631.OK := by native_decide
/-- Code #8631 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8631_qec :
    ∃ ψ, SS.IsAmplitudes code_8631 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8631 code_8631_ok (by decide) (by decide)

/-- Catalogue code #8632: ((6,2,2)), m=14, a=[1, 2, 6, 7, 8, 12], S=[0, 4]. -/
def code_8632 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8632_ok : code_8632.OK := by native_decide
/-- Code #8632 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8632_qec :
    ∃ ψ, SS.IsAmplitudes code_8632 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8632 code_8632_ok (by decide) (by decide)

/-- Catalogue code #8633: ((6,2,2)), m=14, a=[1, 2, 6, 7, 9, 10], S=[0, 3]. -/
def code_8633 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8633_ok : code_8633.OK := by native_decide
/-- Code #8633 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8633_qec :
    ∃ ψ, SS.IsAmplitudes code_8633 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8633 code_8633_ok (by decide) (by decide)

/-- Catalogue code #8634: ((6,2,2)), m=14, a=[1, 2, 6, 7, 9, 11], S=[0, 4]. -/
def code_8634 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8634_ok : code_8634.OK := by native_decide
/-- Code #8634 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8634_qec :
    ∃ ψ, SS.IsAmplitudes code_8634 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8634 code_8634_ok (by decide) (by decide)

/-- Catalogue code #8635: ((6,2,2)), m=14, a=[1, 2, 6, 7, 9, 11], S=[0, 10]. -/
def code_8635 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8635_ok : code_8635.OK := by native_decide
/-- Code #8635 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8635_qec :
    ∃ ψ, SS.IsAmplitudes code_8635 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8635 code_8635_ok (by decide) (by decide)

/-- Catalogue code #8636: ((6,2,2)), m=14, a=[1, 2, 6, 7, 10, 10], S=[0, 3]. -/
def code_8636 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((5 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8636_ok : code_8636.OK := by native_decide
/-- Code #8636 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8636_qec :
    ∃ ψ, SS.IsAmplitudes code_8636 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8636 code_8636_ok (by decide) (by decide)

/-- Catalogue code #8637: ((6,2,2)), m=14, a=[1, 2, 6, 7, 11, 11], S=[0, 9]. -/
def code_8637 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8637_ok : code_8637.OK := by native_decide
/-- Code #8637 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8637_qec :
    ∃ ψ, SS.IsAmplitudes code_8637 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8637 code_8637_ok (by decide) (by decide)

/-- Catalogue code #8638: ((6,2,2)), m=14, a=[1, 2, 6, 7, 11, 13], S=[0, 9]. -/
def code_8638 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8638_ok : code_8638.OK := by native_decide
/-- Code #8638 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8638_qec :
    ∃ ψ, SS.IsAmplitudes code_8638 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8638 code_8638_ok (by decide) (by decide)

/-- Catalogue code #8639: ((6,2,2)), m=14, a=[1, 2, 6, 8, 8, 11], S=[0, 4]. -/
def code_8639 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8639_ok : code_8639.OK := by native_decide
/-- Code #8639 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8639_qec :
    ∃ ψ, SS.IsAmplitudes code_8639 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8639 code_8639_ok (by decide) (by decide)

/-- Catalogue code #8640: ((6,2,2)), m=14, a=[1, 2, 6, 8, 8, 12], S=[0, 4]. -/
def code_8640 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(1 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8640_ok : code_8640.OK := by native_decide
/-- Code #8640 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8640_qec :
    ∃ ψ, SS.IsAmplitudes code_8640 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8640 code_8640_ok (by decide) (by decide)

/-- Catalogue code #8641: ((6,2,2)), m=14, a=[1, 2, 6, 8, 9, 12], S=[0, 4]. -/
def code_8641 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8641_ok : code_8641.OK := by native_decide
/-- Code #8641 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8641_qec :
    ∃ ψ, SS.IsAmplitudes code_8641 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8641 code_8641_ok (by decide) (by decide)

/-- Catalogue code #8642: ((6,2,2)), m=14, a=[1, 2, 6, 9, 9, 10], S=[0, 11]. -/
def code_8642 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8642_ok : code_8642.OK := by native_decide
/-- Code #8642 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8642_qec :
    ∃ ψ, SS.IsAmplitudes code_8642 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8642 code_8642_ok (by decide) (by decide)

/-- Catalogue code #8643: ((6,2,2)), m=14, a=[1, 2, 6, 9, 10, 10], S=[0, 3]. -/
def code_8643 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8643_ok : code_8643.OK := by native_decide
/-- Code #8643 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8643_qec :
    ∃ ψ, SS.IsAmplitudes code_8643 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8643 code_8643_ok (by decide) (by decide)

/-- Catalogue code #8644: ((6,2,2)), m=14, a=[1, 2, 6, 9, 10, 12], S=[0, 3]. -/
def code_8644 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_8644_ok : code_8644.OK := by native_decide
/-- Code #8644 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8644_qec :
    ∃ ψ, SS.IsAmplitudes code_8644 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8644 code_8644_ok (by decide) (by decide)

/-- Catalogue code #8645: ((6,2,2)), m=14, a=[1, 2, 6, 9, 11, 12], S=[0, 4]. -/
def code_8645 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8645_ok : code_8645.OK := by native_decide
/-- Code #8645 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8645_qec :
    ∃ ψ, SS.IsAmplitudes code_8645 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8645 code_8645_ok (by decide) (by decide)

/-- Catalogue code #8646: ((6,2,2)), m=14, a=[1, 2, 6, 10, 10, 11], S=[0, 9]. -/
def code_8646 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]
theorem code_8646_ok : code_8646.OK := by native_decide
/-- Code #8646 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8646_qec :
    ∃ ψ, SS.IsAmplitudes code_8646 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8646 code_8646_ok (by decide) (by decide)

/-- Catalogue code #8647: ((6,2,2)), m=14, a=[1, 2, 6, 10, 11, 11], S=[0, 9]. -/
def code_8647 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8647_ok : code_8647.OK := by native_decide
/-- Code #8647 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8647_qec :
    ∃ ψ, SS.IsAmplitudes code_8647 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8647 code_8647_ok (by decide) (by decide)

/-- Catalogue code #8648: ((6,2,2)), m=14, a=[1, 2, 6, 10, 11, 12], S=[0, 5]. -/
def code_8648 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7)]
theorem code_8648_ok : code_8648.OK := by native_decide
/-- Code #8648 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8648_qec :
    ∃ ψ, SS.IsAmplitudes code_8648 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8648 code_8648_ok (by decide) (by decide)

/-- Catalogue code #8649: ((6,2,2)), m=14, a=[1, 2, 6, 10, 11, 12], S=[0, 9]. -/
def code_8649 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7)]
theorem code_8649_ok : code_8649.OK := by native_decide
/-- Code #8649 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8649_qec :
    ∃ ψ, SS.IsAmplitudes code_8649 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8649 code_8649_ok (by decide) (by decide)

/-- Catalogue code #8650: ((6,2,2)), m=14, a=[1, 2, 6, 11, 11, 13], S=[0, 9]. -/
def code_8650 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_8650_ok : code_8650.OK := by native_decide
/-- Code #8650 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8650_qec :
    ∃ ψ, SS.IsAmplitudes code_8650 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8650 code_8650_ok (by decide) (by decide)

/-- Catalogue code #8651: ((6,2,2)), m=14, a=[1, 2, 7, 8, 8, 10], S=[0, 5]. -/
def code_8651 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8651_ok : code_8651.OK := by native_decide
/-- Code #8651 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8651_qec :
    ∃ ψ, SS.IsAmplitudes code_8651 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8651 code_8651_ok (by decide) (by decide)

/-- Catalogue code #8652: ((6,2,2)), m=14, a=[1, 2, 7, 8, 8, 11], S=[0, 5]. -/
def code_8652 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8652_ok : code_8652.OK := by native_decide
/-- Code #8652 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8652_qec :
    ∃ ψ, SS.IsAmplitudes code_8652 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8652 code_8652_ok (by decide) (by decide)

/-- Catalogue code #8653: ((6,2,2)), m=14, a=[1, 2, 7, 8, 9, 10], S=[0, 11]. -/
def code_8653 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8653_ok : code_8653.OK := by native_decide
/-- Code #8653 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8653_qec :
    ∃ ψ, SS.IsAmplitudes code_8653 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8653 code_8653_ok (by decide) (by decide)

/-- Catalogue code #8654: ((6,2,2)), m=14, a=[1, 2, 7, 8, 10, 11], S=[0, 5]. -/
def code_8654 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8654_ok : code_8654.OK := by native_decide
/-- Code #8654 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8654_qec :
    ∃ ψ, SS.IsAmplitudes code_8654 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8654 code_8654_ok (by decide) (by decide)

/-- Catalogue code #8655: ((6,2,2)), m=14, a=[1, 2, 7, 8, 10, 11], S=[0, 9]. -/
def code_8655 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8655_ok : code_8655.OK := by native_decide
/-- Code #8655 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8655_qec :
    ∃ ψ, SS.IsAmplitudes code_8655 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8655 code_8655_ok (by decide) (by decide)

/-- Catalogue code #8656: ((6,2,2)), m=14, a=[1, 2, 7, 8, 10, 12], S=[0, 3]. -/
def code_8656 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_8656_ok : code_8656.OK := by native_decide
/-- Code #8656 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8656_qec :
    ∃ ψ, SS.IsAmplitudes code_8656 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8656 code_8656_ok (by decide) (by decide)

/-- Catalogue code #8657: ((6,2,2)), m=14, a=[1, 2, 7, 8, 10, 12], S=[0, 9]. -/
def code_8657 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8657_ok : code_8657.OK := by native_decide
/-- Code #8657 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8657_qec :
    ∃ ψ, SS.IsAmplitudes code_8657 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8657 code_8657_ok (by decide) (by decide)

/-- Catalogue code #8658: ((6,2,2)), m=14, a=[1, 2, 7, 8, 11, 11], S=[0, 10]. -/
def code_8658 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8658_ok : code_8658.OK := by native_decide
/-- Code #8658 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8658_qec :
    ∃ ψ, SS.IsAmplitudes code_8658 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8658 code_8658_ok (by decide) (by decide)

/-- Catalogue code #8659: ((6,2,2)), m=14, a=[1, 2, 7, 8, 11, 12], S=[0, 4]. -/
def code_8659 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8659_ok : code_8659.OK := by native_decide
/-- Code #8659 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8659_qec :
    ∃ ψ, SS.IsAmplitudes code_8659 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8659 code_8659_ok (by decide) (by decide)

/-- Catalogue code #8660: ((6,2,2)), m=14, a=[1, 2, 7, 8, 11, 12], S=[0, 9]. -/
def code_8660 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8660_ok : code_8660.OK := by native_decide
/-- Code #8660 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8660_qec :
    ∃ ψ, SS.IsAmplitudes code_8660 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8660 code_8660_ok (by decide) (by decide)

/-- Catalogue code #8661: ((6,2,2)), m=14, a=[1, 2, 7, 8, 11, 12], S=[0, 10]. -/
def code_8661 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8661_ok : code_8661.OK := by native_decide
/-- Code #8661 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8661_qec :
    ∃ ψ, SS.IsAmplitudes code_8661 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8661 code_8661_ok (by decide) (by decide)

/-- Catalogue code #8662: ((6,2,2)), m=14, a=[1, 2, 7, 8, 12, 12], S=[0, 4]. -/
def code_8662 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8662_ok : code_8662.OK := by native_decide
/-- Code #8662 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8662_qec :
    ∃ ψ, SS.IsAmplitudes code_8662 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8662 code_8662_ok (by decide) (by decide)

/-- Catalogue code #8663: ((6,2,2)), m=14, a=[1, 2, 7, 9, 9, 10], S=[0, 11]. -/
def code_8663 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7)]
theorem code_8663_ok : code_8663.OK := by native_decide
/-- Code #8663 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8663_qec :
    ∃ ψ, SS.IsAmplitudes code_8663 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8663 code_8663_ok (by decide) (by decide)

/-- Catalogue code #8664: ((6,2,2)), m=14, a=[1, 2, 7, 9, 9, 11], S=[0, 10]. -/
def code_8664 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8664_ok : code_8664.OK := by native_decide
/-- Code #8664 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8664_qec :
    ∃ ψ, SS.IsAmplitudes code_8664 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8664 code_8664_ok (by decide) (by decide)

/-- Catalogue code #8665: ((6,2,2)), m=14, a=[1, 2, 7, 9, 9, 13], S=[0, 3]. -/
def code_8665 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8665_ok : code_8665.OK := by native_decide
/-- Code #8665 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8665_qec :
    ∃ ψ, SS.IsAmplitudes code_8665 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8665 code_8665_ok (by decide) (by decide)

/-- Catalogue code #8666: ((6,2,2)), m=14, a=[1, 2, 7, 9, 9, 13], S=[0, 10]. -/
def code_8666 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8666_ok : code_8666.OK := by native_decide
/-- Code #8666 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8666_qec :
    ∃ ψ, SS.IsAmplitudes code_8666 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8666 code_8666_ok (by decide) (by decide)

/-- Catalogue code #8667: ((6,2,2)), m=14, a=[1, 2, 7, 9, 10, 10], S=[0, 3]. -/
def code_8667 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8667_ok : code_8667.OK := by native_decide
/-- Code #8667 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8667_qec :
    ∃ ψ, SS.IsAmplitudes code_8667 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8667 code_8667_ok (by decide) (by decide)

/-- Catalogue code #8668: ((6,2,2)), m=14, a=[1, 2, 7, 9, 11, 13], S=[0, 10]. -/
def code_8668 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8668_ok : code_8668.OK := by native_decide
/-- Code #8668 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8668_qec :
    ∃ ψ, SS.IsAmplitudes code_8668 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8668 code_8668_ok (by decide) (by decide)

/-- Catalogue code #8669: ((6,2,2)), m=14, a=[1, 2, 7, 10, 10, 13], S=[0, 6]. -/
def code_8669 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8669_ok : code_8669.OK := by native_decide
/-- Code #8669 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8669_qec :
    ∃ ψ, SS.IsAmplitudes code_8669 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8669 code_8669_ok (by decide) (by decide)

/-- Catalogue code #8670: ((6,2,2)), m=14, a=[1, 2, 7, 10, 11, 12], S=[0, 9]. -/
def code_8670 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7)]
theorem code_8670_ok : code_8670.OK := by native_decide
/-- Code #8670 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8670_qec :
    ∃ ψ, SS.IsAmplitudes code_8670 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8670 code_8670_ok (by decide) (by decide)

/-- Catalogue code #8671: ((6,2,2)), m=14, a=[1, 2, 7, 10, 12, 12], S=[0, 6]. -/
def code_8671 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8671_ok : code_8671.OK := by native_decide
/-- Code #8671 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8671_qec :
    ∃ ψ, SS.IsAmplitudes code_8671 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8671 code_8671_ok (by decide) (by decide)

/-- Catalogue code #8672: ((6,2,2)), m=14, a=[1, 2, 7, 11, 11, 12], S=[0, 10]. -/
def code_8672 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8672_ok : code_8672.OK := by native_decide
/-- Code #8672 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8672_qec :
    ∃ ψ, SS.IsAmplitudes code_8672 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8672 code_8672_ok (by decide) (by decide)

/-- Catalogue code #8673: ((6,2,2)), m=14, a=[1, 2, 7, 11, 11, 13], S=[0, 8]. -/
def code_8673 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8673_ok : code_8673.OK := by native_decide
/-- Code #8673 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8673_qec :
    ∃ ψ, SS.IsAmplitudes code_8673 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8673 code_8673_ok (by decide) (by decide)

/-- Catalogue code #8674: ((6,2,2)), m=14, a=[1, 2, 7, 11, 11, 13], S=[0, 9]. -/
def code_8674 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8674_ok : code_8674.OK := by native_decide
/-- Code #8674 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8674_qec :
    ∃ ψ, SS.IsAmplitudes code_8674 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8674 code_8674_ok (by decide) (by decide)

/-- Catalogue code #8675: ((6,2,2)), m=14, a=[1, 2, 8, 8, 9, 10], S=[0, 11]. -/
def code_8675 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((5 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]
theorem code_8675_ok : code_8675.OK := by native_decide
/-- Code #8675 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8675_qec :
    ∃ ψ, SS.IsAmplitudes code_8675 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8675 code_8675_ok (by decide) (by decide)

/-- Catalogue code #8676: ((6,2,2)), m=14, a=[1, 2, 8, 8, 9, 12], S=[0, 10]. -/
def code_8676 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_8676_ok : code_8676.OK := by native_decide
/-- Code #8676 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8676_qec :
    ∃ ψ, SS.IsAmplitudes code_8676 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8676 code_8676_ok (by decide) (by decide)

/-- Catalogue code #8677: ((6,2,2)), m=14, a=[1, 2, 8, 8, 9, 13], S=[0, 3]. -/
def code_8677 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-6 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]
theorem code_8677_ok : code_8677.OK := by native_decide
/-- Code #8677 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8677_qec :
    ∃ ψ, SS.IsAmplitudes code_8677 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8677 code_8677_ok (by decide) (by decide)

/-- Catalogue code #8678: ((6,2,2)), m=14, a=[1, 2, 8, 8, 10, 11], S=[0, 5]. -/
def code_8678 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ)]
theorem code_8678_ok : code_8678.OK := by native_decide
/-- Code #8678 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8678_qec :
    ∃ ψ, SS.IsAmplitudes code_8678 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8678 code_8678_ok (by decide) (by decide)

/-- Catalogue code #8679: ((6,2,2)), m=14, a=[1, 2, 8, 8, 10, 13], S=[0, 3]. -/
def code_8679 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]
theorem code_8679_ok : code_8679.OK := by native_decide
/-- Code #8679 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8679_qec :
    ∃ ψ, SS.IsAmplitudes code_8679 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8679 code_8679_ok (by decide) (by decide)

/-- Catalogue code #8680: ((6,2,2)), m=14, a=[1, 2, 8, 8, 11, 12], S=[0, 4]. -/
def code_8680 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8680_ok : code_8680.OK := by native_decide
/-- Code #8680 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8680_qec :
    ∃ ψ, SS.IsAmplitudes code_8680 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8680 code_8680_ok (by decide) (by decide)

/-- Catalogue code #8681: ((6,2,2)), m=14, a=[1, 2, 8, 8, 12, 12], S=[0, 4]. -/
def code_8681 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![false, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(1 : ℚ), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8681_ok : code_8681.OK := by native_decide
/-- Code #8681 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8681_qec :
    ∃ ψ, SS.IsAmplitudes code_8681 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8681 code_8681_ok (by decide) (by decide)

/-- Catalogue code #8682: ((6,2,2)), m=14, a=[1, 2, 8, 9, 12, 12], S=[0, 10]. -/
def code_8682 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8682_ok : code_8682.OK := by native_decide
/-- Code #8682 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8682_qec :
    ∃ ψ, SS.IsAmplitudes code_8682 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8682 code_8682_ok (by decide) (by decide)

/-- Catalogue code #8683: ((6,2,2)), m=14, a=[1, 2, 8, 10, 11, 12], S=[0, 9]. -/
def code_8683 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7)]
theorem code_8683_ok : code_8683.OK := by native_decide
/-- Code #8683 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8683_qec :
    ∃ ψ, SS.IsAmplitudes code_8683 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8683 code_8683_ok (by decide) (by decide)

/-- Catalogue code #8684: ((6,2,2)), m=14, a=[1, 2, 8, 11, 11, 12], S=[0, 10]. -/
def code_8684 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8684_ok : code_8684.OK := by native_decide
/-- Code #8684 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8684_qec :
    ∃ ψ, SS.IsAmplitudes code_8684 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8684 code_8684_ok (by decide) (by decide)

/-- Catalogue code #8685: ((6,2,2)), m=14, a=[1, 2, 9, 9, 9, 13], S=[0, 3]. -/
def code_8685 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8685_ok : code_8685.OK := by native_decide
/-- Code #8685 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8685_qec :
    ∃ ψ, SS.IsAmplitudes code_8685 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8685 code_8685_ok (by decide) (by decide)

/-- Catalogue code #8686: ((6,2,2)), m=14, a=[1, 2, 9, 9, 11, 13], S=[0, 10]. -/
def code_8686 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8686_ok : code_8686.OK := by native_decide
/-- Code #8686 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8686_qec :
    ∃ ψ, SS.IsAmplitudes code_8686 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8686 code_8686_ok (by decide) (by decide)

/-- Catalogue code #8687: ((6,2,2)), m=14, a=[1, 2, 9, 10, 10, 12], S=[0, 8]. -/
def code_8687 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8687_ok : code_8687.OK := by native_decide
/-- Code #8687 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8687_qec :
    ∃ ψ, SS.IsAmplitudes code_8687 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8687 code_8687_ok (by decide) (by decide)

/-- Catalogue code #8688: ((6,2,2)), m=14, a=[1, 2, 10, 10, 10, 11], S=[0, 8]. -/
def code_8688 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8688_ok : code_8688.OK := by native_decide
/-- Code #8688 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8688_qec :
    ∃ ψ, SS.IsAmplitudes code_8688 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8688 code_8688_ok (by decide) (by decide)

/-- Catalogue code #8689: ((6,2,2)), m=14, a=[1, 2, 10, 10, 11, 11], S=[0, 8]. -/
def code_8689 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8689_ok : code_8689.OK := by native_decide
/-- Code #8689 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8689_qec :
    ∃ ψ, SS.IsAmplitudes code_8689 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8689 code_8689_ok (by decide) (by decide)

/-- Catalogue code #8690: ((6,2,2)), m=14, a=[1, 2, 10, 10, 11, 11], S=[0, 9]. -/
def code_8690 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8690_ok : code_8690.OK := by native_decide
/-- Code #8690 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8690_qec :
    ∃ ψ, SS.IsAmplitudes code_8690 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8690 code_8690_ok (by decide) (by decide)

/-- Catalogue code #8691: ((6,2,2)), m=14, a=[1, 3, 3, 3, 4, 4], S=[0, 9]. -/
def code_8691 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8691_ok : code_8691.OK := by native_decide
/-- Code #8691 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8691_qec :
    ∃ ψ, SS.IsAmplitudes code_8691 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8691 code_8691_ok (by decide) (by decide)

/-- Catalogue code #8692: ((6,2,2)), m=14, a=[1, 3, 3, 3, 5, 5], S=[0, 10]. -/
def code_8692 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8692_ok : code_8692.OK := by native_decide
/-- Code #8692 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8692_qec :
    ∃ ψ, SS.IsAmplitudes code_8692 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8692 code_8692_ok (by decide) (by decide)

/-- Catalogue code #8693: ((6,2,2)), m=14, a=[1, 3, 3, 4, 4, 6], S=[0, 9]. -/
def code_8693 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8693_ok : code_8693.OK := by native_decide
/-- Code #8693 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8693_qec :
    ∃ ψ, SS.IsAmplitudes code_8693 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8693 code_8693_ok (by decide) (by decide)

/-- Catalogue code #8694: ((6,2,2)), m=14, a=[1, 3, 3, 4, 6, 7], S=[0, 5]. -/
def code_8694 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8694_ok : code_8694.OK := by native_decide
/-- Code #8694 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8694_qec :
    ∃ ψ, SS.IsAmplitudes code_8694 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8694 code_8694_ok (by decide) (by decide)

/-- Catalogue code #8695: ((6,2,2)), m=14, a=[1, 3, 3, 4, 6, 7], S=[0, 12]. -/
def code_8695 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8695_ok : code_8695.OK := by native_decide
/-- Code #8695 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8695_qec :
    ∃ ψ, SS.IsAmplitudes code_8695 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8695 code_8695_ok (by decide) (by decide)

/-- Catalogue code #8696: ((6,2,2)), m=14, a=[1, 3, 3, 4, 6, 8], S=[0, 12]. -/
def code_8696 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8696_ok : code_8696.OK := by native_decide
/-- Code #8696 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8696_qec :
    ∃ ψ, SS.IsAmplitudes code_8696 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8696 code_8696_ok (by decide) (by decide)

/-- Catalogue code #8697: ((6,2,2)), m=14, a=[1, 3, 3, 4, 7, 9], S=[0, 8]. -/
def code_8697 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8697_ok : code_8697.OK := by native_decide
/-- Code #8697 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8697_qec :
    ∃ ψ, SS.IsAmplitudes code_8697 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8697 code_8697_ok (by decide) (by decide)

/-- Catalogue code #8698: ((6,2,2)), m=14, a=[1, 3, 3, 4, 9, 9], S=[0, 8]. -/
def code_8698 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8698_ok : code_8698.OK := by native_decide
/-- Code #8698 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8698_qec :
    ∃ ψ, SS.IsAmplitudes code_8698 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8698 code_8698_ok (by decide) (by decide)

/-- Catalogue code #8699: ((6,2,2)), m=14, a=[1, 3, 3, 5, 5, 7], S=[0, 4]. -/
def code_8699 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8699_ok : code_8699.OK := by native_decide
/-- Code #8699 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8699_qec :
    ∃ ψ, SS.IsAmplitudes code_8699 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8699 code_8699_ok (by decide) (by decide)

/-- Catalogue code #8700: ((6,2,2)), m=14, a=[1, 3, 3, 5, 5, 7], S=[0, 6]. -/
def code_8700 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_8700_ok : code_8700.OK := by native_decide
/-- Code #8700 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8700_qec :
    ∃ ψ, SS.IsAmplitudes code_8700 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8700 code_8700_ok (by decide) (by decide)

/-- Catalogue code #8701: ((6,2,2)), m=14, a=[1, 3, 3, 5, 5, 8], S=[0, 4]. -/
def code_8701 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8701_ok : code_8701.OK := by native_decide
/-- Code #8701 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8701_qec :
    ∃ ψ, SS.IsAmplitudes code_8701 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8701 code_8701_ok (by decide) (by decide)

/-- Catalogue code #8702: ((6,2,2)), m=14, a=[1, 3, 3, 5, 5, 10], S=[0, 6]. -/
def code_8702 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_8702_ok : code_8702.OK := by native_decide
/-- Code #8702 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8702_qec :
    ∃ ψ, SS.IsAmplitudes code_8702 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8702 code_8702_ok (by decide) (by decide)

/-- Catalogue code #8703: ((6,2,2)), m=14, a=[1, 3, 3, 5, 6, 7], S=[0, 12]. -/
def code_8703 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8703_ok : code_8703.OK := by native_decide
/-- Code #8703 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8703_qec :
    ∃ ψ, SS.IsAmplitudes code_8703 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8703 code_8703_ok (by decide) (by decide)

/-- Catalogue code #8704: ((6,2,2)), m=14, a=[1, 3, 3, 5, 7, 8], S=[0, 4]. -/
def code_8704 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8704_ok : code_8704.OK := by native_decide
/-- Code #8704 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8704_qec :
    ∃ ψ, SS.IsAmplitudes code_8704 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8704 code_8704_ok (by decide) (by decide)

/-- Catalogue code #8705: ((6,2,2)), m=14, a=[1, 3, 3, 5, 7, 8], S=[0, 12]. -/
def code_8705 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8705_ok : code_8705.OK := by native_decide
/-- Code #8705 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8705_qec :
    ∃ ψ, SS.IsAmplitudes code_8705 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8705 code_8705_ok (by decide) (by decide)

/-- Catalogue code #8706: ((6,2,2)), m=14, a=[1, 3, 3, 5, 7, 10], S=[0, 6]. -/
def code_8706 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8706_ok : code_8706.OK := by native_decide
/-- Code #8706 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8706_qec :
    ∃ ψ, SS.IsAmplitudes code_8706 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8706 code_8706_ok (by decide) (by decide)

/-- Catalogue code #8707: ((6,2,2)), m=14, a=[1, 3, 3, 5, 7, 13], S=[0, 6]. -/
def code_8707 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8707_ok : code_8707.OK := by native_decide
/-- Code #8707 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8707_qec :
    ∃ ψ, SS.IsAmplitudes code_8707 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8707 code_8707_ok (by decide) (by decide)

/-- Catalogue code #8708: ((6,2,2)), m=14, a=[1, 3, 3, 5, 7, 13], S=[0, 12]. -/
def code_8708 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8708_ok : code_8708.OK := by native_decide
/-- Code #8708 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8708_qec :
    ∃ ψ, SS.IsAmplitudes code_8708 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8708 code_8708_ok (by decide) (by decide)

/-- Catalogue code #8709: ((6,2,2)), m=14, a=[1, 3, 3, 5, 8, 13], S=[0, 12]. -/
def code_8709 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8709_ok : code_8709.OK := by native_decide
/-- Code #8709 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8709_qec :
    ∃ ψ, SS.IsAmplitudes code_8709 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8709 code_8709_ok (by decide) (by decide)

/-- Catalogue code #8710: ((6,2,2)), m=14, a=[1, 3, 3, 5, 10, 10], S=[0, 6]. -/
def code_8710 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8710_ok : code_8710.OK := by native_decide
/-- Code #8710 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8710_qec :
    ∃ ψ, SS.IsAmplitudes code_8710 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8710 code_8710_ok (by decide) (by decide)

/-- Catalogue code #8711: ((6,2,2)), m=14, a=[1, 3, 3, 6, 7, 9], S=[0, 2]. -/
def code_8711 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8711_ok : code_8711.OK := by native_decide
/-- Code #8711 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8711_qec :
    ∃ ψ, SS.IsAmplitudes code_8711 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8711 code_8711_ok (by decide) (by decide)

/-- Catalogue code #8712: ((6,2,2)), m=14, a=[1, 3, 3, 6, 7, 9], S=[0, 10]. -/
def code_8712 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_8712_ok : code_8712.OK := by native_decide
/-- Code #8712 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8712_qec :
    ∃ ψ, SS.IsAmplitudes code_8712 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8712 code_8712_ok (by decide) (by decide)

/-- Catalogue code #8713: ((6,2,2)), m=14, a=[1, 3, 3, 6, 7, 12], S=[0, 5]. -/
def code_8713 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8713_ok : code_8713.OK := by native_decide
/-- Code #8713 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8713_qec :
    ∃ ψ, SS.IsAmplitudes code_8713 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8713 code_8713_ok (by decide) (by decide)

/-- Catalogue code #8714: ((6,2,2)), m=14, a=[1, 3, 3, 6, 9, 9], S=[0, 10]. -/
def code_8714 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8714_ok : code_8714.OK := by native_decide
/-- Code #8714 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8714_qec :
    ∃ ψ, SS.IsAmplitudes code_8714 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8714 code_8714_ok (by decide) (by decide)

/-- Catalogue code #8715: ((6,2,2)), m=14, a=[1, 3, 3, 7, 8, 9], S=[0, 2]. -/
def code_8715 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8715_ok : code_8715.OK := by native_decide
/-- Code #8715 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8715_qec :
    ∃ ψ, SS.IsAmplitudes code_8715 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8715 code_8715_ok (by decide) (by decide)

/-- Catalogue code #8716: ((6,2,2)), m=14, a=[1, 3, 3, 7, 8, 10], S=[0, 2]. -/
def code_8716 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8716_ok : code_8716.OK := by native_decide
/-- Code #8716 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8716_qec :
    ∃ ψ, SS.IsAmplitudes code_8716 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8716 code_8716_ok (by decide) (by decide)

/-- Catalogue code #8717: ((6,2,2)), m=14, a=[1, 3, 3, 7, 8, 10], S=[0, 9]. -/
def code_8717 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8717_ok : code_8717.OK := by native_decide
/-- Code #8717 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8717_qec :
    ∃ ψ, SS.IsAmplitudes code_8717 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8717 code_8717_ok (by decide) (by decide)

/-- Catalogue code #8718: ((6,2,2)), m=14, a=[1, 3, 3, 7, 8, 12], S=[0, 5]. -/
def code_8718 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-4 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8718_ok : code_8718.OK := by native_decide
/-- Code #8718 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8718_qec :
    ∃ ψ, SS.IsAmplitudes code_8718 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8718 code_8718_ok (by decide) (by decide)

/-- Catalogue code #8719: ((6,2,2)), m=14, a=[1, 3, 3, 7, 8, 13], S=[0, 2]. -/
def code_8719 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8719_ok : code_8719.OK := by native_decide
/-- Code #8719 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8719_qec :
    ∃ ψ, SS.IsAmplitudes code_8719 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8719 code_8719_ok (by decide) (by decide)

/-- Catalogue code #8720: ((6,2,2)), m=14, a=[1, 3, 3, 7, 8, 13], S=[0, 5]. -/
def code_8720 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8720_ok : code_8720.OK := by native_decide
/-- Code #8720 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8720_qec :
    ∃ ψ, SS.IsAmplitudes code_8720 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8720 code_8720_ok (by decide) (by decide)

/-- Catalogue code #8721: ((6,2,2)), m=14, a=[1, 3, 3, 7, 9, 9], S=[0, 8]. -/
def code_8721 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8721_ok : code_8721.OK := by native_decide
/-- Code #8721 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8721_qec :
    ∃ ψ, SS.IsAmplitudes code_8721 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8721 code_8721_ok (by decide) (by decide)

/-- Catalogue code #8722: ((6,2,2)), m=14, a=[1, 3, 3, 7, 9, 9], S=[0, 10]. -/
def code_8722 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8722_ok : code_8722.OK := by native_decide
/-- Code #8722 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8722_qec :
    ∃ ψ, SS.IsAmplitudes code_8722 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8722 code_8722_ok (by decide) (by decide)

/-- Catalogue code #8723: ((6,2,2)), m=14, a=[1, 3, 3, 7, 9, 12], S=[0, 6]. -/
def code_8723 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8723_ok : code_8723.OK := by native_decide
/-- Code #8723 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8723_qec :
    ∃ ψ, SS.IsAmplitudes code_8723 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8723 code_8723_ok (by decide) (by decide)

/-- Catalogue code #8724: ((6,2,2)), m=14, a=[1, 3, 3, 7, 9, 12], S=[0, 8]. -/
def code_8724 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8724_ok : code_8724.OK := by native_decide
/-- Code #8724 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8724_qec :
    ∃ ψ, SS.IsAmplitudes code_8724 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8724 code_8724_ok (by decide) (by decide)

/-- Catalogue code #8725: ((6,2,2)), m=14, a=[1, 3, 3, 7, 9, 13], S=[0, 2]. -/
def code_8725 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8725_ok : code_8725.OK := by native_decide
/-- Code #8725 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8725_qec :
    ∃ ψ, SS.IsAmplitudes code_8725 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8725 code_8725_ok (by decide) (by decide)

/-- Catalogue code #8726: ((6,2,2)), m=14, a=[1, 3, 3, 7, 9, 13], S=[0, 6]. -/
def code_8726 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8726_ok : code_8726.OK := by native_decide
/-- Code #8726 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8726_qec :
    ∃ ψ, SS.IsAmplitudes code_8726 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8726 code_8726_ok (by decide) (by decide)

/-- Catalogue code #8727: ((6,2,2)), m=14, a=[1, 3, 3, 7, 12, 12], S=[0, 4]. -/
def code_8727 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8727_ok : code_8727.OK := by native_decide
/-- Code #8727 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8727_qec :
    ∃ ψ, SS.IsAmplitudes code_8727 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8727 code_8727_ok (by decide) (by decide)

/-- Catalogue code #8728: ((6,2,2)), m=14, a=[1, 3, 3, 7, 12, 13], S=[0, 5]. -/
def code_8728 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8728_ok : code_8728.OK := by native_decide
/-- Code #8728 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8728_qec :
    ∃ ψ, SS.IsAmplitudes code_8728 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8728 code_8728_ok (by decide) (by decide)

/-- Catalogue code #8729: ((6,2,2)), m=14, a=[1, 3, 3, 7, 12, 13], S=[0, 6]. -/
def code_8729 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8729_ok : code_8729.OK := by native_decide
/-- Code #8729 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8729_qec :
    ∃ ψ, SS.IsAmplitudes code_8729 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8729 code_8729_ok (by decide) (by decide)

/-- Catalogue code #8730: ((6,2,2)), m=14, a=[1, 3, 3, 8, 9, 13], S=[0, 2]. -/
def code_8730 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8730_ok : code_8730.OK := by native_decide
/-- Code #8730 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8730_qec :
    ∃ ψ, SS.IsAmplitudes code_8730 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8730 code_8730_ok (by decide) (by decide)

/-- Catalogue code #8731: ((6,2,2)), m=14, a=[1, 3, 3, 8, 10, 10], S=[0, 9]. -/
def code_8731 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((6 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8731_ok : code_8731.OK := by native_decide
/-- Code #8731 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8731_qec :
    ∃ ψ, SS.IsAmplitudes code_8731 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8731 code_8731_ok (by decide) (by decide)

/-- Catalogue code #8732: ((6,2,2)), m=14, a=[1, 3, 3, 8, 12, 12], S=[0, 4]. -/
def code_8732 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8732_ok : code_8732.OK := by native_decide
/-- Code #8732 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8732_qec :
    ∃ ψ, SS.IsAmplitudes code_8732 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8732 code_8732_ok (by decide) (by decide)

/-- Catalogue code #8733: ((6,2,2)), m=14, a=[1, 3, 3, 8, 12, 13], S=[0, 5]. -/
def code_8733 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7)]
theorem code_8733_ok : code_8733.OK := by native_decide
/-- Code #8733 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8733_qec :
    ∃ ψ, SS.IsAmplitudes code_8733 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8733 code_8733_ok (by decide) (by decide)

/-- Catalogue code #8734: ((6,2,2)), m=14, a=[1, 3, 3, 9, 12, 13], S=[0, 6]. -/
def code_8734 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8734_ok : code_8734.OK := by native_decide
/-- Code #8734 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8734_qec :
    ∃ ψ, SS.IsAmplitudes code_8734 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8734 code_8734_ok (by decide) (by decide)

/-- Catalogue code #8735: ((6,2,2)), m=14, a=[1, 3, 4, 4, 5, 7], S=[0, 8]. -/
def code_8735 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8735_ok : code_8735.OK := by native_decide
/-- Code #8735 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8735_qec :
    ∃ ψ, SS.IsAmplitudes code_8735 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8735 code_8735_ok (by decide) (by decide)

/-- Catalogue code #8736: ((6,2,2)), m=14, a=[1, 3, 4, 4, 8, 11], S=[0, 5]. -/
def code_8736 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((6 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]
theorem code_8736_ok : code_8736.OK := by native_decide
/-- Code #8736 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8736_qec :
    ∃ ψ, SS.IsAmplitudes code_8736 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8736 code_8736_ok (by decide) (by decide)

/-- Catalogue code #8737: ((6,2,2)), m=14, a=[1, 3, 4, 4, 9, 11], S=[0, 6]. -/
def code_8737 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8737_ok : code_8737.OK := by native_decide
/-- Code #8737 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8737_qec :
    ∃ ψ, SS.IsAmplitudes code_8737 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8737 code_8737_ok (by decide) (by decide)

/-- Catalogue code #8738: ((6,2,2)), m=14, a=[1, 3, 4, 5, 5, 7], S=[0, 8]. -/
def code_8738 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8738_ok : code_8738.OK := by native_decide
/-- Code #8738 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8738_qec :
    ∃ ψ, SS.IsAmplitudes code_8738 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8738 code_8738_ok (by decide) (by decide)

/-- Catalogue code #8739: ((6,2,2)), m=14, a=[1, 3, 4, 5, 5, 7], S=[0, 12]. -/
def code_8739 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8739_ok : code_8739.OK := by native_decide
/-- Code #8739 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8739_qec :
    ∃ ψ, SS.IsAmplitudes code_8739 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8739 code_8739_ok (by decide) (by decide)

/-- Catalogue code #8740: ((6,2,2)), m=14, a=[1, 3, 4, 5, 5, 11], S=[0, 8]. -/
def code_8740 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8740_ok : code_8740.OK := by native_decide
/-- Code #8740 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8740_qec :
    ∃ ψ, SS.IsAmplitudes code_8740 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8740 code_8740_ok (by decide) (by decide)

/-- Catalogue code #8741: ((6,2,2)), m=14, a=[1, 3, 4, 5, 6, 13], S=[0, 12]. -/
def code_8741 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8741_ok : code_8741.OK := by native_decide
/-- Code #8741 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8741_qec :
    ∃ ψ, SS.IsAmplitudes code_8741 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8741 code_8741_ok (by decide) (by decide)

/-- Catalogue code #8742: ((6,2,2)), m=14, a=[1, 3, 4, 5, 7, 9], S=[0, 2]. -/
def code_8742 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8742_ok : code_8742.OK := by native_decide
/-- Code #8742 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8742_qec :
    ∃ ψ, SS.IsAmplitudes code_8742 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8742 code_8742_ok (by decide) (by decide)

/-- Catalogue code #8743: ((6,2,2)), m=14, a=[1, 3, 4, 5, 7, 11], S=[0, 8]. -/
def code_8743 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8743_ok : code_8743.OK := by native_decide
/-- Code #8743 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8743_qec :
    ∃ ψ, SS.IsAmplitudes code_8743 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8743 code_8743_ok (by decide) (by decide)

/-- Catalogue code #8744: ((6,2,2)), m=14, a=[1, 3, 4, 5, 7, 12], S=[0, 8]. -/
def code_8744 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8744_ok : code_8744.OK := by native_decide
/-- Code #8744 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8744_qec :
    ∃ ψ, SS.IsAmplitudes code_8744 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8744 code_8744_ok (by decide) (by decide)

/-- Catalogue code #8745: ((6,2,2)), m=14, a=[1, 3, 4, 6, 6, 9], S=[0, 2]. -/
def code_8745 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8745_ok : code_8745.OK := by native_decide
/-- Code #8745 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8745_qec :
    ∃ ψ, SS.IsAmplitudes code_8745 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8745 code_8745_ok (by decide) (by decide)

/-- Catalogue code #8746: ((6,2,2)), m=14, a=[1, 3, 4, 6, 6, 11], S=[0, 2]. -/
def code_8746 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8746_ok : code_8746.OK := by native_decide
/-- Code #8746 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8746_qec :
    ∃ ψ, SS.IsAmplitudes code_8746 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8746 code_8746_ok (by decide) (by decide)

/-- Catalogue code #8747: ((6,2,2)), m=14, a=[1, 3, 4, 6, 6, 12], S=[0, 5]. -/
def code_8747 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8747_ok : code_8747.OK := by native_decide
/-- Code #8747 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8747_qec :
    ∃ ψ, SS.IsAmplitudes code_8747 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8747 code_8747_ok (by decide) (by decide)

/-- Catalogue code #8748: ((6,2,2)), m=14, a=[1, 3, 4, 6, 6, 13], S=[0, 2]. -/
def code_8748 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8748_ok : code_8748.OK := by native_decide
/-- Code #8748 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8748_qec :
    ∃ ψ, SS.IsAmplitudes code_8748 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8748 code_8748_ok (by decide) (by decide)

/-- Catalogue code #8749: ((6,2,2)), m=14, a=[1, 3, 4, 6, 7, 11], S=[0, 9]. -/
def code_8749 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8749_ok : code_8749.OK := by native_decide
/-- Code #8749 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8749_qec :
    ∃ ψ, SS.IsAmplitudes code_8749 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8749 code_8749_ok (by decide) (by decide)

/-- Catalogue code #8750: ((6,2,2)), m=14, a=[1, 3, 4, 6, 8, 10], S=[0, 2]. -/
def code_8750 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8750_ok : code_8750.OK := by native_decide
/-- Code #8750 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8750_qec :
    ∃ ψ, SS.IsAmplitudes code_8750 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8750 code_8750_ok (by decide) (by decide)

/-- Catalogue code #8751: ((6,2,2)), m=14, a=[1, 3, 4, 6, 8, 13], S=[0, 9]. -/
def code_8751 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8751_ok : code_8751.OK := by native_decide
/-- Code #8751 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8751_qec :
    ∃ ψ, SS.IsAmplitudes code_8751 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8751 code_8751_ok (by decide) (by decide)

/-- Catalogue code #8752: ((6,2,2)), m=14, a=[1, 3, 4, 6, 8, 13], S=[0, 12]. -/
def code_8752 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8752_ok : code_8752.OK := by native_decide
/-- Code #8752 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8752_qec :
    ∃ ψ, SS.IsAmplitudes code_8752 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8752 code_8752_ok (by decide) (by decide)

/-- Catalogue code #8753: ((6,2,2)), m=14, a=[1, 3, 4, 6, 10, 11], S=[0, 5]. -/
def code_8753 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((6 : ℚ) / 7)]
theorem code_8753_ok : code_8753.OK := by native_decide
/-- Code #8753 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8753_qec :
    ∃ ψ, SS.IsAmplitudes code_8753 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8753 code_8753_ok (by decide) (by decide)

/-- Catalogue code #8754: ((6,2,2)), m=14, a=[1, 3, 4, 6, 10, 12], S=[0, 5]. -/
def code_8754 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8754_ok : code_8754.OK := by native_decide
/-- Code #8754 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8754_qec :
    ∃ ψ, SS.IsAmplitudes code_8754 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8754 code_8754_ok (by decide) (by decide)

/-- Catalogue code #8755: ((6,2,2)), m=14, a=[1, 3, 4, 6, 11, 12], S=[0, 5]. -/
def code_8755 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((2 : ℚ) / 7), ((-4 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8755_ok : code_8755.OK := by native_decide
/-- Code #8755 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8755_qec :
    ∃ ψ, SS.IsAmplitudes code_8755 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8755 code_8755_ok (by decide) (by decide)

/-- Catalogue code #8756: ((6,2,2)), m=14, a=[1, 3, 4, 6, 11, 13], S=[0, 2]. -/
def code_8756 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8756_ok : code_8756.OK := by native_decide
/-- Code #8756 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8756_qec :
    ∃ ψ, SS.IsAmplitudes code_8756 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8756 code_8756_ok (by decide) (by decide)

/-- Catalogue code #8757: ((6,2,2)), m=14, a=[1, 3, 4, 6, 12, 12], S=[0, 5]. -/
def code_8757 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8757_ok : code_8757.OK := by native_decide
/-- Code #8757 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8757_qec :
    ∃ ψ, SS.IsAmplitudes code_8757 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8757 code_8757_ok (by decide) (by decide)

/-- Catalogue code #8758: ((6,2,2)), m=14, a=[1, 3, 4, 7, 8, 8], S=[0, 5]. -/
def code_8758 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8758_ok : code_8758.OK := by native_decide
/-- Code #8758 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8758_qec :
    ∃ ψ, SS.IsAmplitudes code_8758 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8758 code_8758_ok (by decide) (by decide)

/-- Catalogue code #8759: ((6,2,2)), m=14, a=[1, 3, 4, 7, 8, 8], S=[0, 12]. -/
def code_8759 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8759_ok : code_8759.OK := by native_decide
/-- Code #8759 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8759_qec :
    ∃ ψ, SS.IsAmplitudes code_8759 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8759 code_8759_ok (by decide) (by decide)

/-- Catalogue code #8760: ((6,2,2)), m=14, a=[1, 3, 4, 7, 8, 9], S=[0, 2]. -/
def code_8760 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8760_ok : code_8760.OK := by native_decide
/-- Code #8760 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8760_qec :
    ∃ ψ, SS.IsAmplitudes code_8760 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8760 code_8760_ok (by decide) (by decide)

/-- Catalogue code #8761: ((6,2,2)), m=14, a=[1, 3, 4, 7, 8, 9], S=[0, 12]. -/
def code_8761 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8761_ok : code_8761.OK := by native_decide
/-- Code #8761 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8761_qec :
    ∃ ψ, SS.IsAmplitudes code_8761 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8761 code_8761_ok (by decide) (by decide)

/-- Catalogue code #8762: ((6,2,2)), m=14, a=[1, 3, 4, 7, 8, 12], S=[0, 5]. -/
def code_8762 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8762_ok : code_8762.OK := by native_decide
/-- Code #8762 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8762_qec :
    ∃ ψ, SS.IsAmplitudes code_8762 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8762 code_8762_ok (by decide) (by decide)

/-- Catalogue code #8763: ((6,2,2)), m=14, a=[1, 3, 4, 7, 9, 9], S=[0, 8]. -/
def code_8763 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8763_ok : code_8763.OK := by native_decide
/-- Code #8763 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8763_qec :
    ∃ ψ, SS.IsAmplitudes code_8763 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8763 code_8763_ok (by decide) (by decide)

/-- Catalogue code #8764: ((6,2,2)), m=14, a=[1, 3, 4, 7, 12, 12], S=[0, 5]. -/
def code_8764 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8764_ok : code_8764.OK := by native_decide
/-- Code #8764 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8764_qec :
    ∃ ψ, SS.IsAmplitudes code_8764 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8764 code_8764_ok (by decide) (by decide)

/-- Catalogue code #8765: ((6,2,2)), m=14, a=[1, 3, 4, 8, 12, 12], S=[0, 5]. -/
def code_8765 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8765_ok : code_8765.OK := by native_decide
/-- Code #8765 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8765_qec :
    ∃ ψ, SS.IsAmplitudes code_8765 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8765 code_8765_ok (by decide) (by decide)

/-- Catalogue code #8766: ((6,2,2)), m=14, a=[1, 3, 4, 9, 10, 11], S=[0, 8]. -/
def code_8766 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8766_ok : code_8766.OK := by native_decide
/-- Code #8766 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8766_qec :
    ∃ ψ, SS.IsAmplitudes code_8766 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8766 code_8766_ok (by decide) (by decide)

/-- Catalogue code #8767: ((6,2,2)), m=14, a=[1, 3, 4, 9, 10, 12], S=[0, 8]. -/
def code_8767 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8767_ok : code_8767.OK := by native_decide
/-- Code #8767 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8767_qec :
    ∃ ψ, SS.IsAmplitudes code_8767 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8767 code_8767_ok (by decide) (by decide)

/-- Catalogue code #8768: ((6,2,2)), m=14, a=[1, 3, 4, 9, 11, 12], S=[0, 8]. -/
def code_8768 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8768_ok : code_8768.OK := by native_decide
/-- Code #8768 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8768_qec :
    ∃ ψ, SS.IsAmplitudes code_8768 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8768 code_8768_ok (by decide) (by decide)

/-- Catalogue code #8769: ((6,2,2)), m=14, a=[1, 3, 4, 10, 11, 12], S=[0, 5]. -/
def code_8769 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8769_ok : code_8769.OK := by native_decide
/-- Code #8769 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8769_qec :
    ∃ ψ, SS.IsAmplitudes code_8769 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8769 code_8769_ok (by decide) (by decide)

/-- Catalogue code #8770: ((6,2,2)), m=14, a=[1, 3, 4, 10, 11, 12], S=[0, 8]. -/
def code_8770 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8770_ok : code_8770.OK := by native_decide
/-- Code #8770 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8770_qec :
    ∃ ψ, SS.IsAmplitudes code_8770 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8770 code_8770_ok (by decide) (by decide)

/-- Catalogue code #8771: ((6,2,2)), m=14, a=[1, 3, 4, 10, 12, 12], S=[0, 6]. -/
def code_8771 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8771_ok : code_8771.OK := by native_decide
/-- Code #8771 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8771_qec :
    ∃ ψ, SS.IsAmplitudes code_8771 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8771 code_8771_ok (by decide) (by decide)

/-- Catalogue code #8772: ((6,2,2)), m=14, a=[1, 3, 5, 5, 5, 13], S=[0, 2]. -/
def code_8772 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8772_ok : code_8772.OK := by native_decide
/-- Code #8772 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8772_qec :
    ∃ ψ, SS.IsAmplitudes code_8772 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8772 code_8772_ok (by decide) (by decide)

/-- Catalogue code #8773: ((6,2,2)), m=14, a=[1, 3, 5, 5, 6, 7], S=[0, 10]. -/
def code_8773 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_8773_ok : code_8773.OK := by native_decide
/-- Code #8773 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8773_qec :
    ∃ ψ, SS.IsAmplitudes code_8773 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8773 code_8773_ok (by decide) (by decide)

/-- Catalogue code #8774: ((6,2,2)), m=14, a=[1, 3, 5, 5, 6, 11], S=[0, 10]. -/
def code_8774 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_8774_ok : code_8774.OK := by native_decide
/-- Code #8774 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8774_qec :
    ∃ ψ, SS.IsAmplitudes code_8774 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8774 code_8774_ok (by decide) (by decide)

/-- Catalogue code #8775: ((6,2,2)), m=14, a=[1, 3, 5, 5, 7, 8], S=[0, 4]. -/
def code_8775 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8775_ok : code_8775.OK := by native_decide
/-- Code #8775 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8775_qec :
    ∃ ψ, SS.IsAmplitudes code_8775 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8775 code_8775_ok (by decide) (by decide)

/-- Catalogue code #8776: ((6,2,2)), m=14, a=[1, 3, 5, 5, 7, 10], S=[0, 2]. -/
def code_8776 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8776_ok : code_8776.OK := by native_decide
/-- Code #8776 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8776_qec :
    ∃ ψ, SS.IsAmplitudes code_8776 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8776 code_8776_ok (by decide) (by decide)

/-- Catalogue code #8777: ((6,2,2)), m=14, a=[1, 3, 5, 5, 7, 10], S=[0, 6]. -/
def code_8777 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8777_ok : code_8777.OK := by native_decide
/-- Code #8777 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8777_qec :
    ∃ ψ, SS.IsAmplitudes code_8777 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8777 code_8777_ok (by decide) (by decide)

/-- Catalogue code #8778: ((6,2,2)), m=14, a=[1, 3, 5, 5, 7, 11], S=[0, 8]. -/
def code_8778 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8778_ok : code_8778.OK := by native_decide
/-- Code #8778 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8778_qec :
    ∃ ψ, SS.IsAmplitudes code_8778 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8778 code_8778_ok (by decide) (by decide)

/-- Catalogue code #8779: ((6,2,2)), m=14, a=[1, 3, 5, 5, 7, 11], S=[0, 10]. -/
def code_8779 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8779_ok : code_8779.OK := by native_decide
/-- Code #8779 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8779_qec :
    ∃ ψ, SS.IsAmplitudes code_8779 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8779 code_8779_ok (by decide) (by decide)

/-- Catalogue code #8780: ((6,2,2)), m=14, a=[1, 3, 5, 5, 7, 12], S=[0, 4]. -/
def code_8780 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8780_ok : code_8780.OK := by native_decide
/-- Code #8780 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8780_qec :
    ∃ ψ, SS.IsAmplitudes code_8780 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8780 code_8780_ok (by decide) (by decide)

/-- Catalogue code #8781: ((6,2,2)), m=14, a=[1, 3, 5, 5, 7, 13], S=[0, 2]. -/
def code_8781 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8781_ok : code_8781.OK := by native_decide
/-- Code #8781 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8781_qec :
    ∃ ψ, SS.IsAmplitudes code_8781 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8781 code_8781_ok (by decide) (by decide)

/-- Catalogue code #8782: ((6,2,2)), m=14, a=[1, 3, 5, 5, 7, 13], S=[0, 4]. -/
def code_8782 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8782_ok : code_8782.OK := by native_decide
/-- Code #8782 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8782_qec :
    ∃ ψ, SS.IsAmplitudes code_8782 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8782 code_8782_ok (by decide) (by decide)

/-- Catalogue code #8783: ((6,2,2)), m=14, a=[1, 3, 5, 5, 8, 10], S=[0, 2]. -/
def code_8783 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8783_ok : code_8783.OK := by native_decide
/-- Code #8783 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8783_qec :
    ∃ ψ, SS.IsAmplitudes code_8783 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8783 code_8783_ok (by decide) (by decide)

/-- Catalogue code #8784: ((6,2,2)), m=14, a=[1, 3, 5, 5, 8, 12], S=[0, 4]. -/
def code_8784 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_8784_ok : code_8784.OK := by native_decide
/-- Code #8784 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8784_qec :
    ∃ ψ, SS.IsAmplitudes code_8784 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8784 code_8784_ok (by decide) (by decide)

/-- Catalogue code #8785: ((6,2,2)), m=14, a=[1, 3, 5, 5, 10, 13], S=[0, 2]. -/
def code_8785 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8785_ok : code_8785.OK := by native_decide
/-- Code #8785 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8785_qec :
    ∃ ψ, SS.IsAmplitudes code_8785 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8785 code_8785_ok (by decide) (by decide)

/-- Catalogue code #8786: ((6,2,2)), m=14, a=[1, 3, 5, 5, 11, 11], S=[0, 4]. -/
def code_8786 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8786_ok : code_8786.OK := by native_decide
/-- Code #8786 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8786_qec :
    ∃ ψ, SS.IsAmplitudes code_8786 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8786 code_8786_ok (by decide) (by decide)

/-- Catalogue code #8787: ((6,2,2)), m=14, a=[1, 3, 5, 5, 12, 12], S=[0, 4]. -/
def code_8787 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8787_ok : code_8787.OK := by native_decide
/-- Code #8787 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8787_qec :
    ∃ ψ, SS.IsAmplitudes code_8787 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8787 code_8787_ok (by decide) (by decide)

/-- Catalogue code #8788: ((6,2,2)), m=14, a=[1, 3, 5, 5, 12, 13], S=[0, 4]. -/
def code_8788 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8788_ok : code_8788.OK := by native_decide
/-- Code #8788 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8788_qec :
    ∃ ψ, SS.IsAmplitudes code_8788 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8788 code_8788_ok (by decide) (by decide)

/-- Catalogue code #8789: ((6,2,2)), m=14, a=[1, 3, 5, 6, 6, 10], S=[0, 2]. -/
def code_8789 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8789_ok : code_8789.OK := by native_decide
/-- Code #8789 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8789_qec :
    ∃ ψ, SS.IsAmplitudes code_8789 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8789 code_8789_ok (by decide) (by decide)

/-- Catalogue code #8790: ((6,2,2)), m=14, a=[1, 3, 5, 6, 6, 13], S=[0, 2]. -/
def code_8790 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8790_ok : code_8790.OK := by native_decide
/-- Code #8790 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8790_qec :
    ∃ ψ, SS.IsAmplitudes code_8790 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8790 code_8790_ok (by decide) (by decide)

/-- Catalogue code #8791: ((6,2,2)), m=14, a=[1, 3, 5, 6, 7, 8], S=[0, 12]. -/
def code_8791 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8791_ok : code_8791.OK := by native_decide
/-- Code #8791 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8791_qec :
    ∃ ψ, SS.IsAmplitudes code_8791 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8791 code_8791_ok (by decide) (by decide)

/-- Catalogue code #8792: ((6,2,2)), m=14, a=[1, 3, 5, 6, 7, 10], S=[0, 12]. -/
def code_8792 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8792_ok : code_8792.OK := by native_decide
/-- Code #8792 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8792_qec :
    ∃ ψ, SS.IsAmplitudes code_8792 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8792 code_8792_ok (by decide) (by decide)

/-- Catalogue code #8793: ((6,2,2)), m=14, a=[1, 3, 5, 6, 7, 11], S=[0, 10]. -/
def code_8793 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8793_ok : code_8793.OK := by native_decide
/-- Code #8793 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8793_qec :
    ∃ ψ, SS.IsAmplitudes code_8793 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8793 code_8793_ok (by decide) (by decide)

/-- Catalogue code #8794: ((6,2,2)), m=14, a=[1, 3, 5, 6, 7, 12], S=[0, 4]. -/
def code_8794 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_8794_ok : code_8794.OK := by native_decide
/-- Code #8794 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8794_qec :
    ∃ ψ, SS.IsAmplitudes code_8794 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8794 code_8794_ok (by decide) (by decide)

/-- Catalogue code #8795: ((6,2,2)), m=14, a=[1, 3, 5, 6, 7, 12], S=[0, 10]. -/
def code_8795 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8795_ok : code_8795.OK := by native_decide
/-- Code #8795 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8795_qec :
    ∃ ψ, SS.IsAmplitudes code_8795 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8795 code_8795_ok (by decide) (by decide)

/-- Catalogue code #8796: ((6,2,2)), m=14, a=[1, 3, 5, 6, 8, 13], S=[0, 12]. -/
def code_8796 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8796_ok : code_8796.OK := by native_decide
/-- Code #8796 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8796_qec :
    ∃ ψ, SS.IsAmplitudes code_8796 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8796 code_8796_ok (by decide) (by decide)

/-- Catalogue code #8797: ((6,2,2)), m=14, a=[1, 3, 5, 6, 10, 13], S=[0, 2]. -/
def code_8797 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8797_ok : code_8797.OK := by native_decide
/-- Code #8797 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8797_qec :
    ∃ ψ, SS.IsAmplitudes code_8797 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8797 code_8797_ok (by decide) (by decide)

/-- Catalogue code #8798: ((6,2,2)), m=14, a=[1, 3, 5, 6, 12, 12], S=[0, 4]. -/
def code_8798 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8798_ok : code_8798.OK := by native_decide
/-- Code #8798 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8798_qec :
    ∃ ψ, SS.IsAmplitudes code_8798 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8798 code_8798_ok (by decide) (by decide)

/-- Catalogue code #8799: ((6,2,2)), m=14, a=[1, 3, 5, 7, 8, 10], S=[0, 12]. -/
def code_8799 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8799_ok : code_8799.OK := by native_decide
/-- Code #8799 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8799_qec :
    ∃ ψ, SS.IsAmplitudes code_8799 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8799 code_8799_ok (by decide) (by decide)

/-- Catalogue code #8800: ((6,2,2)), m=14, a=[1, 3, 5, 7, 8, 12], S=[0, 4]. -/
def code_8800 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8800_ok : code_8800.OK := by native_decide
/-- Code #8800 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8800_qec :
    ∃ ψ, SS.IsAmplitudes code_8800 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8800 code_8800_ok (by decide) (by decide)

/-- Catalogue code #8801: ((6,2,2)), m=14, a=[1, 3, 5, 7, 8, 13], S=[0, 12]. -/
def code_8801 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8801_ok : code_8801.OK := by native_decide
/-- Code #8801 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8801_qec :
    ∃ ψ, SS.IsAmplitudes code_8801 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8801 code_8801_ok (by decide) (by decide)

/-- Catalogue code #8802: ((6,2,2)), m=14, a=[1, 3, 5, 7, 9, 12], S=[0, 10]. -/
def code_8802 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8802_ok : code_8802.OK := by native_decide
/-- Code #8802 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8802_qec :
    ∃ ψ, SS.IsAmplitudes code_8802 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8802 code_8802_ok (by decide) (by decide)

/-- Catalogue code #8803: ((6,2,2)), m=14, a=[1, 3, 5, 7, 10, 10], S=[0, 6]. -/
def code_8803 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8803_ok : code_8803.OK := by native_decide
/-- Code #8803 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8803_qec :
    ∃ ψ, SS.IsAmplitudes code_8803 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8803 code_8803_ok (by decide) (by decide)

/-- Catalogue code #8804: ((6,2,2)), m=14, a=[1, 3, 5, 7, 10, 12], S=[0, 6]. -/
def code_8804 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8804_ok : code_8804.OK := by native_decide
/-- Code #8804 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8804_qec :
    ∃ ψ, SS.IsAmplitudes code_8804 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8804 code_8804_ok (by decide) (by decide)

/-- Catalogue code #8805: ((6,2,2)), m=14, a=[1, 3, 5, 7, 10, 13], S=[0, 2]. -/
def code_8805 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8805_ok : code_8805.OK := by native_decide
/-- Code #8805 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8805_qec :
    ∃ ψ, SS.IsAmplitudes code_8805 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8805 code_8805_ok (by decide) (by decide)

/-- Catalogue code #8806: ((6,2,2)), m=14, a=[1, 3, 5, 7, 12, 13], S=[0, 4]. -/
def code_8806 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8806_ok : code_8806.OK := by native_decide
/-- Code #8806 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8806_qec :
    ∃ ψ, SS.IsAmplitudes code_8806 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8806 code_8806_ok (by decide) (by decide)

/-- Catalogue code #8807: ((6,2,2)), m=14, a=[1, 3, 5, 8, 12, 12], S=[0, 4]. -/
def code_8807 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8807_ok : code_8807.OK := by native_decide
/-- Code #8807 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8807_qec :
    ∃ ψ, SS.IsAmplitudes code_8807 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8807 code_8807_ok (by decide) (by decide)

/-- Catalogue code #8808: ((6,2,2)), m=14, a=[1, 3, 5, 10, 12, 13], S=[0, 8]. -/
def code_8808 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8808_ok : code_8808.OK := by native_decide
/-- Code #8808 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8808_qec :
    ∃ ψ, SS.IsAmplitudes code_8808 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8808 code_8808_ok (by decide) (by decide)

/-- Catalogue code #8809: ((6,2,2)), m=14, a=[1, 3, 6, 6, 6, 12], S=[0, 4]. -/
def code_8809 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8809_ok : code_8809.OK := by native_decide
/-- Code #8809 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8809_qec :
    ∃ ψ, SS.IsAmplitudes code_8809 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8809 code_8809_ok (by decide) (by decide)

/-- Catalogue code #8810: ((6,2,2)), m=14, a=[1, 3, 6, 6, 8, 12], S=[0, 10]. -/
def code_8810 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8810_ok : code_8810.OK := by native_decide
/-- Code #8810 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8810_qec :
    ∃ ψ, SS.IsAmplitudes code_8810 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8810 code_8810_ok (by decide) (by decide)

/-- Catalogue code #8811: ((6,2,2)), m=14, a=[1, 3, 6, 6, 10, 12], S=[0, 9]. -/
def code_8811 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-4 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8811_ok : code_8811.OK := by native_decide
/-- Code #8811 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8811_qec :
    ∃ ψ, SS.IsAmplitudes code_8811 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8811 code_8811_ok (by decide) (by decide)

/-- Catalogue code #8812: ((6,2,2)), m=14, a=[1, 3, 6, 6, 10, 13], S=[0, 2]. -/
def code_8812 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8812_ok : code_8812.OK := by native_decide
/-- Code #8812 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8812_qec :
    ∃ ψ, SS.IsAmplitudes code_8812 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8812 code_8812_ok (by decide) (by decide)

/-- Catalogue code #8813: ((6,2,2)), m=14, a=[1, 3, 6, 6, 10, 13], S=[0, 9]. -/
def code_8813 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8813_ok : code_8813.OK := by native_decide
/-- Code #8813 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8813_qec :
    ∃ ψ, SS.IsAmplitudes code_8813 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8813 code_8813_ok (by decide) (by decide)

/-- Catalogue code #8814: ((6,2,2)), m=14, a=[1, 3, 6, 6, 11, 13], S=[0, 2]. -/
def code_8814 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8814_ok : code_8814.OK := by native_decide
/-- Code #8814 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8814_qec :
    ∃ ψ, SS.IsAmplitudes code_8814 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8814 code_8814_ok (by decide) (by decide)

/-- Catalogue code #8815: ((6,2,2)), m=14, a=[1, 3, 6, 6, 12, 12], S=[0, 4]. -/
def code_8815 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8815_ok : code_8815.OK := by native_decide
/-- Code #8815 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8815_qec :
    ∃ ψ, SS.IsAmplitudes code_8815 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8815 code_8815_ok (by decide) (by decide)

/-- Catalogue code #8816: ((6,2,2)), m=14, a=[1, 3, 6, 6, 12, 12], S=[0, 10]. -/
def code_8816 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_8816_ok : code_8816.OK := by native_decide
/-- Code #8816 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8816_qec :
    ∃ ψ, SS.IsAmplitudes code_8816 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8816 code_8816_ok (by decide) (by decide)

/-- Catalogue code #8817: ((6,2,2)), m=14, a=[1, 3, 6, 7, 8, 9], S=[0, 2]. -/
def code_8817 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8817_ok : code_8817.OK := by native_decide
/-- Code #8817 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8817_qec :
    ∃ ψ, SS.IsAmplitudes code_8817 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8817 code_8817_ok (by decide) (by decide)

/-- Catalogue code #8818: ((6,2,2)), m=14, a=[1, 3, 6, 7, 8, 10], S=[0, 2]. -/
def code_8818 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8818_ok : code_8818.OK := by native_decide
/-- Code #8818 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8818_qec :
    ∃ ψ, SS.IsAmplitudes code_8818 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8818 code_8818_ok (by decide) (by decide)

/-- Catalogue code #8819: ((6,2,2)), m=14, a=[1, 3, 6, 7, 8, 10], S=[0, 5]. -/
def code_8819 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8819_ok : code_8819.OK := by native_decide
/-- Code #8819 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8819_qec :
    ∃ ψ, SS.IsAmplitudes code_8819 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8819 code_8819_ok (by decide) (by decide)

/-- Catalogue code #8820: ((6,2,2)), m=14, a=[1, 3, 6, 7, 8, 12], S=[0, 5]. -/
def code_8820 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8820_ok : code_8820.OK := by native_decide
/-- Code #8820 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8820_qec :
    ∃ ψ, SS.IsAmplitudes code_8820 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8820 code_8820_ok (by decide) (by decide)

/-- Catalogue code #8821: ((6,2,2)), m=14, a=[1, 3, 6, 7, 9, 9], S=[0, 4]. -/
def code_8821 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8821_ok : code_8821.OK := by native_decide
/-- Code #8821 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8821_qec :
    ∃ ψ, SS.IsAmplitudes code_8821 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8821 code_8821_ok (by decide) (by decide)

/-- Catalogue code #8822: ((6,2,2)), m=14, a=[1, 3, 6, 7, 9, 9], S=[0, 10]. -/
def code_8822 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8822_ok : code_8822.OK := by native_decide
/-- Code #8822 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8822_qec :
    ∃ ψ, SS.IsAmplitudes code_8822 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8822 code_8822_ok (by decide) (by decide)

/-- Catalogue code #8823: ((6,2,2)), m=14, a=[1, 3, 6, 7, 9, 10], S=[0, 2]. -/
def code_8823 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8823_ok : code_8823.OK := by native_decide
/-- Code #8823 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8823_qec :
    ∃ ψ, SS.IsAmplitudes code_8823 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8823 code_8823_ok (by decide) (by decide)

/-- Catalogue code #8824: ((6,2,2)), m=14, a=[1, 3, 6, 7, 9, 11], S=[0, 4]. -/
def code_8824 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8824_ok : code_8824.OK := by native_decide
/-- Code #8824 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8824_qec :
    ∃ ψ, SS.IsAmplitudes code_8824 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8824 code_8824_ok (by decide) (by decide)

/-- Catalogue code #8825: ((6,2,2)), m=14, a=[1, 3, 6, 7, 10, 11], S=[0, 5]. -/
def code_8825 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8825_ok : code_8825.OK := by native_decide
/-- Code #8825 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8825_qec :
    ∃ ψ, SS.IsAmplitudes code_8825 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8825 code_8825_ok (by decide) (by decide)

/-- Catalogue code #8826: ((6,2,2)), m=14, a=[1, 3, 6, 7, 10, 11], S=[0, 12]. -/
def code_8826 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8826_ok : code_8826.OK := by native_decide
/-- Code #8826 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8826_qec :
    ∃ ψ, SS.IsAmplitudes code_8826 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8826 code_8826_ok (by decide) (by decide)

/-- Catalogue code #8827: ((6,2,2)), m=14, a=[1, 3, 6, 7, 10, 12], S=[0, 5]. -/
def code_8827 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8827_ok : code_8827.OK := by native_decide
/-- Code #8827 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8827_qec :
    ∃ ψ, SS.IsAmplitudes code_8827 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8827 code_8827_ok (by decide) (by decide)

/-- Catalogue code #8828: ((6,2,2)), m=14, a=[1, 3, 6, 7, 10, 12], S=[0, 9]. -/
def code_8828 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8828_ok : code_8828.OK := by native_decide
/-- Code #8828 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8828_qec :
    ∃ ψ, SS.IsAmplitudes code_8828 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8828 code_8828_ok (by decide) (by decide)

/-- Catalogue code #8829: ((6,2,2)), m=14, a=[1, 3, 6, 7, 11, 12], S=[0, 10]. -/
def code_8829 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_8829_ok : code_8829.OK := by native_decide
/-- Code #8829 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8829_qec :
    ∃ ψ, SS.IsAmplitudes code_8829 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8829 code_8829_ok (by decide) (by decide)

/-- Catalogue code #8830: ((6,2,2)), m=14, a=[1, 3, 6, 7, 12, 12], S=[0, 4]. -/
def code_8830 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8830_ok : code_8830.OK := by native_decide
/-- Code #8830 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8830_qec :
    ∃ ψ, SS.IsAmplitudes code_8830 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8830 code_8830_ok (by decide) (by decide)

/-- Catalogue code #8831: ((6,2,2)), m=14, a=[1, 3, 6, 7, 12, 12], S=[0, 9]. -/
def code_8831 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8831_ok : code_8831.OK := by native_decide
/-- Code #8831 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8831_qec :
    ∃ ψ, SS.IsAmplitudes code_8831 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8831 code_8831_ok (by decide) (by decide)

/-- Catalogue code #8832: ((6,2,2)), m=14, a=[1, 3, 6, 8, 9, 10], S=[0, 2]. -/
def code_8832 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8832_ok : code_8832.OK := by native_decide
/-- Code #8832 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8832_qec :
    ∃ ψ, SS.IsAmplitudes code_8832 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8832 code_8832_ok (by decide) (by decide)

/-- Catalogue code #8833: ((6,2,2)), m=14, a=[1, 3, 6, 8, 10, 10], S=[0, 12]. -/
def code_8833 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8833_ok : code_8833.OK := by native_decide
/-- Code #8833 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8833_qec :
    ∃ ψ, SS.IsAmplitudes code_8833 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8833 code_8833_ok (by decide) (by decide)

/-- Catalogue code #8834: ((6,2,2)), m=14, a=[1, 3, 6, 8, 10, 12], S=[0, 5]. -/
def code_8834 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-4 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8834_ok : code_8834.OK := by native_decide
/-- Code #8834 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8834_qec :
    ∃ ψ, SS.IsAmplitudes code_8834 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8834 code_8834_ok (by decide) (by decide)

/-- Catalogue code #8835: ((6,2,2)), m=14, a=[1, 3, 6, 8, 12, 12], S=[0, 4]. -/
def code_8835 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8835_ok : code_8835.OK := by native_decide
/-- Code #8835 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8835_qec :
    ∃ ψ, SS.IsAmplitudes code_8835 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8835 code_8835_ok (by decide) (by decide)

/-- Catalogue code #8836: ((6,2,2)), m=14, a=[1, 3, 6, 8, 12, 12], S=[0, 10]. -/
def code_8836 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8836_ok : code_8836.OK := by native_decide
/-- Code #8836 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8836_qec :
    ∃ ψ, SS.IsAmplitudes code_8836 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8836 code_8836_ok (by decide) (by decide)

/-- Catalogue code #8837: ((6,2,2)), m=14, a=[1, 3, 6, 9, 9, 10], S=[0, 12]. -/
def code_8837 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8837_ok : code_8837.OK := by native_decide
/-- Code #8837 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8837_qec :
    ∃ ψ, SS.IsAmplitudes code_8837 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8837 code_8837_ok (by decide) (by decide)

/-- Catalogue code #8838: ((6,2,2)), m=14, a=[1, 3, 6, 9, 9, 11], S=[0, 4]. -/
def code_8838 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_8838_ok : code_8838.OK := by native_decide
/-- Code #8838 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8838_qec :
    ∃ ψ, SS.IsAmplitudes code_8838 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8838 code_8838_ok (by decide) (by decide)

/-- Catalogue code #8839: ((6,2,2)), m=14, a=[1, 3, 6, 9, 9, 12], S=[0, 10]. -/
def code_8839 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_8839_ok : code_8839.OK := by native_decide
/-- Code #8839 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8839_qec :
    ∃ ψ, SS.IsAmplitudes code_8839 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8839 code_8839_ok (by decide) (by decide)

/-- Catalogue code #8840: ((6,2,2)), m=14, a=[1, 3, 6, 9, 11, 12], S=[0, 4]. -/
def code_8840 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8840_ok : code_8840.OK := by native_decide
/-- Code #8840 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8840_qec :
    ∃ ψ, SS.IsAmplitudes code_8840 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8840 code_8840_ok (by decide) (by decide)

/-- Catalogue code #8841: ((6,2,2)), m=14, a=[1, 3, 6, 9, 11, 12], S=[0, 10]. -/
def code_8841 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8841_ok : code_8841.OK := by native_decide
/-- Code #8841 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8841_qec :
    ∃ ψ, SS.IsAmplitudes code_8841 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8841 code_8841_ok (by decide) (by decide)

/-- Catalogue code #8842: ((6,2,2)), m=14, a=[1, 3, 6, 9, 12, 12], S=[0, 10]. -/
def code_8842 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8842_ok : code_8842.OK := by native_decide
/-- Code #8842 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8842_qec :
    ∃ ψ, SS.IsAmplitudes code_8842 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8842 code_8842_ok (by decide) (by decide)

/-- Catalogue code #8843: ((6,2,2)), m=14, a=[1, 3, 6, 10, 11, 12], S=[0, 5]. -/
def code_8843 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8843_ok : code_8843.OK := by native_decide
/-- Code #8843 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8843_qec :
    ∃ ψ, SS.IsAmplitudes code_8843 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8843 code_8843_ok (by decide) (by decide)

/-- Catalogue code #8844: ((6,2,2)), m=14, a=[1, 3, 6, 10, 12, 12], S=[0, 9]. -/
def code_8844 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8844_ok : code_8844.OK := by native_decide
/-- Code #8844 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8844_qec :
    ∃ ψ, SS.IsAmplitudes code_8844 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8844 code_8844_ok (by decide) (by decide)

/-- Catalogue code #8845: ((6,2,2)), m=14, a=[1, 3, 6, 10, 12, 13], S=[0, 9]. -/
def code_8845 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_8845_ok : code_8845.OK := by native_decide
/-- Code #8845 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8845_qec :
    ∃ ψ, SS.IsAmplitudes code_8845 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8845 code_8845_ok (by decide) (by decide)

/-- Catalogue code #8846: ((6,2,2)), m=14, a=[1, 3, 7, 8, 8, 9], S=[0, 12]. -/
def code_8846 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8846_ok : code_8846.OK := by native_decide
/-- Code #8846 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8846_qec :
    ∃ ψ, SS.IsAmplitudes code_8846 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8846 code_8846_ok (by decide) (by decide)

/-- Catalogue code #8847: ((6,2,2)), m=14, a=[1, 3, 7, 8, 9, 10], S=[0, 2]. -/
def code_8847 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8847_ok : code_8847.OK := by native_decide
/-- Code #8847 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8847_qec :
    ∃ ψ, SS.IsAmplitudes code_8847 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8847 code_8847_ok (by decide) (by decide)

/-- Catalogue code #8848: ((6,2,2)), m=14, a=[1, 3, 7, 8, 9, 10], S=[0, 12]. -/
def code_8848 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8848_ok : code_8848.OK := by native_decide
/-- Code #8848 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8848_qec :
    ∃ ψ, SS.IsAmplitudes code_8848 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8848 code_8848_ok (by decide) (by decide)

/-- Catalogue code #8849: ((6,2,2)), m=14, a=[1, 3, 7, 8, 9, 11], S=[0, 12]. -/
def code_8849 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8849_ok : code_8849.OK := by native_decide
/-- Code #8849 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8849_qec :
    ∃ ψ, SS.IsAmplitudes code_8849 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8849 code_8849_ok (by decide) (by decide)

/-- Catalogue code #8850: ((6,2,2)), m=14, a=[1, 3, 7, 8, 9, 12], S=[0, 10]. -/
def code_8850 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_8850_ok : code_8850.OK := by native_decide
/-- Code #8850 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8850_qec :
    ∃ ψ, SS.IsAmplitudes code_8850 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8850 code_8850_ok (by decide) (by decide)

/-- Catalogue code #8851: ((6,2,2)), m=14, a=[1, 3, 7, 8, 9, 13], S=[0, 2]. -/
def code_8851 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8851_ok : code_8851.OK := by native_decide
/-- Code #8851 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8851_qec :
    ∃ ψ, SS.IsAmplitudes code_8851 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8851 code_8851_ok (by decide) (by decide)

/-- Catalogue code #8852: ((6,2,2)), m=14, a=[1, 3, 7, 8, 10, 12], S=[0, 5]. -/
def code_8852 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8852_ok : code_8852.OK := by native_decide
/-- Code #8852 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8852_qec :
    ∃ ψ, SS.IsAmplitudes code_8852 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8852 code_8852_ok (by decide) (by decide)

/-- Catalogue code #8853: ((6,2,2)), m=14, a=[1, 3, 7, 8, 12, 12], S=[0, 4]. -/
def code_8853 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8853_ok : code_8853.OK := by native_decide
/-- Code #8853 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8853_qec :
    ∃ ψ, SS.IsAmplitudes code_8853 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8853 code_8853_ok (by decide) (by decide)

/-- Catalogue code #8854: ((6,2,2)), m=14, a=[1, 3, 7, 8, 12, 12], S=[0, 5]. -/
def code_8854 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8854_ok : code_8854.OK := by native_decide
/-- Code #8854 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8854_qec :
    ∃ ψ, SS.IsAmplitudes code_8854 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8854 code_8854_ok (by decide) (by decide)

/-- Catalogue code #8855: ((6,2,2)), m=14, a=[1, 3, 7, 8, 12, 13], S=[0, 5]. -/
def code_8855 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ)]
theorem code_8855_ok : code_8855.OK := by native_decide
/-- Code #8855 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8855_qec :
    ∃ ψ, SS.IsAmplitudes code_8855 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8855 code_8855_ok (by decide) (by decide)

/-- Catalogue code #8856: ((6,2,2)), m=14, a=[1, 3, 7, 9, 9, 10], S=[0, 8]. -/
def code_8856 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8856_ok : code_8856.OK := by native_decide
/-- Code #8856 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8856_qec :
    ∃ ψ, SS.IsAmplitudes code_8856 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8856 code_8856_ok (by decide) (by decide)

/-- Catalogue code #8857: ((6,2,2)), m=14, a=[1, 3, 7, 9, 9, 10], S=[0, 12]. -/
def code_8857 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8857_ok : code_8857.OK := by native_decide
/-- Code #8857 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8857_qec :
    ∃ ψ, SS.IsAmplitudes code_8857 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8857 code_8857_ok (by decide) (by decide)

/-- Catalogue code #8858: ((6,2,2)), m=14, a=[1, 3, 7, 9, 9, 11], S=[0, 4]. -/
def code_8858 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8858_ok : code_8858.OK := by native_decide
/-- Code #8858 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8858_qec :
    ∃ ψ, SS.IsAmplitudes code_8858 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8858 code_8858_ok (by decide) (by decide)

/-- Catalogue code #8859: ((6,2,2)), m=14, a=[1, 3, 7, 9, 9, 11], S=[0, 8]. -/
def code_8859 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8859_ok : code_8859.OK := by native_decide
/-- Code #8859 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8859_qec :
    ∃ ψ, SS.IsAmplitudes code_8859 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8859 code_8859_ok (by decide) (by decide)

/-- Catalogue code #8860: ((6,2,2)), m=14, a=[1, 3, 7, 9, 10, 11], S=[0, 8]. -/
def code_8860 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8860_ok : code_8860.OK := by native_decide
/-- Code #8860 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8860_qec :
    ∃ ψ, SS.IsAmplitudes code_8860 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8860 code_8860_ok (by decide) (by decide)

/-- Catalogue code #8861: ((6,2,2)), m=14, a=[1, 3, 7, 9, 12, 13], S=[0, 6]. -/
def code_8861 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8861_ok : code_8861.OK := by native_decide
/-- Code #8861 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8861_qec :
    ∃ ψ, SS.IsAmplitudes code_8861 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8861 code_8861_ok (by decide) (by decide)

/-- Catalogue code #8862: ((6,2,2)), m=14, a=[1, 3, 7, 10, 12, 12], S=[0, 9]. -/
def code_8862 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8862_ok : code_8862.OK := by native_decide
/-- Code #8862 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8862_qec :
    ∃ ψ, SS.IsAmplitudes code_8862 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8862 code_8862_ok (by decide) (by decide)

/-- Catalogue code #8863: ((6,2,2)), m=14, a=[1, 3, 7, 10, 12, 13], S=[0, 9]. -/
def code_8863 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8863_ok : code_8863.OK := by native_decide
/-- Code #8863 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8863_qec :
    ∃ ψ, SS.IsAmplitudes code_8863 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8863 code_8863_ok (by decide) (by decide)

/-- Catalogue code #8864: ((6,2,2)), m=14, a=[1, 3, 7, 11, 12, 12], S=[0, 10]. -/
def code_8864 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8864_ok : code_8864.OK := by native_decide
/-- Code #8864 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8864_qec :
    ∃ ψ, SS.IsAmplitudes code_8864 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8864 code_8864_ok (by decide) (by decide)

/-- Catalogue code #8865: ((6,2,2)), m=14, a=[1, 3, 8, 8, 9, 10], S=[0, 12]. -/
def code_8865 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8865_ok : code_8865.OK := by native_decide
/-- Code #8865 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8865_qec :
    ∃ ψ, SS.IsAmplitudes code_8865 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8865 code_8865_ok (by decide) (by decide)

/-- Catalogue code #8866: ((6,2,2)), m=14, a=[1, 3, 8, 8, 10, 13], S=[0, 12]. -/
def code_8866 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8866_ok : code_8866.OK := by native_decide
/-- Code #8866 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8866_qec :
    ∃ ψ, SS.IsAmplitudes code_8866 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8866 code_8866_ok (by decide) (by decide)

/-- Catalogue code #8867: ((6,2,2)), m=14, a=[1, 3, 8, 9, 12, 12], S=[0, 10]. -/
def code_8867 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8867_ok : code_8867.OK := by native_decide
/-- Code #8867 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8867_qec :
    ∃ ψ, SS.IsAmplitudes code_8867 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8867 code_8867_ok (by decide) (by decide)

/-- Catalogue code #8868: ((6,2,2)), m=14, a=[1, 3, 8, 10, 11, 13], S=[0, 12]. -/
def code_8868 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8868_ok : code_8868.OK := by native_decide
/-- Code #8868 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8868_qec :
    ∃ ψ, SS.IsAmplitudes code_8868 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8868 code_8868_ok (by decide) (by decide)

/-- Catalogue code #8869: ((6,2,2)), m=14, a=[1, 3, 8, 10, 12, 12], S=[0, 9]. -/
def code_8869 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8869_ok : code_8869.OK := by native_decide
/-- Code #8869 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8869_qec :
    ∃ ψ, SS.IsAmplitudes code_8869 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8869 code_8869_ok (by decide) (by decide)

/-- Catalogue code #8870: ((6,2,2)), m=14, a=[1, 3, 9, 9, 10, 11], S=[0, 8]. -/
def code_8870 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8870_ok : code_8870.OK := by native_decide
/-- Code #8870 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8870_qec :
    ∃ ψ, SS.IsAmplitudes code_8870 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8870 code_8870_ok (by decide) (by decide)

/-- Catalogue code #8871: ((6,2,2)), m=14, a=[1, 3, 9, 10, 11, 12], S=[0, 8]. -/
def code_8871 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8871_ok : code_8871.OK := by native_decide
/-- Code #8871 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8871_qec :
    ∃ ψ, SS.IsAmplitudes code_8871 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8871 code_8871_ok (by decide) (by decide)

/-- Catalogue code #8872: ((6,2,2)), m=14, a=[1, 3, 10, 10, 11, 11], S=[0, 9]. -/
def code_8872 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (3 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8872_ok : code_8872.OK := by native_decide
/-- Code #8872 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8872_qec :
    ∃ ψ, SS.IsAmplitudes code_8872 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8872 code_8872_ok (by decide) (by decide)

/-- Catalogue code #8873: ((6,2,2)), m=14, a=[1, 4, 4, 5, 6, 7], S=[0, 11]. -/
def code_8873 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8873_ok : code_8873.OK := by native_decide
/-- Code #8873 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8873_qec :
    ∃ ψ, SS.IsAmplitudes code_8873 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8873 code_8873_ok (by decide) (by decide)

/-- Catalogue code #8874: ((6,2,2)), m=14, a=[1, 4, 4, 5, 6, 12], S=[0, 11]. -/
def code_8874 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8874_ok : code_8874.OK := by native_decide
/-- Code #8874 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8874_qec :
    ∃ ψ, SS.IsAmplitudes code_8874 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8874 code_8874_ok (by decide) (by decide)

/-- Catalogue code #8875: ((6,2,2)), m=14, a=[1, 4, 4, 5, 7, 8], S=[0, 3]. -/
def code_8875 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8875_ok : code_8875.OK := by native_decide
/-- Code #8875 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8875_qec :
    ∃ ψ, SS.IsAmplitudes code_8875 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8875 code_8875_ok (by decide) (by decide)

/-- Catalogue code #8876: ((6,2,2)), m=14, a=[1, 4, 4, 5, 7, 11], S=[0, 6]. -/
def code_8876 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8876_ok : code_8876.OK := by native_decide
/-- Code #8876 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8876_qec :
    ∃ ψ, SS.IsAmplitudes code_8876 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8876 code_8876_ok (by decide) (by decide)

/-- Catalogue code #8877: ((6,2,2)), m=14, a=[1, 4, 4, 5, 7, 12], S=[0, 8]. -/
def code_8877 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8877_ok : code_8877.OK := by native_decide
/-- Code #8877 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8877_qec :
    ∃ ψ, SS.IsAmplitudes code_8877 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8877 code_8877_ok (by decide) (by decide)

/-- Catalogue code #8878: ((6,2,2)), m=14, a=[1, 4, 4, 5, 7, 12], S=[0, 11]. -/
def code_8878 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8878_ok : code_8878.OK := by native_decide
/-- Code #8878 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8878_qec :
    ∃ ψ, SS.IsAmplitudes code_8878 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8878 code_8878_ok (by decide) (by decide)

/-- Catalogue code #8879: ((6,2,2)), m=14, a=[1, 4, 4, 5, 8, 10], S=[0, 2]. -/
def code_8879 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8879_ok : code_8879.OK := by native_decide
/-- Code #8879 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8879_qec :
    ∃ ψ, SS.IsAmplitudes code_8879 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8879 code_8879_ok (by decide) (by decide)

/-- Catalogue code #8880: ((6,2,2)), m=14, a=[1, 4, 4, 5, 8, 12], S=[0, 3]. -/
def code_8880 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8880_ok : code_8880.OK := by native_decide
/-- Code #8880 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8880_qec :
    ∃ ψ, SS.IsAmplitudes code_8880 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8880 code_8880_ok (by decide) (by decide)

/-- Catalogue code #8881: ((6,2,2)), m=14, a=[1, 4, 4, 5, 10, 12], S=[0, 6]. -/
def code_8881 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8881_ok : code_8881.OK := by native_decide
/-- Code #8881 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8881_qec :
    ∃ ψ, SS.IsAmplitudes code_8881 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8881 code_8881_ok (by decide) (by decide)

/-- Catalogue code #8882: ((6,2,2)), m=14, a=[1, 4, 4, 5, 11, 12], S=[0, 6]. -/
def code_8882 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8882_ok : code_8882.OK := by native_decide
/-- Code #8882 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8882_qec :
    ∃ ψ, SS.IsAmplitudes code_8882 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8882 code_8882_ok (by decide) (by decide)

/-- Catalogue code #8883: ((6,2,2)), m=14, a=[1, 4, 4, 5, 12, 12], S=[0, 6]. -/
def code_8883 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8883_ok : code_8883.OK := by native_decide
/-- Code #8883 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8883_qec :
    ∃ ψ, SS.IsAmplitudes code_8883 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8883 code_8883_ok (by decide) (by decide)

/-- Catalogue code #8884: ((6,2,2)), m=14, a=[1, 4, 4, 5, 12, 12], S=[0, 8]. -/
def code_8884 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8884_ok : code_8884.OK := by native_decide
/-- Code #8884 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8884_qec :
    ∃ ψ, SS.IsAmplitudes code_8884 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8884 code_8884_ok (by decide) (by decide)

/-- Catalogue code #8885: ((6,2,2)), m=14, a=[1, 4, 4, 6, 6, 7], S=[0, 2]. -/
def code_8885 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8885_ok : code_8885.OK := by native_decide
/-- Code #8885 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8885_qec :
    ∃ ψ, SS.IsAmplitudes code_8885 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8885 code_8885_ok (by decide) (by decide)

/-- Catalogue code #8886: ((6,2,2)), m=14, a=[1, 4, 4, 6, 6, 11], S=[0, 2]. -/
def code_8886 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8886_ok : code_8886.OK := by native_decide
/-- Code #8886 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8886_qec :
    ∃ ψ, SS.IsAmplitudes code_8886 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8886 code_8886_ok (by decide) (by decide)

/-- Catalogue code #8887: ((6,2,2)), m=14, a=[1, 4, 4, 6, 6, 11], S=[0, 12]. -/
def code_8887 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8887_ok : code_8887.OK := by native_decide
/-- Code #8887 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8887_qec :
    ∃ ψ, SS.IsAmplitudes code_8887 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8887 code_8887_ok (by decide) (by decide)

/-- Catalogue code #8888: ((6,2,2)), m=14, a=[1, 4, 4, 6, 7, 10], S=[0, 2]. -/
def code_8888 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8888_ok : code_8888.OK := by native_decide
/-- Code #8888 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8888_qec :
    ∃ ψ, SS.IsAmplitudes code_8888 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8888 code_8888_ok (by decide) (by decide)

/-- Catalogue code #8889: ((6,2,2)), m=14, a=[1, 4, 4, 6, 7, 12], S=[0, 11]. -/
def code_8889 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((5 : ℚ) / 7)]
theorem code_8889_ok : code_8889.OK := by native_decide
/-- Code #8889 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8889_qec :
    ∃ ψ, SS.IsAmplitudes code_8889 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8889 code_8889_ok (by decide) (by decide)

/-- Catalogue code #8890: ((6,2,2)), m=14, a=[1, 4, 4, 6, 8, 9], S=[0, 2]. -/
def code_8890 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8890_ok : code_8890.OK := by native_decide
/-- Code #8890 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8890_qec :
    ∃ ψ, SS.IsAmplitudes code_8890 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8890 code_8890_ok (by decide) (by decide)

/-- Catalogue code #8891: ((6,2,2)), m=14, a=[1, 4, 4, 6, 8, 10], S=[0, 2]. -/
def code_8891 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(1 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8891_ok : code_8891.OK := by native_decide
/-- Code #8891 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8891_qec :
    ∃ ψ, SS.IsAmplitudes code_8891 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8891 code_8891_ok (by decide) (by decide)

/-- Catalogue code #8892: ((6,2,2)), m=14, a=[1, 4, 4, 6, 8, 11], S=[0, 12]. -/
def code_8892 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8892_ok : code_8892.OK := by native_decide
/-- Code #8892 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8892_qec :
    ∃ ψ, SS.IsAmplitudes code_8892 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8892 code_8892_ok (by decide) (by decide)

/-- Catalogue code #8893: ((6,2,2)), m=14, a=[1, 4, 4, 6, 10, 11], S=[0, 2]. -/
def code_8893 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8893_ok : code_8893.OK := by native_decide
/-- Code #8893 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8893_qec :
    ∃ ψ, SS.IsAmplitudes code_8893 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8893 code_8893_ok (by decide) (by decide)

/-- Catalogue code #8894: ((6,2,2)), m=14, a=[1, 4, 4, 7, 8, 9], S=[0, 3]. -/
def code_8894 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-5 : ℚ) / 7)]
theorem code_8894_ok : code_8894.OK := by native_decide
/-- Code #8894 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8894_qec :
    ∃ ψ, SS.IsAmplitudes code_8894 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8894 code_8894_ok (by decide) (by decide)

/-- Catalogue code #8895: ((6,2,2)), m=14, a=[1, 4, 4, 7, 8, 12], S=[0, 3]. -/
def code_8895 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((-5 : ℚ) / 7)]
theorem code_8895_ok : code_8895.OK := by native_decide
/-- Code #8895 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8895_qec :
    ∃ ψ, SS.IsAmplitudes code_8895 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8895 code_8895_ok (by decide) (by decide)

/-- Catalogue code #8896: ((6,2,2)), m=14, a=[1, 4, 4, 7, 9, 12], S=[0, 3]. -/
def code_8896 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8896_ok : code_8896.OK := by native_decide
/-- Code #8896 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8896_qec :
    ∃ ψ, SS.IsAmplitudes code_8896 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8896 code_8896_ok (by decide) (by decide)

/-- Catalogue code #8897: ((6,2,2)), m=14, a=[1, 4, 4, 7, 9, 12], S=[0, 6]. -/
def code_8897 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8897_ok : code_8897.OK := by native_decide
/-- Code #8897 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8897_qec :
    ∃ ψ, SS.IsAmplitudes code_8897 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8897 code_8897_ok (by decide) (by decide)

/-- Catalogue code #8898: ((6,2,2)), m=14, a=[1, 4, 4, 7, 9, 12], S=[0, 8]. -/
def code_8898 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8898_ok : code_8898.OK := by native_decide
/-- Code #8898 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8898_qec :
    ∃ ψ, SS.IsAmplitudes code_8898 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8898 code_8898_ok (by decide) (by decide)

/-- Catalogue code #8899: ((6,2,2)), m=14, a=[1, 4, 4, 7, 10, 12], S=[0, 8]. -/
def code_8899 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8899_ok : code_8899.OK := by native_decide
/-- Code #8899 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8899_qec :
    ∃ ψ, SS.IsAmplitudes code_8899 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8899 code_8899_ok (by decide) (by decide)

/-- Catalogue code #8900: ((6,2,2)), m=14, a=[1, 4, 4, 7, 11, 12], S=[0, 6]. -/
def code_8900 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8900_ok : code_8900.OK := by native_decide
/-- Code #8900 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8900_qec :
    ∃ ψ, SS.IsAmplitudes code_8900 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8900 code_8900_ok (by decide) (by decide)

/-- Catalogue code #8901: ((6,2,2)), m=14, a=[1, 4, 4, 8, 9, 12], S=[0, 3]. -/
def code_8901 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7)]
theorem code_8901_ok : code_8901.OK := by native_decide
/-- Code #8901 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8901_qec :
    ∃ ψ, SS.IsAmplitudes code_8901 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8901 code_8901_ok (by decide) (by decide)

/-- Catalogue code #8902: ((6,2,2)), m=14, a=[1, 4, 4, 8, 10, 11], S=[0, 2]. -/
def code_8902 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8902_ok : code_8902.OK := by native_decide
/-- Code #8902 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8902_qec :
    ∃ ψ, SS.IsAmplitudes code_8902 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8902 code_8902_ok (by decide) (by decide)

/-- Catalogue code #8903: ((6,2,2)), m=14, a=[1, 4, 4, 8, 11, 11], S=[0, 9]. -/
def code_8903 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((6 : ℚ) / 7), (0 : ℚ)]
theorem code_8903_ok : code_8903.OK := by native_decide
/-- Code #8903 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8903_qec :
    ∃ ψ, SS.IsAmplitudes code_8903 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8903 code_8903_ok (by decide) (by decide)

/-- Catalogue code #8904: ((6,2,2)), m=14, a=[1, 4, 4, 8, 11, 12], S=[0, 9]. -/
def code_8904 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((6 : ℚ) / 7)]
theorem code_8904_ok : code_8904.OK := by native_decide
/-- Code #8904 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8904_qec :
    ∃ ψ, SS.IsAmplitudes code_8904 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8904 code_8904_ok (by decide) (by decide)

/-- Catalogue code #8905: ((6,2,2)), m=14, a=[1, 4, 4, 9, 12, 12], S=[0, 6]. -/
def code_8905 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8905_ok : code_8905.OK := by native_decide
/-- Code #8905 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8905_qec :
    ∃ ψ, SS.IsAmplitudes code_8905 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8905 code_8905_ok (by decide) (by decide)

/-- Catalogue code #8906: ((6,2,2)), m=14, a=[1, 4, 4, 10, 11, 12], S=[0, 8]. -/
def code_8906 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8906_ok : code_8906.OK := by native_decide
/-- Code #8906 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8906_qec :
    ∃ ψ, SS.IsAmplitudes code_8906 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8906 code_8906_ok (by decide) (by decide)

/-- Catalogue code #8907: ((6,2,2)), m=14, a=[1, 4, 4, 11, 11, 11], S=[0, 5]. -/
def code_8907 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8907_ok : code_8907.OK := by native_decide
/-- Code #8907 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8907_qec :
    ∃ ψ, SS.IsAmplitudes code_8907 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8907 code_8907_ok (by decide) (by decide)

/-- Catalogue code #8908: ((6,2,2)), m=14, a=[1, 4, 4, 11, 11, 12], S=[0, 6]. -/
def code_8908 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8908_ok : code_8908.OK := by native_decide
/-- Code #8908 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8908_qec :
    ∃ ψ, SS.IsAmplitudes code_8908 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8908 code_8908_ok (by decide) (by decide)

/-- Catalogue code #8909: ((6,2,2)), m=14, a=[1, 4, 4, 11, 11, 12], S=[0, 9]. -/
def code_8909 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8909_ok : code_8909.OK := by native_decide
/-- Code #8909 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8909_qec :
    ∃ ψ, SS.IsAmplitudes code_8909 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8909 code_8909_ok (by decide) (by decide)

/-- Catalogue code #8910: ((6,2,2)), m=14, a=[1, 4, 5, 5, 6, 7], S=[0, 3]. -/
def code_8910 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8910_ok : code_8910.OK := by native_decide
/-- Code #8910 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8910_qec :
    ∃ ψ, SS.IsAmplitudes code_8910 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8910 code_8910_ok (by decide) (by decide)

/-- Catalogue code #8911: ((6,2,2)), m=14, a=[1, 4, 5, 5, 7, 11], S=[0, 8]. -/
def code_8911 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8911_ok : code_8911.OK := by native_decide
/-- Code #8911 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8911_qec :
    ∃ ψ, SS.IsAmplitudes code_8911 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8911 code_8911_ok (by decide) (by decide)

/-- Catalogue code #8912: ((6,2,2)), m=14, a=[1, 4, 5, 6, 7, 10], S=[0, 3]. -/
def code_8912 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8912_ok : code_8912.OK := by native_decide
/-- Code #8912 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8912_qec :
    ∃ ψ, SS.IsAmplitudes code_8912 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8912 code_8912_ok (by decide) (by decide)

/-- Catalogue code #8913: ((6,2,2)), m=14, a=[1, 4, 5, 6, 7, 11], S=[0, 12]. -/
def code_8913 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8913_ok : code_8913.OK := by native_decide
/-- Code #8913 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8913_qec :
    ∃ ψ, SS.IsAmplitudes code_8913 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8913 code_8913_ok (by decide) (by decide)

/-- Catalogue code #8914: ((6,2,2)), m=14, a=[1, 4, 5, 6, 7, 12], S=[0, 3]. -/
def code_8914 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8914_ok : code_8914.OK := by native_decide
/-- Code #8914 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8914_qec :
    ∃ ψ, SS.IsAmplitudes code_8914 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8914 code_8914_ok (by decide) (by decide)

/-- Catalogue code #8915: ((6,2,2)), m=14, a=[1, 4, 5, 6, 7, 12], S=[0, 11]. -/
def code_8915 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8915_ok : code_8915.OK := by native_decide
/-- Code #8915 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8915_qec :
    ∃ ψ, SS.IsAmplitudes code_8915 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8915 code_8915_ok (by decide) (by decide)

/-- Catalogue code #8916: ((6,2,2)), m=14, a=[1, 4, 5, 6, 8, 13], S=[0, 11]. -/
def code_8916 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8916_ok : code_8916.OK := by native_decide
/-- Code #8916 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8916_qec :
    ∃ ψ, SS.IsAmplitudes code_8916 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8916 code_8916_ok (by decide) (by decide)

/-- Catalogue code #8917: ((6,2,2)), m=14, a=[1, 4, 5, 6, 9, 13], S=[0, 12]. -/
def code_8917 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8917_ok : code_8917.OK := by native_decide
/-- Code #8917 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8917_qec :
    ∃ ψ, SS.IsAmplitudes code_8917 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8917 code_8917_ok (by decide) (by decide)

/-- Catalogue code #8918: ((6,2,2)), m=14, a=[1, 4, 5, 6, 10, 12], S=[0, 3]. -/
def code_8918 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((4 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8918_ok : code_8918.OK := by native_decide
/-- Code #8918 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8918_qec :
    ∃ ψ, SS.IsAmplitudes code_8918 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8918 code_8918_ok (by decide) (by decide)

/-- Catalogue code #8919: ((6,2,2)), m=14, a=[1, 4, 5, 7, 8, 9], S=[0, 3]. -/
def code_8919 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8919_ok : code_8919.OK := by native_decide
/-- Code #8919 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8919_qec :
    ∃ ψ, SS.IsAmplitudes code_8919 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8919 code_8919_ok (by decide) (by decide)

/-- Catalogue code #8920: ((6,2,2)), m=14, a=[1, 4, 5, 7, 8, 11], S=[0, 2]. -/
def code_8920 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8920_ok : code_8920.OK := by native_decide
/-- Code #8920 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8920_qec :
    ∃ ψ, SS.IsAmplitudes code_8920 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8920 code_8920_ok (by decide) (by decide)

/-- Catalogue code #8921: ((6,2,2)), m=14, a=[1, 4, 5, 7, 8, 12], S=[0, 11]. -/
def code_8921 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8921_ok : code_8921.OK := by native_decide
/-- Code #8921 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8921_qec :
    ∃ ψ, SS.IsAmplitudes code_8921 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8921 code_8921_ok (by decide) (by decide)

/-- Catalogue code #8922: ((6,2,2)), m=14, a=[1, 4, 5, 7, 9, 11], S=[0, 6]. -/
def code_8922 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8922_ok : code_8922.OK := by native_decide
/-- Code #8922 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8922_qec :
    ∃ ψ, SS.IsAmplitudes code_8922 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8922 code_8922_ok (by decide) (by decide)

/-- Catalogue code #8923: ((6,2,2)), m=14, a=[1, 4, 5, 7, 9, 12], S=[0, 11]. -/
def code_8923 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7)]
theorem code_8923_ok : code_8923.OK := by native_decide
/-- Code #8923 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8923_qec :
    ∃ ψ, SS.IsAmplitudes code_8923 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8923 code_8923_ok (by decide) (by decide)

/-- Catalogue code #8924: ((6,2,2)), m=14, a=[1, 4, 5, 7, 10, 11], S=[0, 8]. -/
def code_8924 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8924_ok : code_8924.OK := by native_decide
/-- Code #8924 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8924_qec :
    ∃ ψ, SS.IsAmplitudes code_8924 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8924 code_8924_ok (by decide) (by decide)

/-- Catalogue code #8925: ((6,2,2)), m=14, a=[1, 4, 5, 7, 10, 12], S=[0, 3]. -/
def code_8925 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8925_ok : code_8925.OK := by native_decide
/-- Code #8925 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8925_qec :
    ∃ ψ, SS.IsAmplitudes code_8925 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8925 code_8925_ok (by decide) (by decide)

/-- Catalogue code #8926: ((6,2,2)), m=14, a=[1, 4, 5, 7, 10, 12], S=[0, 8]. -/
def code_8926 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8926_ok : code_8926.OK := by native_decide
/-- Code #8926 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8926_qec :
    ∃ ψ, SS.IsAmplitudes code_8926 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8926 code_8926_ok (by decide) (by decide)

/-- Catalogue code #8927: ((6,2,2)), m=14, a=[1, 4, 5, 7, 11, 11], S=[0, 6]. -/
def code_8927 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8927_ok : code_8927.OK := by native_decide
/-- Code #8927 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8927_qec :
    ∃ ψ, SS.IsAmplitudes code_8927 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8927 code_8927_ok (by decide) (by decide)

/-- Catalogue code #8928: ((6,2,2)), m=14, a=[1, 4, 5, 8, 9, 11], S=[0, 12]. -/
def code_8928 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8928_ok : code_8928.OK := by native_decide
/-- Code #8928 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8928_qec :
    ∃ ψ, SS.IsAmplitudes code_8928 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8928 code_8928_ok (by decide) (by decide)

/-- Catalogue code #8929: ((6,2,2)), m=14, a=[1, 4, 5, 8, 10, 10], S=[0, 12]. -/
def code_8929 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8929_ok : code_8929.OK := by native_decide
/-- Code #8929 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8929_qec :
    ∃ ψ, SS.IsAmplitudes code_8929 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8929 code_8929_ok (by decide) (by decide)

/-- Catalogue code #8930: ((6,2,2)), m=14, a=[1, 4, 5, 9, 11, 11], S=[0, 6]. -/
def code_8930 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8930_ok : code_8930.OK := by native_decide
/-- Code #8930 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8930_qec :
    ∃ ψ, SS.IsAmplitudes code_8930 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8930 code_8930_ok (by decide) (by decide)

/-- Catalogue code #8931: ((6,2,2)), m=14, a=[1, 4, 5, 10, 11, 12], S=[0, 8]. -/
def code_8931 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8931_ok : code_8931.OK := by native_decide
/-- Code #8931 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8931_qec :
    ∃ ψ, SS.IsAmplitudes code_8931 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8931 code_8931_ok (by decide) (by decide)

/-- Catalogue code #8932: ((6,2,2)), m=14, a=[1, 4, 5, 10, 12, 12], S=[0, 6]. -/
def code_8932 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8932_ok : code_8932.OK := by native_decide
/-- Code #8932 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8932_qec :
    ∃ ψ, SS.IsAmplitudes code_8932 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8932 code_8932_ok (by decide) (by decide)

/-- Catalogue code #8933: ((6,2,2)), m=14, a=[1, 4, 5, 10, 12, 12], S=[0, 8]. -/
def code_8933 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8933_ok : code_8933.OK := by native_decide
/-- Code #8933 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8933_qec :
    ∃ ψ, SS.IsAmplitudes code_8933 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8933 code_8933_ok (by decide) (by decide)

/-- Catalogue code #8934: ((6,2,2)), m=14, a=[1, 4, 5, 11, 11, 12], S=[0, 6]. -/
def code_8934 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8934_ok : code_8934.OK := by native_decide
/-- Code #8934 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8934_qec :
    ∃ ψ, SS.IsAmplitudes code_8934 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8934 code_8934_ok (by decide) (by decide)

/-- Catalogue code #8935: ((6,2,2)), m=14, a=[1, 4, 6, 6, 6, 11], S=[0, 2]. -/
def code_8935 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8935_ok : code_8935.OK := by native_decide
/-- Code #8935 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8935_qec :
    ∃ ψ, SS.IsAmplitudes code_8935 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8935 code_8935_ok (by decide) (by decide)

/-- Catalogue code #8936: ((6,2,2)), m=14, a=[1, 4, 6, 6, 7, 9], S=[0, 2]. -/
def code_8936 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_8936_ok : code_8936.OK := by native_decide
/-- Code #8936 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8936_qec :
    ∃ ψ, SS.IsAmplitudes code_8936 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8936 code_8936_ok (by decide) (by decide)

/-- Catalogue code #8937: ((6,2,2)), m=14, a=[1, 4, 6, 6, 7, 11], S=[0, 5]. -/
def code_8937 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8937_ok : code_8937.OK := by native_decide
/-- Code #8937 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8937_qec :
    ∃ ψ, SS.IsAmplitudes code_8937 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8937 code_8937_ok (by decide) (by decide)

/-- Catalogue code #8938: ((6,2,2)), m=14, a=[1, 4, 6, 6, 7, 12], S=[0, 5]. -/
def code_8938 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7)]
theorem code_8938_ok : code_8938.OK := by native_decide
/-- Code #8938 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8938_qec :
    ∃ ψ, SS.IsAmplitudes code_8938 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8938 code_8938_ok (by decide) (by decide)

/-- Catalogue code #8939: ((6,2,2)), m=14, a=[1, 4, 6, 6, 9, 11], S=[0, 2]. -/
def code_8939 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8939_ok : code_8939.OK := by native_decide
/-- Code #8939 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8939_qec :
    ∃ ψ, SS.IsAmplitudes code_8939 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8939 code_8939_ok (by decide) (by decide)

/-- Catalogue code #8940: ((6,2,2)), m=14, a=[1, 4, 6, 6, 9, 12], S=[0, 11]. -/
def code_8940 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((-5 : ℚ) / 7)]
theorem code_8940_ok : code_8940.OK := by native_decide
/-- Code #8940 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8940_qec :
    ∃ ψ, SS.IsAmplitudes code_8940 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8940 code_8940_ok (by decide) (by decide)

/-- Catalogue code #8941: ((6,2,2)), m=14, a=[1, 4, 6, 6, 10, 11], S=[0, 2]. -/
def code_8941 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8941_ok : code_8941.OK := by native_decide
/-- Code #8941 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8941_qec :
    ∃ ψ, SS.IsAmplitudes code_8941 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8941 code_8941_ok (by decide) (by decide)

/-- Catalogue code #8942: ((6,2,2)), m=14, a=[1, 4, 6, 6, 10, 11], S=[0, 12]. -/
def code_8942 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8942_ok : code_8942.OK := by native_decide
/-- Code #8942 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8942_qec :
    ∃ ψ, SS.IsAmplitudes code_8942 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8942 code_8942_ok (by decide) (by decide)

/-- Catalogue code #8943: ((6,2,2)), m=14, a=[1, 4, 6, 6, 11, 11], S=[0, 12]. -/
def code_8943 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8943_ok : code_8943.OK := by native_decide
/-- Code #8943 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8943_qec :
    ∃ ψ, SS.IsAmplitudes code_8943 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8943 code_8943_ok (by decide) (by decide)

/-- Catalogue code #8944: ((6,2,2)), m=14, a=[1, 4, 6, 6, 11, 12], S=[0, 5]. -/
def code_8944 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-4 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7)]
theorem code_8944_ok : code_8944.OK := by native_decide
/-- Code #8944 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8944_qec :
    ∃ ψ, SS.IsAmplitudes code_8944 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8944 code_8944_ok (by decide) (by decide)

/-- Catalogue code #8945: ((6,2,2)), m=14, a=[1, 4, 6, 6, 12, 13], S=[0, 3]. -/
def code_8945 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]
theorem code_8945_ok : code_8945.OK := by native_decide
/-- Code #8945 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8945_qec :
    ∃ ψ, SS.IsAmplitudes code_8945 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8945 code_8945_ok (by decide) (by decide)

/-- Catalogue code #8946: ((6,2,2)), m=14, a=[1, 4, 6, 7, 9, 9], S=[0, 11]. -/
def code_8946 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8946_ok : code_8946.OK := by native_decide
/-- Code #8946 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8946_qec :
    ∃ ψ, SS.IsAmplitudes code_8946 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8946 code_8946_ok (by decide) (by decide)

/-- Catalogue code #8947: ((6,2,2)), m=14, a=[1, 4, 6, 7, 9, 10], S=[0, 11]. -/
def code_8947 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8947_ok : code_8947.OK := by native_decide
/-- Code #8947 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8947_qec :
    ∃ ψ, SS.IsAmplitudes code_8947 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8947 code_8947_ok (by decide) (by decide)

/-- Catalogue code #8948: ((6,2,2)), m=14, a=[1, 4, 6, 7, 9, 11], S=[0, 2]. -/
def code_8948 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8948_ok : code_8948.OK := by native_decide
/-- Code #8948 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8948_qec :
    ∃ ψ, SS.IsAmplitudes code_8948 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8948 code_8948_ok (by decide) (by decide)

/-- Catalogue code #8949: ((6,2,2)), m=14, a=[1, 4, 6, 7, 9, 11], S=[0, 12]. -/
def code_8949 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8949_ok : code_8949.OK := by native_decide
/-- Code #8949 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8949_qec :
    ∃ ψ, SS.IsAmplitudes code_8949 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8949 code_8949_ok (by decide) (by decide)

/-- Catalogue code #8950: ((6,2,2)), m=14, a=[1, 4, 6, 7, 10, 10], S=[0, 12]. -/
def code_8950 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8950_ok : code_8950.OK := by native_decide
/-- Code #8950 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8950_qec :
    ∃ ψ, SS.IsAmplitudes code_8950 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8950 code_8950_ok (by decide) (by decide)

/-- Catalogue code #8951: ((6,2,2)), m=14, a=[1, 4, 6, 7, 10, 12], S=[0, 3]. -/
def code_8951 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_8951_ok : code_8951.OK := by native_decide
/-- Code #8951 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8951_qec :
    ∃ ψ, SS.IsAmplitudes code_8951 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8951 code_8951_ok (by decide) (by decide)

/-- Catalogue code #8952: ((6,2,2)), m=14, a=[1, 4, 6, 7, 11, 12], S=[0, 5]. -/
def code_8952 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8952_ok : code_8952.OK := by native_decide
/-- Code #8952 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8952_qec :
    ∃ ψ, SS.IsAmplitudes code_8952 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8952 code_8952_ok (by decide) (by decide)

/-- Catalogue code #8953: ((6,2,2)), m=14, a=[1, 4, 6, 7, 12, 12], S=[0, 3]. -/
def code_8953 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8953_ok : code_8953.OK := by native_decide
/-- Code #8953 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8953_qec :
    ∃ ψ, SS.IsAmplitudes code_8953 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8953 code_8953_ok (by decide) (by decide)

/-- Catalogue code #8954: ((6,2,2)), m=14, a=[1, 4, 6, 8, 9, 10], S=[0, 12]. -/
def code_8954 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8954_ok : code_8954.OK := by native_decide
/-- Code #8954 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8954_qec :
    ∃ ψ, SS.IsAmplitudes code_8954 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8954 code_8954_ok (by decide) (by decide)

/-- Catalogue code #8955: ((6,2,2)), m=14, a=[1, 4, 6, 8, 10, 10], S=[0, 12]. -/
def code_8955 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![(1 : ℚ), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8955_ok : code_8955.OK := by native_decide
/-- Code #8955 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8955_qec :
    ∃ ψ, SS.IsAmplitudes code_8955 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8955 code_8955_ok (by decide) (by decide)

/-- Catalogue code #8956: ((6,2,2)), m=14, a=[1, 4, 6, 8, 10, 11], S=[0, 2]. -/
def code_8956 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8956_ok : code_8956.OK := by native_decide
/-- Code #8956 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8956_qec :
    ∃ ψ, SS.IsAmplitudes code_8956 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8956 code_8956_ok (by decide) (by decide)

/-- Catalogue code #8957: ((6,2,2)), m=14, a=[1, 4, 6, 9, 9, 12], S=[0, 11]. -/
def code_8957 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8957_ok : code_8957.OK := by native_decide
/-- Code #8957 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8957_qec :
    ∃ ψ, SS.IsAmplitudes code_8957 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8957 code_8957_ok (by decide) (by decide)

/-- Catalogue code #8958: ((6,2,2)), m=14, a=[1, 4, 6, 9, 10, 12], S=[0, 3]. -/
def code_8958 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8958_ok : code_8958.OK := by native_decide
/-- Code #8958 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8958_qec :
    ∃ ψ, SS.IsAmplitudes code_8958 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8958 code_8958_ok (by decide) (by decide)

/-- Catalogue code #8959: ((6,2,2)), m=14, a=[1, 4, 6, 9, 10, 12], S=[0, 11]. -/
def code_8959 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8959_ok : code_8959.OK := by native_decide
/-- Code #8959 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8959_qec :
    ∃ ψ, SS.IsAmplitudes code_8959 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8959 code_8959_ok (by decide) (by decide)

/-- Catalogue code #8960: ((6,2,2)), m=14, a=[1, 4, 6, 9, 12, 12], S=[0, 11]. -/
def code_8960 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8960_ok : code_8960.OK := by native_decide
/-- Code #8960 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8960_qec :
    ∃ ψ, SS.IsAmplitudes code_8960 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8960 code_8960_ok (by decide) (by decide)

/-- Catalogue code #8961: ((6,2,2)), m=14, a=[1, 4, 6, 10, 11, 12], S=[0, 5]. -/
def code_8961 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7)]
theorem code_8961_ok : code_8961.OK := by native_decide
/-- Code #8961 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8961_qec :
    ∃ ψ, SS.IsAmplitudes code_8961 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8961 code_8961_ok (by decide) (by decide)

/-- Catalogue code #8962: ((6,2,2)), m=14, a=[1, 4, 7, 8, 8, 11], S=[0, 9]. -/
def code_8962 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8962_ok : code_8962.OK := by native_decide
/-- Code #8962 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8962_qec :
    ∃ ψ, SS.IsAmplitudes code_8962 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8962 code_8962_ok (by decide) (by decide)

/-- Catalogue code #8963: ((6,2,2)), m=14, a=[1, 4, 7, 8, 8, 12], S=[0, 9]. -/
def code_8963 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8963_ok : code_8963.OK := by native_decide
/-- Code #8963 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8963_qec :
    ∃ ψ, SS.IsAmplitudes code_8963 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8963 code_8963_ok (by decide) (by decide)

/-- Catalogue code #8964: ((6,2,2)), m=14, a=[1, 4, 7, 8, 9, 12], S=[0, 3]. -/
def code_8964 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8964_ok : code_8964.OK := by native_decide
/-- Code #8964 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8964_qec :
    ∃ ψ, SS.IsAmplitudes code_8964 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8964 code_8964_ok (by decide) (by decide)

/-- Catalogue code #8965: ((6,2,2)), m=14, a=[1, 4, 7, 8, 9, 12], S=[0, 11]. -/
def code_8965 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8965_ok : code_8965.OK := by native_decide
/-- Code #8965 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8965_qec :
    ∃ ψ, SS.IsAmplitudes code_8965 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8965 code_8965_ok (by decide) (by decide)

/-- Catalogue code #8966: ((6,2,2)), m=14, a=[1, 4, 7, 8, 11, 11], S=[0, 2]. -/
def code_8966 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8966_ok : code_8966.OK := by native_decide
/-- Code #8966 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8966_qec :
    ∃ ψ, SS.IsAmplitudes code_8966 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8966 code_8966_ok (by decide) (by decide)

/-- Catalogue code #8967: ((6,2,2)), m=14, a=[1, 4, 7, 8, 11, 11], S=[0, 5]. -/
def code_8967 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8967_ok : code_8967.OK := by native_decide
/-- Code #8967 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8967_qec :
    ∃ ψ, SS.IsAmplitudes code_8967 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8967 code_8967_ok (by decide) (by decide)

/-- Catalogue code #8968: ((6,2,2)), m=14, a=[1, 4, 7, 8, 11, 12], S=[0, 9]. -/
def code_8968 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8968_ok : code_8968.OK := by native_decide
/-- Code #8968 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8968_qec :
    ∃ ψ, SS.IsAmplitudes code_8968 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8968 code_8968_ok (by decide) (by decide)

/-- Catalogue code #8969: ((6,2,2)), m=14, a=[1, 4, 7, 8, 12, 12], S=[0, 5]. -/
def code_8969 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8969_ok : code_8969.OK := by native_decide
/-- Code #8969 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8969_qec :
    ∃ ψ, SS.IsAmplitudes code_8969 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8969 code_8969_ok (by decide) (by decide)

/-- Catalogue code #8970: ((6,2,2)), m=14, a=[1, 4, 7, 8, 12, 12], S=[0, 11]. -/
def code_8970 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7)]
theorem code_8970_ok : code_8970.OK := by native_decide
/-- Code #8970 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8970_qec :
    ∃ ψ, SS.IsAmplitudes code_8970 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8970 code_8970_ok (by decide) (by decide)

/-- Catalogue code #8971: ((6,2,2)), m=14, a=[1, 4, 7, 9, 9, 11], S=[0, 12]. -/
def code_8971 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8971_ok : code_8971.OK := by native_decide
/-- Code #8971 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8971_qec :
    ∃ ψ, SS.IsAmplitudes code_8971 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8971 code_8971_ok (by decide) (by decide)

/-- Catalogue code #8972: ((6,2,2)), m=14, a=[1, 4, 7, 9, 9, 13], S=[0, 3]. -/
def code_8972 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8972_ok : code_8972.OK := by native_decide
/-- Code #8972 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8972_qec :
    ∃ ψ, SS.IsAmplitudes code_8972 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8972 code_8972_ok (by decide) (by decide)

/-- Catalogue code #8973: ((6,2,2)), m=14, a=[1, 4, 7, 9, 9, 13], S=[0, 12]. -/
def code_8973 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8973_ok : code_8973.OK := by native_decide
/-- Code #8973 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8973_qec :
    ∃ ψ, SS.IsAmplitudes code_8973 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8973 code_8973_ok (by decide) (by decide)

/-- Catalogue code #8974: ((6,2,2)), m=14, a=[1, 4, 7, 9, 11, 11], S=[0, 6]. -/
def code_8974 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8974_ok : code_8974.OK := by native_decide
/-- Code #8974 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8974_qec :
    ∃ ψ, SS.IsAmplitudes code_8974 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8974 code_8974_ok (by decide) (by decide)

/-- Catalogue code #8975: ((6,2,2)), m=14, a=[1, 4, 7, 9, 11, 12], S=[0, 6]. -/
def code_8975 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8975_ok : code_8975.OK := by native_decide
/-- Code #8975 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8975_qec :
    ∃ ψ, SS.IsAmplitudes code_8975 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8975 code_8975_ok (by decide) (by decide)

/-- Catalogue code #8976: ((6,2,2)), m=14, a=[1, 4, 7, 9, 11, 12], S=[0, 8]. -/
def code_8976 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8976_ok : code_8976.OK := by native_decide
/-- Code #8976 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8976_qec :
    ∃ ψ, SS.IsAmplitudes code_8976 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8976 code_8976_ok (by decide) (by decide)

/-- Catalogue code #8977: ((6,2,2)), m=14, a=[1, 4, 7, 9, 11, 13], S=[0, 12]. -/
def code_8977 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8977_ok : code_8977.OK := by native_decide
/-- Code #8977 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8977_qec :
    ∃ ψ, SS.IsAmplitudes code_8977 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8977 code_8977_ok (by decide) (by decide)

/-- Catalogue code #8978: ((6,2,2)), m=14, a=[1, 4, 7, 9, 12, 12], S=[0, 11]. -/
def code_8978 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8978_ok : code_8978.OK := by native_decide
/-- Code #8978 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8978_qec :
    ∃ ψ, SS.IsAmplitudes code_8978 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8978 code_8978_ok (by decide) (by decide)

/-- Catalogue code #8979: ((6,2,2)), m=14, a=[1, 4, 7, 9, 12, 13], S=[0, 8]. -/
def code_8979 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8979_ok : code_8979.OK := by native_decide
/-- Code #8979 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8979_qec :
    ∃ ψ, SS.IsAmplitudes code_8979 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8979 code_8979_ok (by decide) (by decide)

/-- Catalogue code #8980: ((6,2,2)), m=14, a=[1, 4, 7, 10, 11, 12], S=[0, 8]. -/
def code_8980 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8980_ok : code_8980.OK := by native_decide
/-- Code #8980 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8980_qec :
    ∃ ψ, SS.IsAmplitudes code_8980 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8980 code_8980_ok (by decide) (by decide)

/-- Catalogue code #8981: ((6,2,2)), m=14, a=[1, 4, 8, 8, 9, 13], S=[0, 3]. -/
def code_8981 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8981_ok : code_8981.OK := by native_decide
/-- Code #8981 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8981_qec :
    ∃ ψ, SS.IsAmplitudes code_8981 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8981 code_8981_ok (by decide) (by decide)

/-- Catalogue code #8982: ((6,2,2)), m=14, a=[1, 4, 8, 8, 9, 13], S=[0, 12]. -/
def code_8982 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8982_ok : code_8982.OK := by native_decide
/-- Code #8982 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8982_qec :
    ∃ ψ, SS.IsAmplitudes code_8982 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8982 code_8982_ok (by decide) (by decide)

/-- Catalogue code #8983: ((6,2,2)), m=14, a=[1, 4, 8, 8, 10, 11], S=[0, 2]. -/
def code_8983 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8983_ok : code_8983.OK := by native_decide
/-- Code #8983 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8983_qec :
    ∃ ψ, SS.IsAmplitudes code_8983 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8983 code_8983_ok (by decide) (by decide)

/-- Catalogue code #8984: ((6,2,2)), m=14, a=[1, 4, 8, 8, 11, 12], S=[0, 9]. -/
def code_8984 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7)]
theorem code_8984_ok : code_8984.OK := by native_decide
/-- Code #8984 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8984_qec :
    ∃ ψ, SS.IsAmplitudes code_8984 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8984 code_8984_ok (by decide) (by decide)

/-- Catalogue code #8985: ((6,2,2)), m=14, a=[1, 4, 8, 8, 11, 13], S=[0, 5]. -/
def code_8985 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8985_ok : code_8985.OK := by native_decide
/-- Code #8985 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8985_qec :
    ∃ ψ, SS.IsAmplitudes code_8985 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8985 code_8985_ok (by decide) (by decide)

/-- Catalogue code #8986: ((6,2,2)), m=14, a=[1, 4, 8, 9, 11, 13], S=[0, 12]. -/
def code_8986 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8986_ok : code_8986.OK := by native_decide
/-- Code #8986 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8986_qec :
    ∃ ψ, SS.IsAmplitudes code_8986 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8986 code_8986_ok (by decide) (by decide)

/-- Catalogue code #8987: ((6,2,2)), m=14, a=[1, 4, 8, 9, 12, 12], S=[0, 11]. -/
def code_8987 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8987_ok : code_8987.OK := by native_decide
/-- Code #8987 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8987_qec :
    ∃ ψ, SS.IsAmplitudes code_8987 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8987 code_8987_ok (by decide) (by decide)

/-- Catalogue code #8988: ((6,2,2)), m=14, a=[1, 4, 8, 11, 11, 12], S=[0, 9]. -/
def code_8988 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8988_ok : code_8988.OK := by native_decide
/-- Code #8988 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8988_qec :
    ∃ ψ, SS.IsAmplitudes code_8988 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8988 code_8988_ok (by decide) (by decide)

/-- Catalogue code #8989: ((6,2,2)), m=14, a=[1, 4, 9, 9, 11, 13], S=[0, 12]. -/
def code_8989 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8989_ok : code_8989.OK := by native_decide
/-- Code #8989 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8989_qec :
    ∃ ψ, SS.IsAmplitudes code_8989 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8989 code_8989_ok (by decide) (by decide)

/-- Catalogue code #8990: ((6,2,2)), m=14, a=[1, 4, 9, 9, 12, 12], S=[0, 11]. -/
def code_8990 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_8990_ok : code_8990.OK := by native_decide
/-- Code #8990 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8990_qec :
    ∃ ψ, SS.IsAmplitudes code_8990 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8990 code_8990_ok (by decide) (by decide)

/-- Catalogue code #8991: ((6,2,2)), m=14, a=[1, 5, 5, 5, 12, 12], S=[0, 11]. -/
def code_8991 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8991_ok : code_8991.OK := by native_decide
/-- Code #8991 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8991_qec :
    ∃ ψ, SS.IsAmplitudes code_8991 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8991 code_8991_ok (by decide) (by decide)

/-- Catalogue code #8992: ((6,2,2)), m=14, a=[1, 5, 5, 5, 12, 13], S=[0, 11]. -/
def code_8992 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8992_ok : code_8992.OK := by native_decide
/-- Code #8992 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8992_qec :
    ∃ ψ, SS.IsAmplitudes code_8992 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8992 code_8992_ok (by decide) (by decide)

/-- Catalogue code #8993: ((6,2,2)), m=14, a=[1, 5, 5, 6, 7, 10], S=[0, 3]. -/
def code_8993 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_8993_ok : code_8993.OK := by native_decide
/-- Code #8993 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8993_qec :
    ∃ ψ, SS.IsAmplitudes code_8993 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8993 code_8993_ok (by decide) (by decide)

/-- Catalogue code #8994: ((6,2,2)), m=14, a=[1, 5, 5, 6, 7, 11], S=[0, 4]. -/
def code_8994 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8994_ok : code_8994.OK := by native_decide
/-- Code #8994 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8994_qec :
    ∃ ψ, SS.IsAmplitudes code_8994 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8994 code_8994_ok (by decide) (by decide)

/-- Catalogue code #8995: ((6,2,2)), m=14, a=[1, 5, 5, 7, 8, 10], S=[0, 11]. -/
def code_8995 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8995_ok : code_8995.OK := by native_decide
/-- Code #8995 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8995_qec :
    ∃ ψ, SS.IsAmplitudes code_8995 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8995 code_8995_ok (by decide) (by decide)

/-- Catalogue code #8996: ((6,2,2)), m=14, a=[1, 5, 5, 7, 10, 11], S=[0, 8]. -/
def code_8996 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_8996_ok : code_8996.OK := by native_decide
/-- Code #8996 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8996_qec :
    ∃ ψ, SS.IsAmplitudes code_8996 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8996 code_8996_ok (by decide) (by decide)

/-- Catalogue code #8997: ((6,2,2)), m=14, a=[1, 5, 5, 7, 10, 11], S=[0, 12]. -/
def code_8997 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8997_ok : code_8997.OK := by native_decide
/-- Code #8997 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8997_qec :
    ∃ ψ, SS.IsAmplitudes code_8997 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8997 code_8997_ok (by decide) (by decide)

/-- Catalogue code #8998: ((6,2,2)), m=14, a=[1, 5, 5, 7, 10, 12], S=[0, 11]. -/
def code_8998 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_8998_ok : code_8998.OK := by native_decide
/-- Code #8998 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8998_qec :
    ∃ ψ, SS.IsAmplitudes code_8998 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8998 code_8998_ok (by decide) (by decide)

/-- Catalogue code #8999: ((6,2,2)), m=14, a=[1, 5, 5, 7, 10, 13], S=[0, 2]. -/
def code_8999 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_8999_ok : code_8999.OK := by native_decide
/-- Code #8999 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8999_qec :
    ∃ ψ, SS.IsAmplitudes code_8999 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8999 code_8999_ok (by decide) (by decide)

end Catalogue.Chunk017
