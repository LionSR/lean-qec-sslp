import SS

namespace Catalogue.Chunk005

open SS SS.Verify

/-- Catalogue code #2500: ((6,2,2)), m=11, a=[1, 1, 4, 7, 7, 9], S=[0, 5]. -/
def code_2500 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2500_ok : code_2500.OK := by native_decide
/-- Code #2500 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2500_qec :
    ∃ ψ, SS.IsAmplitudes code_2500 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2500 code_2500_ok (by decide) (by decide)

/-- Catalogue code #2501: ((6,2,2)), m=11, a=[1, 1, 4, 7, 8, 8], S=[0, 2]. -/
def code_2501 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2501_ok : code_2501.OK := by native_decide
/-- Code #2501 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2501_qec :
    ∃ ψ, SS.IsAmplitudes code_2501 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2501 code_2501_ok (by decide) (by decide)

/-- Catalogue code #2502: ((6,2,2)), m=11, a=[1, 1, 4, 7, 8, 8], S=[0, 5]. -/
def code_2502 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2502_ok : code_2502.OK := by native_decide
/-- Code #2502 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2502_qec :
    ∃ ψ, SS.IsAmplitudes code_2502 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2502 code_2502_ok (by decide) (by decide)

/-- Catalogue code #2503: ((6,2,2)), m=11, a=[1, 1, 4, 7, 8, 9], S=[0, 5]. -/
def code_2503 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2503_ok : code_2503.OK := by native_decide
/-- Code #2503 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2503_qec :
    ∃ ψ, SS.IsAmplitudes code_2503 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2503 code_2503_ok (by decide) (by decide)

/-- Catalogue code #2504: ((6,2,2)), m=11, a=[1, 1, 4, 7, 9, 9], S=[0, 3]. -/
def code_2504 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2504_ok : code_2504.OK := by native_decide
/-- Code #2504 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2504_qec :
    ∃ ψ, SS.IsAmplitudes code_2504 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2504 code_2504_ok (by decide) (by decide)

/-- Catalogue code #2505: ((6,2,2)), m=11, a=[1, 1, 4, 7, 9, 9], S=[0, 5]. -/
def code_2505 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2505_ok : code_2505.OK := by native_decide
/-- Code #2505 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2505_qec :
    ∃ ψ, SS.IsAmplitudes code_2505 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2505 code_2505_ok (by decide) (by decide)

/-- Catalogue code #2506: ((6,2,2)), m=11, a=[1, 1, 4, 8, 8, 8], S=[0, 2]. -/
def code_2506 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2506_ok : code_2506.OK := by native_decide
/-- Code #2506 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2506_qec :
    ∃ ψ, SS.IsAmplitudes code_2506 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2506 code_2506_ok (by decide) (by decide)

/-- Catalogue code #2507: ((6,2,2)), m=11, a=[1, 1, 4, 8, 8, 8], S=[0, 6]. -/
def code_2507 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2507_ok : code_2507.OK := by native_decide
/-- Code #2507 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2507_qec :
    ∃ ψ, SS.IsAmplitudes code_2507 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2507 code_2507_ok (by decide) (by decide)

/-- Catalogue code #2508: ((6,2,2)), m=11, a=[1, 1, 4, 8, 8, 9], S=[0, 5]. -/
def code_2508 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2508_ok : code_2508.OK := by native_decide
/-- Code #2508 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2508_qec :
    ∃ ψ, SS.IsAmplitudes code_2508 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2508 code_2508_ok (by decide) (by decide)

/-- Catalogue code #2509: ((6,2,2)), m=11, a=[1, 1, 4, 8, 8, 9], S=[0, 6]. -/
def code_2509 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2509_ok : code_2509.OK := by native_decide
/-- Code #2509 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2509_qec :
    ∃ ψ, SS.IsAmplitudes code_2509 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2509 code_2509_ok (by decide) (by decide)

/-- Catalogue code #2510: ((6,2,2)), m=11, a=[1, 1, 4, 8, 8, 10], S=[0, 5]. -/
def code_2510 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2510_ok : code_2510.OK := by native_decide
/-- Code #2510 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2510_qec :
    ∃ ψ, SS.IsAmplitudes code_2510 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2510 code_2510_ok (by decide) (by decide)

/-- Catalogue code #2511: ((6,2,2)), m=11, a=[1, 1, 4, 8, 9, 9], S=[0, 5]. -/
def code_2511 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2511_ok : code_2511.OK := by native_decide
/-- Code #2511 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2511_qec :
    ∃ ψ, SS.IsAmplitudes code_2511 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2511 code_2511_ok (by decide) (by decide)

/-- Catalogue code #2512: ((6,2,2)), m=11, a=[1, 1, 4, 9, 9, 9], S=[0, 5]. -/
def code_2512 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2512_ok : code_2512.OK := by native_decide
/-- Code #2512 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2512_qec :
    ∃ ψ, SS.IsAmplitudes code_2512 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2512 code_2512_ok (by decide) (by decide)

/-- Catalogue code #2513: ((6,2,2)), m=11, a=[1, 1, 4, 9, 9, 10], S=[0, 6]. -/
def code_2513 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2513_ok : code_2513.OK := by native_decide
/-- Code #2513 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2513_qec :
    ∃ ψ, SS.IsAmplitudes code_2513 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2513 code_2513_ok (by decide) (by decide)

/-- Catalogue code #2514: ((6,2,2)), m=11, a=[1, 1, 5, 5, 6, 9], S=[0, 8]. -/
def code_2514 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2514_ok : code_2514.OK := by native_decide
/-- Code #2514 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2514_qec :
    ∃ ψ, SS.IsAmplitudes code_2514 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2514 code_2514_ok (by decide) (by decide)

/-- Catalogue code #2515: ((6,2,2)), m=11, a=[1, 1, 5, 5, 7, 8], S=[0, 2]. -/
def code_2515 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2515_ok : code_2515.OK := by native_decide
/-- Code #2515 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2515_qec :
    ∃ ψ, SS.IsAmplitudes code_2515 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2515 code_2515_ok (by decide) (by decide)

/-- Catalogue code #2516: ((6,2,2)), m=11, a=[1, 1, 5, 5, 7, 8], S=[0, 9]. -/
def code_2516 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2516_ok : code_2516.OK := by native_decide
/-- Code #2516 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2516_qec :
    ∃ ψ, SS.IsAmplitudes code_2516 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2516 code_2516_ok (by decide) (by decide)

/-- Catalogue code #2517: ((6,2,2)), m=11, a=[1, 1, 5, 5, 7, 9], S=[0, 3]. -/
def code_2517 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2517_ok : code_2517.OK := by native_decide
/-- Code #2517 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2517_qec :
    ∃ ψ, SS.IsAmplitudes code_2517 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2517 code_2517_ok (by decide) (by decide)

/-- Catalogue code #2518: ((6,2,2)), m=11, a=[1, 1, 5, 5, 7, 10], S=[0, 9]. -/
def code_2518 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2518_ok : code_2518.OK := by native_decide
/-- Code #2518 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2518_qec :
    ∃ ψ, SS.IsAmplitudes code_2518 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2518 code_2518_ok (by decide) (by decide)

/-- Catalogue code #2519: ((6,2,2)), m=11, a=[1, 1, 5, 5, 8, 8], S=[0, 2]. -/
def code_2519 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2519_ok : code_2519.OK := by native_decide
/-- Code #2519 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2519_qec :
    ∃ ψ, SS.IsAmplitudes code_2519 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2519 code_2519_ok (by decide) (by decide)

/-- Catalogue code #2520: ((6,2,2)), m=11, a=[1, 1, 5, 5, 8, 8], S=[0, 7]. -/
def code_2520 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2520_ok : code_2520.OK := by native_decide
/-- Code #2520 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2520_qec :
    ∃ ψ, SS.IsAmplitudes code_2520 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2520 code_2520_ok (by decide) (by decide)

/-- Catalogue code #2521: ((6,2,2)), m=11, a=[1, 1, 5, 5, 9, 9], S=[0, 7]. -/
def code_2521 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2521_ok : code_2521.OK := by native_decide
/-- Code #2521 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2521_qec :
    ∃ ψ, SS.IsAmplitudes code_2521 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2521 code_2521_ok (by decide) (by decide)

/-- Catalogue code #2522: ((6,2,2)), m=11, a=[1, 1, 5, 5, 9, 10], S=[0, 7]. -/
def code_2522 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2522_ok : code_2522.OK := by native_decide
/-- Code #2522 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2522_qec :
    ∃ ψ, SS.IsAmplitudes code_2522 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2522 code_2522_ok (by decide) (by decide)

/-- Catalogue code #2523: ((6,2,2)), m=11, a=[1, 1, 5, 6, 6, 8], S=[0, 2]. -/
def code_2523 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2523_ok : code_2523.OK := by native_decide
/-- Code #2523 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2523_qec :
    ∃ ψ, SS.IsAmplitudes code_2523 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2523 code_2523_ok (by decide) (by decide)

/-- Catalogue code #2524: ((6,2,2)), m=11, a=[1, 1, 5, 6, 7, 7], S=[0, 2]. -/
def code_2524 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2524_ok : code_2524.OK := by native_decide
/-- Code #2524 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2524_qec :
    ∃ ψ, SS.IsAmplitudes code_2524 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2524 code_2524_ok (by decide) (by decide)

/-- Catalogue code #2525: ((6,2,2)), m=11, a=[1, 1, 5, 6, 7, 7], S=[0, 3]. -/
def code_2525 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2525_ok : code_2525.OK := by native_decide
/-- Code #2525 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2525_qec :
    ∃ ψ, SS.IsAmplitudes code_2525 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2525 code_2525_ok (by decide) (by decide)

/-- Catalogue code #2526: ((6,2,2)), m=11, a=[1, 1, 5, 6, 7, 8], S=[0, 2]. -/
def code_2526 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2526_ok : code_2526.OK := by native_decide
/-- Code #2526 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2526_qec :
    ∃ ψ, SS.IsAmplitudes code_2526 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2526 code_2526_ok (by decide) (by decide)

/-- Catalogue code #2527: ((6,2,2)), m=11, a=[1, 1, 5, 6, 7, 8], S=[0, 9]. -/
def code_2527 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2527_ok : code_2527.OK := by native_decide
/-- Code #2527 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2527_qec :
    ∃ ψ, SS.IsAmplitudes code_2527 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2527 code_2527_ok (by decide) (by decide)

/-- Catalogue code #2528: ((6,2,2)), m=11, a=[1, 1, 5, 6, 7, 9], S=[0, 3]. -/
def code_2528 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2528_ok : code_2528.OK := by native_decide
/-- Code #2528 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2528_qec :
    ∃ ψ, SS.IsAmplitudes code_2528 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2528 code_2528_ok (by decide) (by decide)

/-- Catalogue code #2529: ((6,2,2)), m=11, a=[1, 1, 5, 6, 8, 8], S=[0, 2]. -/
def code_2529 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2529_ok : code_2529.OK := by native_decide
/-- Code #2529 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2529_qec :
    ∃ ψ, SS.IsAmplitudes code_2529 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2529 code_2529_ok (by decide) (by decide)

/-- Catalogue code #2530: ((6,2,2)), m=11, a=[1, 1, 5, 6, 8, 9], S=[0, 4]. -/
def code_2530 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2530_ok : code_2530.OK := by native_decide
/-- Code #2530 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2530_qec :
    ∃ ψ, SS.IsAmplitudes code_2530 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2530 code_2530_ok (by decide) (by decide)

/-- Catalogue code #2531: ((6,2,2)), m=11, a=[1, 1, 5, 6, 9, 9], S=[0, 7]. -/
def code_2531 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2531_ok : code_2531.OK := by native_decide
/-- Code #2531 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2531_qec :
    ∃ ψ, SS.IsAmplitudes code_2531 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2531 code_2531_ok (by decide) (by decide)

/-- Catalogue code #2532: ((6,2,2)), m=11, a=[1, 1, 5, 7, 7, 8], S=[0, 2]. -/
def code_2532 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2532_ok : code_2532.OK := by native_decide
/-- Code #2532 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2532_qec :
    ∃ ψ, SS.IsAmplitudes code_2532 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2532 code_2532_ok (by decide) (by decide)

/-- Catalogue code #2533: ((6,2,2)), m=11, a=[1, 1, 5, 7, 7, 8], S=[0, 9]. -/
def code_2533 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2533_ok : code_2533.OK := by native_decide
/-- Code #2533 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2533_qec :
    ∃ ψ, SS.IsAmplitudes code_2533 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2533 code_2533_ok (by decide) (by decide)

/-- Catalogue code #2534: ((6,2,2)), m=11, a=[1, 1, 5, 7, 7, 9], S=[0, 3]. -/
def code_2534 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_2534_ok : code_2534.OK := by native_decide
/-- Code #2534 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2534_qec :
    ∃ ψ, SS.IsAmplitudes code_2534 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2534 code_2534_ok (by decide) (by decide)

/-- Catalogue code #2535: ((6,2,2)), m=11, a=[1, 1, 5, 7, 8, 8], S=[0, 2]. -/
def code_2535 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2535_ok : code_2535.OK := by native_decide
/-- Code #2535 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2535_qec :
    ∃ ψ, SS.IsAmplitudes code_2535 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2535 code_2535_ok (by decide) (by decide)

/-- Catalogue code #2536: ((6,2,2)), m=11, a=[1, 1, 5, 7, 9, 9], S=[0, 3]. -/
def code_2536 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2536_ok : code_2536.OK := by native_decide
/-- Code #2536 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2536_qec :
    ∃ ψ, SS.IsAmplitudes code_2536 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2536 code_2536_ok (by decide) (by decide)

/-- Catalogue code #2537: ((6,2,2)), m=11, a=[1, 1, 5, 8, 8, 8], S=[0, 2]. -/
def code_2537 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2537_ok : code_2537.OK := by native_decide
/-- Code #2537 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2537_qec :
    ∃ ψ, SS.IsAmplitudes code_2537 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2537 code_2537_ok (by decide) (by decide)

/-- Catalogue code #2538: ((6,2,2)), m=11, a=[1, 1, 5, 8, 8, 8], S=[0, 7]. -/
def code_2538 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2538_ok : code_2538.OK := by native_decide
/-- Code #2538 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2538_qec :
    ∃ ψ, SS.IsAmplitudes code_2538 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2538 code_2538_ok (by decide) (by decide)

/-- Catalogue code #2539: ((6,2,2)), m=11, a=[1, 1, 5, 8, 8, 9], S=[0, 7]. -/
def code_2539 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2539_ok : code_2539.OK := by native_decide
/-- Code #2539 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2539_qec :
    ∃ ψ, SS.IsAmplitudes code_2539 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2539 code_2539_ok (by decide) (by decide)

/-- Catalogue code #2540: ((6,2,2)), m=11, a=[1, 1, 5, 8, 8, 10], S=[0, 4]. -/
def code_2540 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2540_ok : code_2540.OK := by native_decide
/-- Code #2540 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2540_qec :
    ∃ ψ, SS.IsAmplitudes code_2540 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2540 code_2540_ok (by decide) (by decide)

/-- Catalogue code #2541: ((6,2,2)), m=11, a=[1, 1, 5, 8, 9, 9], S=[0, 4]. -/
def code_2541 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2541_ok : code_2541.OK := by native_decide
/-- Code #2541 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2541_qec :
    ∃ ψ, SS.IsAmplitudes code_2541 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2541 code_2541_ok (by decide) (by decide)

/-- Catalogue code #2542: ((6,2,2)), m=11, a=[1, 1, 5, 8, 9, 9], S=[0, 7]. -/
def code_2542 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2542_ok : code_2542.OK := by native_decide
/-- Code #2542 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2542_qec :
    ∃ ψ, SS.IsAmplitudes code_2542 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2542 code_2542_ok (by decide) (by decide)

/-- Catalogue code #2543: ((6,2,2)), m=11, a=[1, 1, 5, 9, 9, 9], S=[0, 7]. -/
def code_2543 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2543_ok : code_2543.OK := by native_decide
/-- Code #2543 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2543_qec :
    ∃ ψ, SS.IsAmplitudes code_2543 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2543 code_2543_ok (by decide) (by decide)

/-- Catalogue code #2544: ((6,2,2)), m=11, a=[1, 1, 5, 9, 9, 10], S=[0, 7]. -/
def code_2544 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2544_ok : code_2544.OK := by native_decide
/-- Code #2544 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2544_qec :
    ∃ ψ, SS.IsAmplitudes code_2544 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2544 code_2544_ok (by decide) (by decide)

/-- Catalogue code #2545: ((6,2,2)), m=11, a=[1, 1, 6, 6, 6, 8], S=[0, 9]. -/
def code_2545 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2545_ok : code_2545.OK := by native_decide
/-- Code #2545 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2545_qec :
    ∃ ψ, SS.IsAmplitudes code_2545 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2545 code_2545_ok (by decide) (by decide)

/-- Catalogue code #2546: ((6,2,2)), m=11, a=[1, 1, 6, 6, 7, 7], S=[0, 8]. -/
def code_2546 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2546_ok : code_2546.OK := by native_decide
/-- Code #2546 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2546_qec :
    ∃ ψ, SS.IsAmplitudes code_2546 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2546 code_2546_ok (by decide) (by decide)

/-- Catalogue code #2547: ((6,2,2)), m=11, a=[1, 1, 6, 6, 7, 7], S=[0, 9]. -/
def code_2547 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2547_ok : code_2547.OK := by native_decide
/-- Code #2547 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2547_qec :
    ∃ ψ, SS.IsAmplitudes code_2547 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2547 code_2547_ok (by decide) (by decide)

/-- Catalogue code #2548: ((6,2,2)), m=11, a=[1, 1, 6, 6, 7, 8], S=[0, 9]. -/
def code_2548 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2548_ok : code_2548.OK := by native_decide
/-- Code #2548 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2548_qec :
    ∃ ψ, SS.IsAmplitudes code_2548 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2548 code_2548_ok (by decide) (by decide)

/-- Catalogue code #2549: ((6,2,2)), m=11, a=[1, 1, 6, 6, 8, 8], S=[0, 2]. -/
def code_2549 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2549_ok : code_2549.OK := by native_decide
/-- Code #2549 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2549_qec :
    ∃ ψ, SS.IsAmplitudes code_2549 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2549 code_2549_ok (by decide) (by decide)

/-- Catalogue code #2550: ((6,2,2)), m=11, a=[1, 1, 6, 6, 8, 8], S=[0, 7]. -/
def code_2550 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2550_ok : code_2550.OK := by native_decide
/-- Code #2550 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2550_qec :
    ∃ ψ, SS.IsAmplitudes code_2550 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2550 code_2550_ok (by decide) (by decide)

/-- Catalogue code #2551: ((6,2,2)), m=11, a=[1, 1, 6, 6, 8, 8], S=[0, 9]. -/
def code_2551 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2551_ok : code_2551.OK := by native_decide
/-- Code #2551 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2551_qec :
    ∃ ψ, SS.IsAmplitudes code_2551 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2551 code_2551_ok (by decide) (by decide)

/-- Catalogue code #2552: ((6,2,2)), m=11, a=[1, 1, 6, 6, 8, 9], S=[0, 7]. -/
def code_2552 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2552_ok : code_2552.OK := by native_decide
/-- Code #2552 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2552_qec :
    ∃ ψ, SS.IsAmplitudes code_2552 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2552 code_2552_ok (by decide) (by decide)

/-- Catalogue code #2553: ((6,2,2)), m=11, a=[1, 1, 6, 6, 8, 10], S=[0, 2]. -/
def code_2553 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2553_ok : code_2553.OK := by native_decide
/-- Code #2553 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2553_qec :
    ∃ ψ, SS.IsAmplitudes code_2553 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2553 code_2553_ok (by decide) (by decide)

/-- Catalogue code #2554: ((6,2,2)), m=11, a=[1, 1, 6, 6, 8, 10], S=[0, 7]. -/
def code_2554 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2554_ok : code_2554.OK := by native_decide
/-- Code #2554 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2554_qec :
    ∃ ψ, SS.IsAmplitudes code_2554 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2554 code_2554_ok (by decide) (by decide)

/-- Catalogue code #2555: ((6,2,2)), m=11, a=[1, 1, 6, 6, 9, 9], S=[0, 7]. -/
def code_2555 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2555_ok : code_2555.OK := by native_decide
/-- Code #2555 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2555_qec :
    ∃ ψ, SS.IsAmplitudes code_2555 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2555 code_2555_ok (by decide) (by decide)

/-- Catalogue code #2556: ((6,2,2)), m=11, a=[1, 1, 6, 6, 9, 9], S=[0, 8]. -/
def code_2556 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2556_ok : code_2556.OK := by native_decide
/-- Code #2556 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2556_qec :
    ∃ ψ, SS.IsAmplitudes code_2556 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2556 code_2556_ok (by decide) (by decide)

/-- Catalogue code #2557: ((6,2,2)), m=11, a=[1, 1, 6, 6, 9, 10], S=[0, 3]. -/
def code_2557 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2557_ok : code_2557.OK := by native_decide
/-- Code #2557 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2557_qec :
    ∃ ψ, SS.IsAmplitudes code_2557 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2557 code_2557_ok (by decide) (by decide)

/-- Catalogue code #2558: ((6,2,2)), m=11, a=[1, 1, 6, 7, 7, 7], S=[0, 9]. -/
def code_2558 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2558_ok : code_2558.OK := by native_decide
/-- Code #2558 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2558_qec :
    ∃ ψ, SS.IsAmplitudes code_2558 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2558 code_2558_ok (by decide) (by decide)

/-- Catalogue code #2559: ((6,2,2)), m=11, a=[1, 1, 6, 7, 7, 8], S=[0, 2]. -/
def code_2559 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2559_ok : code_2559.OK := by native_decide
/-- Code #2559 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2559_qec :
    ∃ ψ, SS.IsAmplitudes code_2559 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2559 code_2559_ok (by decide) (by decide)

/-- Catalogue code #2560: ((6,2,2)), m=11, a=[1, 1, 6, 7, 7, 8], S=[0, 9]. -/
def code_2560 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2560_ok : code_2560.OK := by native_decide
/-- Code #2560 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2560_qec :
    ∃ ψ, SS.IsAmplitudes code_2560 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2560 code_2560_ok (by decide) (by decide)

/-- Catalogue code #2561: ((6,2,2)), m=11, a=[1, 1, 6, 7, 7, 9], S=[0, 3]. -/
def code_2561 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2561_ok : code_2561.OK := by native_decide
/-- Code #2561 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2561_qec :
    ∃ ψ, SS.IsAmplitudes code_2561 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2561 code_2561_ok (by decide) (by decide)

/-- Catalogue code #2562: ((6,2,2)), m=11, a=[1, 1, 6, 7, 7, 9], S=[0, 8]. -/
def code_2562 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2562_ok : code_2562.OK := by native_decide
/-- Code #2562 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2562_qec :
    ∃ ψ, SS.IsAmplitudes code_2562 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2562 code_2562_ok (by decide) (by decide)

/-- Catalogue code #2563: ((6,2,2)), m=11, a=[1, 1, 6, 7, 7, 10], S=[0, 2]. -/
def code_2563 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2563_ok : code_2563.OK := by native_decide
/-- Code #2563 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2563_qec :
    ∃ ψ, SS.IsAmplitudes code_2563 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2563 code_2563_ok (by decide) (by decide)

/-- Catalogue code #2564: ((6,2,2)), m=11, a=[1, 1, 6, 7, 7, 10], S=[0, 8]. -/
def code_2564 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2564_ok : code_2564.OK := by native_decide
/-- Code #2564 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2564_qec :
    ∃ ψ, SS.IsAmplitudes code_2564 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2564 code_2564_ok (by decide) (by decide)

/-- Catalogue code #2565: ((6,2,2)), m=11, a=[1, 1, 6, 7, 8, 8], S=[0, 2]. -/
def code_2565 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2565_ok : code_2565.OK := by native_decide
/-- Code #2565 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2565_qec :
    ∃ ψ, SS.IsAmplitudes code_2565 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2565 code_2565_ok (by decide) (by decide)

/-- Catalogue code #2566: ((6,2,2)), m=11, a=[1, 1, 6, 7, 9, 9], S=[0, 3]. -/
def code_2566 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2566_ok : code_2566.OK := by native_decide
/-- Code #2566 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2566_qec :
    ∃ ψ, SS.IsAmplitudes code_2566 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2566 code_2566_ok (by decide) (by decide)

/-- Catalogue code #2567: ((6,2,2)), m=11, a=[1, 1, 6, 7, 9, 9], S=[0, 8]. -/
def code_2567 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2567_ok : code_2567.OK := by native_decide
/-- Code #2567 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2567_qec :
    ∃ ψ, SS.IsAmplitudes code_2567 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2567 code_2567_ok (by decide) (by decide)

/-- Catalogue code #2568: ((6,2,2)), m=11, a=[1, 1, 6, 7, 9, 10], S=[0, 8]. -/
def code_2568 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2568_ok : code_2568.OK := by native_decide
/-- Code #2568 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2568_qec :
    ∃ ψ, SS.IsAmplitudes code_2568 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2568 code_2568_ok (by decide) (by decide)

/-- Catalogue code #2569: ((6,2,2)), m=11, a=[1, 1, 6, 8, 8, 9], S=[0, 4]. -/
def code_2569 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2569_ok : code_2569.OK := by native_decide
/-- Code #2569 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2569_qec :
    ∃ ψ, SS.IsAmplitudes code_2569 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2569 code_2569_ok (by decide) (by decide)

/-- Catalogue code #2570: ((6,2,2)), m=11, a=[1, 1, 6, 8, 8, 9], S=[0, 7]. -/
def code_2570 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2570_ok : code_2570.OK := by native_decide
/-- Code #2570 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2570_qec :
    ∃ ψ, SS.IsAmplitudes code_2570 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2570 code_2570_ok (by decide) (by decide)

/-- Catalogue code #2571: ((6,2,2)), m=11, a=[1, 1, 6, 8, 8, 10], S=[0, 7]. -/
def code_2571 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_2571_ok : code_2571.OK := by native_decide
/-- Code #2571 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2571_qec :
    ∃ ψ, SS.IsAmplitudes code_2571 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2571 code_2571_ok (by decide) (by decide)

/-- Catalogue code #2572: ((6,2,2)), m=11, a=[1, 1, 6, 8, 9, 9], S=[0, 4]. -/
def code_2572 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2572_ok : code_2572.OK := by native_decide
/-- Code #2572 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2572_qec :
    ∃ ψ, SS.IsAmplitudes code_2572 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2572 code_2572_ok (by decide) (by decide)

/-- Catalogue code #2573: ((6,2,2)), m=11, a=[1, 1, 6, 8, 9, 9], S=[0, 7]. -/
def code_2573 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2573_ok : code_2573.OK := by native_decide
/-- Code #2573 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2573_qec :
    ∃ ψ, SS.IsAmplitudes code_2573 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2573 code_2573_ok (by decide) (by decide)

/-- Catalogue code #2574: ((6,2,2)), m=11, a=[1, 1, 6, 9, 9, 9], S=[0, 7]. -/
def code_2574 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2574_ok : code_2574.OK := by native_decide
/-- Code #2574 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2574_qec :
    ∃ ψ, SS.IsAmplitudes code_2574 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2574 code_2574_ok (by decide) (by decide)

/-- Catalogue code #2575: ((6,2,2)), m=11, a=[1, 1, 6, 9, 9, 9], S=[0, 8]. -/
def code_2575 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2575_ok : code_2575.OK := by native_decide
/-- Code #2575 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2575_qec :
    ∃ ψ, SS.IsAmplitudes code_2575 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2575 code_2575_ok (by decide) (by decide)

/-- Catalogue code #2576: ((6,2,2)), m=11, a=[1, 1, 7, 7, 7, 9], S=[0, 5]. -/
def code_2576 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2576_ok : code_2576.OK := by native_decide
/-- Code #2576 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2576_qec :
    ∃ ψ, SS.IsAmplitudes code_2576 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2576 code_2576_ok (by decide) (by decide)

/-- Catalogue code #2577: ((6,2,2)), m=11, a=[1, 1, 7, 7, 7, 9], S=[0, 8]. -/
def code_2577 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2577_ok : code_2577.OK := by native_decide
/-- Code #2577 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2577_qec :
    ∃ ψ, SS.IsAmplitudes code_2577 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2577 code_2577_ok (by decide) (by decide)

/-- Catalogue code #2578: ((6,2,2)), m=11, a=[1, 1, 7, 7, 7, 10], S=[0, 2]. -/
def code_2578 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2578_ok : code_2578.OK := by native_decide
/-- Code #2578 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2578_qec :
    ∃ ψ, SS.IsAmplitudes code_2578 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2578 code_2578_ok (by decide) (by decide)

/-- Catalogue code #2579: ((6,2,2)), m=11, a=[1, 1, 7, 7, 8, 9], S=[0, 5]. -/
def code_2579 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2579_ok : code_2579.OK := by native_decide
/-- Code #2579 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2579_qec :
    ∃ ψ, SS.IsAmplitudes code_2579 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2579 code_2579_ok (by decide) (by decide)

/-- Catalogue code #2580: ((6,2,2)), m=11, a=[1, 1, 7, 7, 8, 9], S=[0, 6]. -/
def code_2580 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2580_ok : code_2580.OK := by native_decide
/-- Code #2580 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2580_qec :
    ∃ ψ, SS.IsAmplitudes code_2580 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2580 code_2580_ok (by decide) (by decide)

/-- Catalogue code #2581: ((6,2,2)), m=11, a=[1, 1, 7, 7, 9, 9], S=[0, 3]. -/
def code_2581 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2581_ok : code_2581.OK := by native_decide
/-- Code #2581 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2581_qec :
    ∃ ψ, SS.IsAmplitudes code_2581 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2581 code_2581_ok (by decide) (by decide)

/-- Catalogue code #2582: ((6,2,2)), m=11, a=[1, 1, 7, 7, 9, 9], S=[0, 5]. -/
def code_2582 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2582_ok : code_2582.OK := by native_decide
/-- Code #2582 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2582_qec :
    ∃ ψ, SS.IsAmplitudes code_2582 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2582 code_2582_ok (by decide) (by decide)

/-- Catalogue code #2583: ((6,2,2)), m=11, a=[1, 1, 7, 7, 9, 9], S=[0, 8]. -/
def code_2583 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2583_ok : code_2583.OK := by native_decide
/-- Code #2583 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2583_qec :
    ∃ ψ, SS.IsAmplitudes code_2583 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2583 code_2583_ok (by decide) (by decide)

/-- Catalogue code #2584: ((6,2,2)), m=11, a=[1, 1, 7, 7, 9, 10], S=[0, 5]. -/
def code_2584 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2584_ok : code_2584.OK := by native_decide
/-- Code #2584 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2584_qec :
    ∃ ψ, SS.IsAmplitudes code_2584 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2584 code_2584_ok (by decide) (by decide)

/-- Catalogue code #2585: ((6,2,2)), m=11, a=[1, 1, 7, 7, 9, 10], S=[0, 8]. -/
def code_2585 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_2585_ok : code_2585.OK := by native_decide
/-- Code #2585 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2585_qec :
    ∃ ψ, SS.IsAmplitudes code_2585 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2585 code_2585_ok (by decide) (by decide)

/-- Catalogue code #2586: ((6,2,2)), m=11, a=[1, 1, 7, 8, 8, 8], S=[0, 2]. -/
def code_2586 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2586_ok : code_2586.OK := by native_decide
/-- Code #2586 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2586_qec :
    ∃ ψ, SS.IsAmplitudes code_2586 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2586 code_2586_ok (by decide) (by decide)

/-- Catalogue code #2587: ((6,2,2)), m=11, a=[1, 1, 7, 8, 8, 8], S=[0, 9]. -/
def code_2587 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2587_ok : code_2587.OK := by native_decide
/-- Code #2587 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2587_qec :
    ∃ ψ, SS.IsAmplitudes code_2587 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2587 code_2587_ok (by decide) (by decide)

/-- Catalogue code #2588: ((6,2,2)), m=11, a=[1, 1, 7, 8, 8, 9], S=[0, 5]. -/
def code_2588 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2588_ok : code_2588.OK := by native_decide
/-- Code #2588 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2588_qec :
    ∃ ψ, SS.IsAmplitudes code_2588 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2588 code_2588_ok (by decide) (by decide)

/-- Catalogue code #2589: ((6,2,2)), m=11, a=[1, 1, 7, 8, 8, 9], S=[0, 6]. -/
def code_2589 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2589_ok : code_2589.OK := by native_decide
/-- Code #2589 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2589_qec :
    ∃ ψ, SS.IsAmplitudes code_2589 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2589 code_2589_ok (by decide) (by decide)

/-- Catalogue code #2590: ((6,2,2)), m=11, a=[1, 1, 7, 8, 9, 9], S=[0, 5]. -/
def code_2590 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2590_ok : code_2590.OK := by native_decide
/-- Code #2590 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2590_qec :
    ∃ ψ, SS.IsAmplitudes code_2590 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2590 code_2590_ok (by decide) (by decide)

/-- Catalogue code #2591: ((6,2,2)), m=11, a=[1, 1, 8, 8, 8, 9], S=[0, 6]. -/
def code_2591 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2591_ok : code_2591.OK := by native_decide
/-- Code #2591 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2591_qec :
    ∃ ψ, SS.IsAmplitudes code_2591 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2591 code_2591_ok (by decide) (by decide)

/-- Catalogue code #2592: ((6,2,2)), m=11, a=[1, 1, 8, 8, 8, 9], S=[0, 7]. -/
def code_2592 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (1 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-9 : ℚ) / 11)]
theorem code_2592_ok : code_2592.OK := by native_decide
/-- Code #2592 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2592_qec :
    ∃ ψ, SS.IsAmplitudes code_2592 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2592 code_2592_ok (by decide) (by decide)

/-- Catalogue code #2593: ((6,2,2)), m=11, a=[1, 2, 2, 2, 3, 3], S=[0, 6]. -/
def code_2593 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2593_ok : code_2593.OK := by native_decide
/-- Code #2593 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2593_qec :
    ∃ ψ, SS.IsAmplitudes code_2593 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2593 code_2593_ok (by decide) (by decide)

/-- Catalogue code #2594: ((6,2,2)), m=11, a=[1, 2, 2, 2, 3, 3], S=[0, 7]. -/
def code_2594 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2594_ok : code_2594.OK := by native_decide
/-- Code #2594 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2594_qec :
    ∃ ψ, SS.IsAmplitudes code_2594 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2594 code_2594_ok (by decide) (by decide)

/-- Catalogue code #2595: ((6,2,2)), m=11, a=[1, 2, 2, 2, 3, 4], S=[0, 6]. -/
def code_2595 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2595_ok : code_2595.OK := by native_decide
/-- Code #2595 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2595_qec :
    ∃ ψ, SS.IsAmplitudes code_2595 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2595 code_2595_ok (by decide) (by decide)

/-- Catalogue code #2596: ((6,2,2)), m=11, a=[1, 2, 2, 2, 3, 5], S=[0, 7]. -/
def code_2596 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2596_ok : code_2596.OK := by native_decide
/-- Code #2596 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2596_qec :
    ∃ ψ, SS.IsAmplitudes code_2596 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2596 code_2596_ok (by decide) (by decide)

/-- Catalogue code #2597: ((6,2,2)), m=11, a=[1, 2, 2, 2, 4, 4], S=[0, 3]. -/
def code_2597 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2597_ok : code_2597.OK := by native_decide
/-- Code #2597 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2597_qec :
    ∃ ψ, SS.IsAmplitudes code_2597 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2597 code_2597_ok (by decide) (by decide)

/-- Catalogue code #2598: ((6,2,2)), m=11, a=[1, 2, 2, 2, 4, 5], S=[0, 8]. -/
def code_2598 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2598_ok : code_2598.OK := by native_decide
/-- Code #2598 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2598_qec :
    ∃ ψ, SS.IsAmplitudes code_2598 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2598 code_2598_ok (by decide) (by decide)

/-- Catalogue code #2599: ((6,2,2)), m=11, a=[1, 2, 2, 2, 4, 6], S=[0, 3]. -/
def code_2599 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2599_ok : code_2599.OK := by native_decide
/-- Code #2599 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2599_qec :
    ∃ ψ, SS.IsAmplitudes code_2599 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2599 code_2599_ok (by decide) (by decide)

/-- Catalogue code #2600: ((6,2,2)), m=11, a=[1, 2, 2, 2, 4, 7], S=[0, 8]. -/
def code_2600 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2600_ok : code_2600.OK := by native_decide
/-- Code #2600 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2600_qec :
    ∃ ψ, SS.IsAmplitudes code_2600 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2600 code_2600_ok (by decide) (by decide)

/-- Catalogue code #2601: ((6,2,2)), m=11, a=[1, 2, 2, 2, 4, 8], S=[0, 5]. -/
def code_2601 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2601_ok : code_2601.OK := by native_decide
/-- Code #2601 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2601_qec :
    ∃ ψ, SS.IsAmplitudes code_2601 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2601 code_2601_ok (by decide) (by decide)

/-- Catalogue code #2602: ((6,2,2)), m=11, a=[1, 2, 2, 2, 4, 10], S=[0, 3]. -/
def code_2602 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2602_ok : code_2602.OK := by native_decide
/-- Code #2602 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2602_qec :
    ∃ ψ, SS.IsAmplitudes code_2602 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2602 code_2602_ok (by decide) (by decide)

/-- Catalogue code #2603: ((6,2,2)), m=11, a=[1, 2, 2, 2, 4, 10], S=[0, 5]. -/
def code_2603 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2603_ok : code_2603.OK := by native_decide
/-- Code #2603 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2603_qec :
    ∃ ψ, SS.IsAmplitudes code_2603 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2603 code_2603_ok (by decide) (by decide)

/-- Catalogue code #2604: ((6,2,2)), m=11, a=[1, 2, 2, 2, 5, 5], S=[0, 3]. -/
def code_2604 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2604_ok : code_2604.OK := by native_decide
/-- Code #2604 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2604_qec :
    ∃ ψ, SS.IsAmplitudes code_2604 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2604 code_2604_ok (by decide) (by decide)

/-- Catalogue code #2605: ((6,2,2)), m=11, a=[1, 2, 2, 2, 5, 5], S=[0, 7]. -/
def code_2605 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2605_ok : code_2605.OK := by native_decide
/-- Code #2605 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2605_qec :
    ∃ ψ, SS.IsAmplitudes code_2605 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2605 code_2605_ok (by decide) (by decide)

/-- Catalogue code #2606: ((6,2,2)), m=11, a=[1, 2, 2, 2, 5, 6], S=[0, 8]. -/
def code_2606 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2606_ok : code_2606.OK := by native_decide
/-- Code #2606 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2606_qec :
    ∃ ψ, SS.IsAmplitudes code_2606 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2606 code_2606_ok (by decide) (by decide)

/-- Catalogue code #2607: ((6,2,2)), m=11, a=[1, 2, 2, 2, 6, 6], S=[0, 7]. -/
def code_2607 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2607_ok : code_2607.OK := by native_decide
/-- Code #2607 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2607_qec :
    ∃ ψ, SS.IsAmplitudes code_2607 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2607 code_2607_ok (by decide) (by decide)

/-- Catalogue code #2608: ((6,2,2)), m=11, a=[1, 2, 2, 2, 6, 8], S=[0, 7]. -/
def code_2608 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2608_ok : code_2608.OK := by native_decide
/-- Code #2608 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2608_qec :
    ∃ ψ, SS.IsAmplitudes code_2608 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2608 code_2608_ok (by decide) (by decide)

/-- Catalogue code #2609: ((6,2,2)), m=11, a=[1, 2, 2, 2, 6, 10], S=[0, 7]. -/
def code_2609 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2609_ok : code_2609.OK := by native_decide
/-- Code #2609 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2609_qec :
    ∃ ψ, SS.IsAmplitudes code_2609 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2609 code_2609_ok (by decide) (by decide)

/-- Catalogue code #2610: ((6,2,2)), m=11, a=[1, 2, 2, 2, 8, 8], S=[0, 5]. -/
def code_2610 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2610_ok : code_2610.OK := by native_decide
/-- Code #2610 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2610_qec :
    ∃ ψ, SS.IsAmplitudes code_2610 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2610 code_2610_ok (by decide) (by decide)

/-- Catalogue code #2611: ((6,2,2)), m=11, a=[1, 2, 2, 2, 8, 8], S=[0, 6]. -/
def code_2611 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2611_ok : code_2611.OK := by native_decide
/-- Code #2611 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2611_qec :
    ∃ ψ, SS.IsAmplitudes code_2611 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2611 code_2611_ok (by decide) (by decide)

/-- Catalogue code #2612: ((6,2,2)), m=11, a=[1, 2, 2, 2, 8, 8], S=[0, 7]. -/
def code_2612 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2612_ok : code_2612.OK := by native_decide
/-- Code #2612 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2612_qec :
    ∃ ψ, SS.IsAmplitudes code_2612 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2612 code_2612_ok (by decide) (by decide)

/-- Catalogue code #2613: ((6,2,2)), m=11, a=[1, 2, 2, 2, 8, 10], S=[0, 7]. -/
def code_2613 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2613_ok : code_2613.OK := by native_decide
/-- Code #2613 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2613_qec :
    ∃ ψ, SS.IsAmplitudes code_2613 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2613 code_2613_ok (by decide) (by decide)

/-- Catalogue code #2614: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 3], S=[0, 7]. -/
def code_2614 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2614_ok : code_2614.OK := by native_decide
/-- Code #2614 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2614_qec :
    ∃ ψ, SS.IsAmplitudes code_2614 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2614 code_2614_ok (by decide) (by decide)

/-- Catalogue code #2615: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 4], S=[0, 5]. -/
def code_2615 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2615_ok : code_2615.OK := by native_decide
/-- Code #2615 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2615_qec :
    ∃ ψ, SS.IsAmplitudes code_2615 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2615 code_2615_ok (by decide) (by decide)

/-- Catalogue code #2616: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 4], S=[0, 6]. -/
def code_2616 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2616_ok : code_2616.OK := by native_decide
/-- Code #2616 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2616_qec :
    ∃ ψ, SS.IsAmplitudes code_2616 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2616 code_2616_ok (by decide) (by decide)

/-- Catalogue code #2617: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 5], S=[0, 4]. -/
def code_2617 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2617_ok : code_2617.OK := by native_decide
/-- Code #2617 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2617_qec :
    ∃ ψ, SS.IsAmplitudes code_2617 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2617 code_2617_ok (by decide) (by decide)

/-- Catalogue code #2618: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 5], S=[0, 7]. -/
def code_2618 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2618_ok : code_2618.OK := by native_decide
/-- Code #2618 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2618_qec :
    ∃ ψ, SS.IsAmplitudes code_2618 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2618 code_2618_ok (by decide) (by decide)

/-- Catalogue code #2619: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 6], S=[0, 4]. -/
def code_2619 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2619_ok : code_2619.OK := by native_decide
/-- Code #2619 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2619_qec :
    ∃ ψ, SS.IsAmplitudes code_2619 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2619 code_2619_ok (by decide) (by decide)

/-- Catalogue code #2620: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 6], S=[0, 7]. -/
def code_2620 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2620_ok : code_2620.OK := by native_decide
/-- Code #2620 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2620_qec :
    ∃ ψ, SS.IsAmplitudes code_2620 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2620 code_2620_ok (by decide) (by decide)

/-- Catalogue code #2621: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 7], S=[0, 5]. -/
def code_2621 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2621_ok : code_2621.OK := by native_decide
/-- Code #2621 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2621_qec :
    ∃ ψ, SS.IsAmplitudes code_2621 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2621 code_2621_ok (by decide) (by decide)

/-- Catalogue code #2622: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 7], S=[0, 6]. -/
def code_2622 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2622_ok : code_2622.OK := by native_decide
/-- Code #2622 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2622_qec :
    ∃ ψ, SS.IsAmplitudes code_2622 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2622 code_2622_ok (by decide) (by decide)

/-- Catalogue code #2623: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 8], S=[0, 4]. -/
def code_2623 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2623_ok : code_2623.OK := by native_decide
/-- Code #2623 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2623_qec :
    ∃ ψ, SS.IsAmplitudes code_2623 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2623 code_2623_ok (by decide) (by decide)

/-- Catalogue code #2624: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 9], S=[0, 4]. -/
def code_2624 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2624_ok : code_2624.OK := by native_decide
/-- Code #2624 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2624_qec :
    ∃ ψ, SS.IsAmplitudes code_2624 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2624 code_2624_ok (by decide) (by decide)

/-- Catalogue code #2625: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 9], S=[0, 5]. -/
def code_2625 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2625_ok : code_2625.OK := by native_decide
/-- Code #2625 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2625_qec :
    ∃ ψ, SS.IsAmplitudes code_2625 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2625 code_2625_ok (by decide) (by decide)

/-- Catalogue code #2626: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 10], S=[0, 4]. -/
def code_2626 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2626_ok : code_2626.OK := by native_decide
/-- Code #2626 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2626_qec :
    ∃ ψ, SS.IsAmplitudes code_2626 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2626 code_2626_ok (by decide) (by decide)

/-- Catalogue code #2627: ((6,2,2)), m=11, a=[1, 2, 2, 3, 3, 10], S=[0, 6]. -/
def code_2627 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2627_ok : code_2627.OK := by native_decide
/-- Code #2627 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2627_qec :
    ∃ ψ, SS.IsAmplitudes code_2627 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2627 code_2627_ok (by decide) (by decide)

/-- Catalogue code #2628: ((6,2,2)), m=11, a=[1, 2, 2, 3, 4, 7], S=[0, 5]. -/
def code_2628 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2628_ok : code_2628.OK := by native_decide
/-- Code #2628 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2628_qec :
    ∃ ψ, SS.IsAmplitudes code_2628 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2628 code_2628_ok (by decide) (by decide)

/-- Catalogue code #2629: ((6,2,2)), m=11, a=[1, 2, 2, 3, 4, 8], S=[0, 5]. -/
def code_2629 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2629_ok : code_2629.OK := by native_decide
/-- Code #2629 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2629_qec :
    ∃ ψ, SS.IsAmplitudes code_2629 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2629 code_2629_ok (by decide) (by decide)

/-- Catalogue code #2630: ((6,2,2)), m=11, a=[1, 2, 2, 3, 4, 10], S=[0, 5]. -/
def code_2630 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2630_ok : code_2630.OK := by native_decide
/-- Code #2630 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2630_qec :
    ∃ ψ, SS.IsAmplitudes code_2630 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2630 code_2630_ok (by decide) (by decide)

/-- Catalogue code #2631: ((6,2,2)), m=11, a=[1, 2, 2, 3, 4, 10], S=[0, 6]. -/
def code_2631 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2631_ok : code_2631.OK := by native_decide
/-- Code #2631 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2631_qec :
    ∃ ψ, SS.IsAmplitudes code_2631 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2631 code_2631_ok (by decide) (by decide)

/-- Catalogue code #2632: ((6,2,2)), m=11, a=[1, 2, 2, 3, 5, 5], S=[0, 4]. -/
def code_2632 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2632_ok : code_2632.OK := by native_decide
/-- Code #2632 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2632_qec :
    ∃ ψ, SS.IsAmplitudes code_2632 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2632 code_2632_ok (by decide) (by decide)

/-- Catalogue code #2633: ((6,2,2)), m=11, a=[1, 2, 2, 3, 5, 6], S=[0, 4]. -/
def code_2633 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2633_ok : code_2633.OK := by native_decide
/-- Code #2633 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2633_qec :
    ∃ ψ, SS.IsAmplitudes code_2633 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2633 code_2633_ok (by decide) (by decide)

/-- Catalogue code #2634: ((6,2,2)), m=11, a=[1, 2, 2, 3, 5, 6], S=[0, 7]. -/
def code_2634 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2634_ok : code_2634.OK := by native_decide
/-- Code #2634 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2634_qec :
    ∃ ψ, SS.IsAmplitudes code_2634 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2634 code_2634_ok (by decide) (by decide)

/-- Catalogue code #2635: ((6,2,2)), m=11, a=[1, 2, 2, 3, 5, 8], S=[0, 4]. -/
def code_2635 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2635_ok : code_2635.OK := by native_decide
/-- Code #2635 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2635_qec :
    ∃ ψ, SS.IsAmplitudes code_2635 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2635 code_2635_ok (by decide) (by decide)

/-- Catalogue code #2636: ((6,2,2)), m=11, a=[1, 2, 2, 3, 5, 10], S=[0, 4]. -/
def code_2636 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2636_ok : code_2636.OK := by native_decide
/-- Code #2636 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2636_qec :
    ∃ ψ, SS.IsAmplitudes code_2636 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2636 code_2636_ok (by decide) (by decide)

/-- Catalogue code #2637: ((6,2,2)), m=11, a=[1, 2, 2, 3, 5, 10], S=[0, 7]. -/
def code_2637 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_2637_ok : code_2637.OK := by native_decide
/-- Code #2637 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2637_qec :
    ∃ ψ, SS.IsAmplitudes code_2637 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2637 code_2637_ok (by decide) (by decide)

/-- Catalogue code #2638: ((6,2,2)), m=11, a=[1, 2, 2, 3, 6, 6], S=[0, 4]. -/
def code_2638 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2638_ok : code_2638.OK := by native_decide
/-- Code #2638 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2638_qec :
    ∃ ψ, SS.IsAmplitudes code_2638 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2638 code_2638_ok (by decide) (by decide)

/-- Catalogue code #2639: ((6,2,2)), m=11, a=[1, 2, 2, 3, 6, 8], S=[0, 4]. -/
def code_2639 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_2639_ok : code_2639.OK := by native_decide
/-- Code #2639 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2639_qec :
    ∃ ψ, SS.IsAmplitudes code_2639 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2639 code_2639_ok (by decide) (by decide)

/-- Catalogue code #2640: ((6,2,2)), m=11, a=[1, 2, 2, 3, 6, 8], S=[0, 7]. -/
def code_2640 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2640_ok : code_2640.OK := by native_decide
/-- Code #2640 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2640_qec :
    ∃ ψ, SS.IsAmplitudes code_2640 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2640 code_2640_ok (by decide) (by decide)

/-- Catalogue code #2641: ((6,2,2)), m=11, a=[1, 2, 2, 3, 6, 9], S=[0, 4]. -/
def code_2641 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2641_ok : code_2641.OK := by native_decide
/-- Code #2641 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2641_qec :
    ∃ ψ, SS.IsAmplitudes code_2641 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2641 code_2641_ok (by decide) (by decide)

/-- Catalogue code #2642: ((6,2,2)), m=11, a=[1, 2, 2, 3, 6, 10], S=[0, 7]. -/
def code_2642 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2642_ok : code_2642.OK := by native_decide
/-- Code #2642 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2642_qec :
    ∃ ψ, SS.IsAmplitudes code_2642 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2642 code_2642_ok (by decide) (by decide)

/-- Catalogue code #2643: ((6,2,2)), m=11, a=[1, 2, 2, 3, 7, 7], S=[0, 5]. -/
def code_2643 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2643_ok : code_2643.OK := by native_decide
/-- Code #2643 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2643_qec :
    ∃ ψ, SS.IsAmplitudes code_2643 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2643 code_2643_ok (by decide) (by decide)

/-- Catalogue code #2644: ((6,2,2)), m=11, a=[1, 2, 2, 3, 7, 7], S=[0, 6]. -/
def code_2644 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2644_ok : code_2644.OK := by native_decide
/-- Code #2644 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2644_qec :
    ∃ ψ, SS.IsAmplitudes code_2644 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2644 code_2644_ok (by decide) (by decide)

/-- Catalogue code #2645: ((6,2,2)), m=11, a=[1, 2, 2, 3, 7, 8], S=[0, 5]. -/
def code_2645 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2645_ok : code_2645.OK := by native_decide
/-- Code #2645 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2645_qec :
    ∃ ψ, SS.IsAmplitudes code_2645 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2645 code_2645_ok (by decide) (by decide)

/-- Catalogue code #2646: ((6,2,2)), m=11, a=[1, 2, 2, 3, 7, 8], S=[0, 6]. -/
def code_2646 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2646_ok : code_2646.OK := by native_decide
/-- Code #2646 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2646_qec :
    ∃ ψ, SS.IsAmplitudes code_2646 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2646 code_2646_ok (by decide) (by decide)

/-- Catalogue code #2647: ((6,2,2)), m=11, a=[1, 2, 2, 3, 7, 9], S=[0, 5]. -/
def code_2647 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2647_ok : code_2647.OK := by native_decide
/-- Code #2647 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2647_qec :
    ∃ ψ, SS.IsAmplitudes code_2647 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2647 code_2647_ok (by decide) (by decide)

/-- Catalogue code #2648: ((6,2,2)), m=11, a=[1, 2, 2, 3, 7, 10], S=[0, 6]. -/
def code_2648 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2648_ok : code_2648.OK := by native_decide
/-- Code #2648 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2648_qec :
    ∃ ψ, SS.IsAmplitudes code_2648 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2648 code_2648_ok (by decide) (by decide)

/-- Catalogue code #2649: ((6,2,2)), m=11, a=[1, 2, 2, 4, 4, 4], S=[0, 5]. -/
def code_2649 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2649_ok : code_2649.OK := by native_decide
/-- Code #2649 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2649_qec :
    ∃ ψ, SS.IsAmplitudes code_2649 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2649 code_2649_ok (by decide) (by decide)

/-- Catalogue code #2650: ((6,2,2)), m=11, a=[1, 2, 2, 4, 4, 5], S=[0, 8]. -/
def code_2650 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2650_ok : code_2650.OK := by native_decide
/-- Code #2650 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2650_qec :
    ∃ ψ, SS.IsAmplitudes code_2650 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2650 code_2650_ok (by decide) (by decide)

/-- Catalogue code #2651: ((6,2,2)), m=11, a=[1, 2, 2, 4, 4, 6], S=[0, 3]. -/
def code_2651 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2651_ok : code_2651.OK := by native_decide
/-- Code #2651 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2651_qec :
    ∃ ψ, SS.IsAmplitudes code_2651 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2651 code_2651_ok (by decide) (by decide)

/-- Catalogue code #2652: ((6,2,2)), m=11, a=[1, 2, 2, 4, 4, 7], S=[0, 8]. -/
def code_2652 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2652_ok : code_2652.OK := by native_decide
/-- Code #2652 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2652_qec :
    ∃ ψ, SS.IsAmplitudes code_2652 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2652 code_2652_ok (by decide) (by decide)

/-- Catalogue code #2653: ((6,2,2)), m=11, a=[1, 2, 2, 4, 4, 8], S=[0, 5]. -/
def code_2653 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2653_ok : code_2653.OK := by native_decide
/-- Code #2653 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2653_qec :
    ∃ ψ, SS.IsAmplitudes code_2653 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2653 code_2653_ok (by decide) (by decide)

/-- Catalogue code #2654: ((6,2,2)), m=11, a=[1, 2, 2, 4, 4, 10], S=[0, 3]. -/
def code_2654 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2654_ok : code_2654.OK := by native_decide
/-- Code #2654 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2654_qec :
    ∃ ψ, SS.IsAmplitudes code_2654 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2654 code_2654_ok (by decide) (by decide)

/-- Catalogue code #2655: ((6,2,2)), m=11, a=[1, 2, 2, 4, 4, 10], S=[0, 5]. -/
def code_2655 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2655_ok : code_2655.OK := by native_decide
/-- Code #2655 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2655_qec :
    ∃ ψ, SS.IsAmplitudes code_2655 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2655 code_2655_ok (by decide) (by decide)

/-- Catalogue code #2656: ((6,2,2)), m=11, a=[1, 2, 2, 4, 4, 10], S=[0, 8]. -/
def code_2656 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2656_ok : code_2656.OK := by native_decide
/-- Code #2656 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2656_qec :
    ∃ ψ, SS.IsAmplitudes code_2656 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2656 code_2656_ok (by decide) (by decide)

/-- Catalogue code #2657: ((6,2,2)), m=11, a=[1, 2, 2, 4, 5, 5], S=[0, 3]. -/
def code_2657 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2657_ok : code_2657.OK := by native_decide
/-- Code #2657 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2657_qec :
    ∃ ψ, SS.IsAmplitudes code_2657 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2657 code_2657_ok (by decide) (by decide)

/-- Catalogue code #2658: ((6,2,2)), m=11, a=[1, 2, 2, 4, 5, 6], S=[0, 3]. -/
def code_2658 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2658_ok : code_2658.OK := by native_decide
/-- Code #2658 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2658_qec :
    ∃ ψ, SS.IsAmplitudes code_2658 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2658 code_2658_ok (by decide) (by decide)

/-- Catalogue code #2659: ((6,2,2)), m=11, a=[1, 2, 2, 4, 6, 6], S=[0, 3]. -/
def code_2659 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2659_ok : code_2659.OK := by native_decide
/-- Code #2659 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2659_qec :
    ∃ ψ, SS.IsAmplitudes code_2659 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2659 code_2659_ok (by decide) (by decide)

/-- Catalogue code #2660: ((6,2,2)), m=11, a=[1, 2, 2, 4, 6, 7], S=[0, 3]. -/
def code_2660 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2660_ok : code_2660.OK := by native_decide
/-- Code #2660 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2660_qec :
    ∃ ψ, SS.IsAmplitudes code_2660 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2660 code_2660_ok (by decide) (by decide)

/-- Catalogue code #2661: ((6,2,2)), m=11, a=[1, 2, 2, 4, 6, 7], S=[0, 8]. -/
def code_2661 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2661_ok : code_2661.OK := by native_decide
/-- Code #2661 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2661_qec :
    ∃ ψ, SS.IsAmplitudes code_2661 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2661 code_2661_ok (by decide) (by decide)

/-- Catalogue code #2662: ((6,2,2)), m=11, a=[1, 2, 2, 4, 7, 8], S=[0, 5]. -/
def code_2662 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2662_ok : code_2662.OK := by native_decide
/-- Code #2662 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2662_qec :
    ∃ ψ, SS.IsAmplitudes code_2662 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2662 code_2662_ok (by decide) (by decide)

/-- Catalogue code #2663: ((6,2,2)), m=11, a=[1, 2, 2, 4, 7, 10], S=[0, 8]. -/
def code_2663 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2663_ok : code_2663.OK := by native_decide
/-- Code #2663 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2663_qec :
    ∃ ψ, SS.IsAmplitudes code_2663 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2663 code_2663_ok (by decide) (by decide)

/-- Catalogue code #2664: ((6,2,2)), m=11, a=[1, 2, 2, 4, 8, 8], S=[0, 5]. -/
def code_2664 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2664_ok : code_2664.OK := by native_decide
/-- Code #2664 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2664_qec :
    ∃ ψ, SS.IsAmplitudes code_2664 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2664 code_2664_ok (by decide) (by decide)

/-- Catalogue code #2665: ((6,2,2)), m=11, a=[1, 2, 2, 5, 5, 6], S=[0, 3]. -/
def code_2665 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2665_ok : code_2665.OK := by native_decide
/-- Code #2665 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2665_qec :
    ∃ ψ, SS.IsAmplitudes code_2665 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2665 code_2665_ok (by decide) (by decide)

/-- Catalogue code #2666: ((6,2,2)), m=11, a=[1, 2, 2, 5, 5, 6], S=[0, 7]. -/
def code_2666 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2666_ok : code_2666.OK := by native_decide
/-- Code #2666 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2666_qec :
    ∃ ψ, SS.IsAmplitudes code_2666 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2666 code_2666_ok (by decide) (by decide)

/-- Catalogue code #2667: ((6,2,2)), m=11, a=[1, 2, 2, 5, 5, 7], S=[0, 3]. -/
def code_2667 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2667_ok : code_2667.OK := by native_decide
/-- Code #2667 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2667_qec :
    ∃ ψ, SS.IsAmplitudes code_2667 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2667 code_2667_ok (by decide) (by decide)

/-- Catalogue code #2668: ((6,2,2)), m=11, a=[1, 2, 2, 5, 5, 8], S=[0, 4]. -/
def code_2668 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2668_ok : code_2668.OK := by native_decide
/-- Code #2668 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2668_qec :
    ∃ ψ, SS.IsAmplitudes code_2668 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2668 code_2668_ok (by decide) (by decide)

/-- Catalogue code #2669: ((6,2,2)), m=11, a=[1, 2, 2, 5, 5, 8], S=[0, 7]. -/
def code_2669 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2669_ok : code_2669.OK := by native_decide
/-- Code #2669 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2669_qec :
    ∃ ψ, SS.IsAmplitudes code_2669 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2669 code_2669_ok (by decide) (by decide)

/-- Catalogue code #2670: ((6,2,2)), m=11, a=[1, 2, 2, 5, 5, 9], S=[0, 3]. -/
def code_2670 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2670_ok : code_2670.OK := by native_decide
/-- Code #2670 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2670_qec :
    ∃ ψ, SS.IsAmplitudes code_2670 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2670 code_2670_ok (by decide) (by decide)

/-- Catalogue code #2671: ((6,2,2)), m=11, a=[1, 2, 2, 5, 5, 10], S=[0, 4]. -/
def code_2671 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2671_ok : code_2671.OK := by native_decide
/-- Code #2671 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2671_qec :
    ∃ ψ, SS.IsAmplitudes code_2671 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2671 code_2671_ok (by decide) (by decide)

/-- Catalogue code #2672: ((6,2,2)), m=11, a=[1, 2, 2, 5, 6, 7], S=[0, 8]. -/
def code_2672 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11)]
theorem code_2672_ok : code_2672.OK := by native_decide
/-- Code #2672 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2672_qec :
    ∃ ψ, SS.IsAmplitudes code_2672 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2672 code_2672_ok (by decide) (by decide)

/-- Catalogue code #2673: ((6,2,2)), m=11, a=[1, 2, 2, 5, 6, 8], S=[0, 7]. -/
def code_2673 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2673_ok : code_2673.OK := by native_decide
/-- Code #2673 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2673_qec :
    ∃ ψ, SS.IsAmplitudes code_2673 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2673 code_2673_ok (by decide) (by decide)

/-- Catalogue code #2674: ((6,2,2)), m=11, a=[1, 2, 2, 5, 6, 9], S=[0, 4]. -/
def code_2674 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2674_ok : code_2674.OK := by native_decide
/-- Code #2674 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2674_qec :
    ∃ ψ, SS.IsAmplitudes code_2674 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2674 code_2674_ok (by decide) (by decide)

/-- Catalogue code #2675: ((6,2,2)), m=11, a=[1, 2, 2, 5, 6, 10], S=[0, 7]. -/
def code_2675 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2675_ok : code_2675.OK := by native_decide
/-- Code #2675 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2675_qec :
    ∃ ψ, SS.IsAmplitudes code_2675 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2675 code_2675_ok (by decide) (by decide)

/-- Catalogue code #2676: ((6,2,2)), m=11, a=[1, 2, 2, 5, 7, 7], S=[0, 3]. -/
def code_2676 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2676_ok : code_2676.OK := by native_decide
/-- Code #2676 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2676_qec :
    ∃ ψ, SS.IsAmplitudes code_2676 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2676 code_2676_ok (by decide) (by decide)

/-- Catalogue code #2677: ((6,2,2)), m=11, a=[1, 2, 2, 5, 7, 7], S=[0, 8]. -/
def code_2677 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2677_ok : code_2677.OK := by native_decide
/-- Code #2677 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2677_qec :
    ∃ ψ, SS.IsAmplitudes code_2677 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2677 code_2677_ok (by decide) (by decide)

/-- Catalogue code #2678: ((6,2,2)), m=11, a=[1, 2, 2, 5, 7, 10], S=[0, 8]. -/
def code_2678 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2678_ok : code_2678.OK := by native_decide
/-- Code #2678 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2678_qec :
    ∃ ψ, SS.IsAmplitudes code_2678 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2678 code_2678_ok (by decide) (by decide)

/-- Catalogue code #2679: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 6], S=[0, 4]. -/
def code_2679 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2679_ok : code_2679.OK := by native_decide
/-- Code #2679 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2679_qec :
    ∃ ψ, SS.IsAmplitudes code_2679 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2679 code_2679_ok (by decide) (by decide)

/-- Catalogue code #2680: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 6], S=[0, 8]. -/
def code_2680 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2680_ok : code_2680.OK := by native_decide
/-- Code #2680 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2680_qec :
    ∃ ψ, SS.IsAmplitudes code_2680 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2680 code_2680_ok (by decide) (by decide)

/-- Catalogue code #2681: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 7], S=[0, 8]. -/
def code_2681 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2681_ok : code_2681.OK := by native_decide
/-- Code #2681 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2681_qec :
    ∃ ψ, SS.IsAmplitudes code_2681 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2681 code_2681_ok (by decide) (by decide)

/-- Catalogue code #2682: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 8], S=[0, 4]. -/
def code_2682 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2682_ok : code_2682.OK := by native_decide
/-- Code #2682 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2682_qec :
    ∃ ψ, SS.IsAmplitudes code_2682 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2682 code_2682_ok (by decide) (by decide)

/-- Catalogue code #2683: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 8], S=[0, 7]. -/
def code_2683 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2683_ok : code_2683.OK := by native_decide
/-- Code #2683 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2683_qec :
    ∃ ψ, SS.IsAmplitudes code_2683 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2683 code_2683_ok (by decide) (by decide)

/-- Catalogue code #2684: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 9], S=[0, 3]. -/
def code_2684 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2684_ok : code_2684.OK := by native_decide
/-- Code #2684 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2684_qec :
    ∃ ψ, SS.IsAmplitudes code_2684 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2684 code_2684_ok (by decide) (by decide)

/-- Catalogue code #2685: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 10], S=[0, 3]. -/
def code_2685 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2685_ok : code_2685.OK := by native_decide
/-- Code #2685 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2685_qec :
    ∃ ψ, SS.IsAmplitudes code_2685 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2685 code_2685_ok (by decide) (by decide)

/-- Catalogue code #2686: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 10], S=[0, 4]. -/
def code_2686 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2686_ok : code_2686.OK := by native_decide
/-- Code #2686 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2686_qec :
    ∃ ψ, SS.IsAmplitudes code_2686 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2686 code_2686_ok (by decide) (by decide)

/-- Catalogue code #2687: ((6,2,2)), m=11, a=[1, 2, 2, 6, 6, 10], S=[0, 7]. -/
def code_2687 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2687_ok : code_2687.OK := by native_decide
/-- Code #2687 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2687_qec :
    ∃ ψ, SS.IsAmplitudes code_2687 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2687 code_2687_ok (by decide) (by decide)

/-- Catalogue code #2688: ((6,2,2)), m=11, a=[1, 2, 2, 6, 7, 9], S=[0, 8]. -/
def code_2688 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2688_ok : code_2688.OK := by native_decide
/-- Code #2688 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2688_qec :
    ∃ ψ, SS.IsAmplitudes code_2688 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2688 code_2688_ok (by decide) (by decide)

/-- Catalogue code #2689: ((6,2,2)), m=11, a=[1, 2, 2, 6, 8, 8], S=[0, 4]. -/
def code_2689 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2689_ok : code_2689.OK := by native_decide
/-- Code #2689 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2689_qec :
    ∃ ψ, SS.IsAmplitudes code_2689 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2689 code_2689_ok (by decide) (by decide)

/-- Catalogue code #2690: ((6,2,2)), m=11, a=[1, 2, 2, 6, 8, 8], S=[0, 7]. -/
def code_2690 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2690_ok : code_2690.OK := by native_decide
/-- Code #2690 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2690_qec :
    ∃ ψ, SS.IsAmplitudes code_2690 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2690 code_2690_ok (by decide) (by decide)

/-- Catalogue code #2691: ((6,2,2)), m=11, a=[1, 2, 2, 6, 8, 10], S=[0, 4]. -/
def code_2691 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2691_ok : code_2691.OK := by native_decide
/-- Code #2691 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2691_qec :
    ∃ ψ, SS.IsAmplitudes code_2691 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2691 code_2691_ok (by decide) (by decide)

/-- Catalogue code #2692: ((6,2,2)), m=11, a=[1, 2, 2, 6, 9, 10], S=[0, 3]. -/
def code_2692 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2692_ok : code_2692.OK := by native_decide
/-- Code #2692 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2692_qec :
    ∃ ψ, SS.IsAmplitudes code_2692 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2692 code_2692_ok (by decide) (by decide)

/-- Catalogue code #2693: ((6,2,2)), m=11, a=[1, 2, 2, 6, 10, 10], S=[0, 4]. -/
def code_2693 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2693_ok : code_2693.OK := by native_decide
/-- Code #2693 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2693_qec :
    ∃ ψ, SS.IsAmplitudes code_2693 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2693 code_2693_ok (by decide) (by decide)

/-- Catalogue code #2694: ((6,2,2)), m=11, a=[1, 2, 2, 7, 7, 7], S=[0, 3]. -/
def code_2694 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2694_ok : code_2694.OK := by native_decide
/-- Code #2694 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2694_qec :
    ∃ ψ, SS.IsAmplitudes code_2694 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2694 code_2694_ok (by decide) (by decide)

/-- Catalogue code #2695: ((6,2,2)), m=11, a=[1, 2, 2, 7, 7, 7], S=[0, 5]. -/
def code_2695 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2695_ok : code_2695.OK := by native_decide
/-- Code #2695 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2695_qec :
    ∃ ψ, SS.IsAmplitudes code_2695 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2695 code_2695_ok (by decide) (by decide)

/-- Catalogue code #2696: ((6,2,2)), m=11, a=[1, 2, 2, 7, 7, 10], S=[0, 3]. -/
def code_2696 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2696_ok : code_2696.OK := by native_decide
/-- Code #2696 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2696_qec :
    ∃ ψ, SS.IsAmplitudes code_2696 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2696 code_2696_ok (by decide) (by decide)

/-- Catalogue code #2697: ((6,2,2)), m=11, a=[1, 2, 2, 7, 8, 8], S=[0, 5]. -/
def code_2697 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2697_ok : code_2697.OK := by native_decide
/-- Code #2697 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2697_qec :
    ∃ ψ, SS.IsAmplitudes code_2697 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2697 code_2697_ok (by decide) (by decide)

/-- Catalogue code #2698: ((6,2,2)), m=11, a=[1, 2, 2, 7, 8, 10], S=[0, 5]. -/
def code_2698 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2698_ok : code_2698.OK := by native_decide
/-- Code #2698 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2698_qec :
    ∃ ψ, SS.IsAmplitudes code_2698 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2698 code_2698_ok (by decide) (by decide)

/-- Catalogue code #2699: ((6,2,2)), m=11, a=[1, 2, 2, 7, 10, 10], S=[0, 5]. -/
def code_2699 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2699_ok : code_2699.OK := by native_decide
/-- Code #2699 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2699_qec :
    ∃ ψ, SS.IsAmplitudes code_2699 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2699 code_2699_ok (by decide) (by decide)

/-- Catalogue code #2700: ((6,2,2)), m=11, a=[1, 2, 2, 8, 8, 10], S=[0, 4]. -/
def code_2700 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_2700_ok : code_2700.OK := by native_decide
/-- Code #2700 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2700_qec :
    ∃ ψ, SS.IsAmplitudes code_2700 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2700 code_2700_ok (by decide) (by decide)

/-- Catalogue code #2701: ((6,2,2)), m=11, a=[1, 2, 2, 8, 8, 10], S=[0, 5]. -/
def code_2701 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2701_ok : code_2701.OK := by native_decide
/-- Code #2701 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2701_qec :
    ∃ ψ, SS.IsAmplitudes code_2701 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2701 code_2701_ok (by decide) (by decide)

/-- Catalogue code #2702: ((6,2,2)), m=11, a=[1, 2, 2, 8, 9, 10], S=[0, 5]. -/
def code_2702 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2702_ok : code_2702.OK := by native_decide
/-- Code #2702 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2702_qec :
    ∃ ψ, SS.IsAmplitudes code_2702 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2702 code_2702_ok (by decide) (by decide)

/-- Catalogue code #2703: ((6,2,2)), m=11, a=[1, 2, 3, 3, 3, 4], S=[0, 6]. -/
def code_2703 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2703_ok : code_2703.OK := by native_decide
/-- Code #2703 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2703_qec :
    ∃ ψ, SS.IsAmplitudes code_2703 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2703 code_2703_ok (by decide) (by decide)

/-- Catalogue code #2704: ((6,2,2)), m=11, a=[1, 2, 3, 3, 3, 5], S=[0, 7]. -/
def code_2704 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2704_ok : code_2704.OK := by native_decide
/-- Code #2704 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2704_qec :
    ∃ ψ, SS.IsAmplitudes code_2704 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2704 code_2704_ok (by decide) (by decide)

/-- Catalogue code #2705: ((6,2,2)), m=11, a=[1, 2, 3, 3, 4, 4], S=[0, 5]. -/
def code_2705 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2705_ok : code_2705.OK := by native_decide
/-- Code #2705 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2705_qec :
    ∃ ψ, SS.IsAmplitudes code_2705 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2705 code_2705_ok (by decide) (by decide)

/-- Catalogue code #2706: ((6,2,2)), m=11, a=[1, 2, 3, 3, 4, 9], S=[0, 5]. -/
def code_2706 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2706_ok : code_2706.OK := by native_decide
/-- Code #2706 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2706_qec :
    ∃ ψ, SS.IsAmplitudes code_2706 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2706 code_2706_ok (by decide) (by decide)

/-- Catalogue code #2707: ((6,2,2)), m=11, a=[1, 2, 3, 3, 4, 9], S=[0, 6]. -/
def code_2707 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2707_ok : code_2707.OK := by native_decide
/-- Code #2707 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2707_qec :
    ∃ ψ, SS.IsAmplitudes code_2707 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2707 code_2707_ok (by decide) (by decide)

/-- Catalogue code #2708: ((6,2,2)), m=11, a=[1, 2, 3, 3, 4, 10], S=[0, 5]. -/
def code_2708 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2708_ok : code_2708.OK := by native_decide
/-- Code #2708 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2708_qec :
    ∃ ψ, SS.IsAmplitudes code_2708 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2708 code_2708_ok (by decide) (by decide)

/-- Catalogue code #2709: ((6,2,2)), m=11, a=[1, 2, 3, 3, 4, 10], S=[0, 6]. -/
def code_2709 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2709_ok : code_2709.OK := by native_decide
/-- Code #2709 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2709_qec :
    ∃ ψ, SS.IsAmplitudes code_2709 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2709 code_2709_ok (by decide) (by decide)

/-- Catalogue code #2710: ((6,2,2)), m=11, a=[1, 2, 3, 3, 5, 5], S=[0, 4]. -/
def code_2710 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2710_ok : code_2710.OK := by native_decide
/-- Code #2710 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2710_qec :
    ∃ ψ, SS.IsAmplitudes code_2710 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2710 code_2710_ok (by decide) (by decide)

/-- Catalogue code #2711: ((6,2,2)), m=11, a=[1, 2, 3, 3, 5, 6], S=[0, 7]. -/
def code_2711 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2711_ok : code_2711.OK := by native_decide
/-- Code #2711 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2711_qec :
    ∃ ψ, SS.IsAmplitudes code_2711 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2711 code_2711_ok (by decide) (by decide)

/-- Catalogue code #2712: ((6,2,2)), m=11, a=[1, 2, 3, 3, 5, 9], S=[0, 7]. -/
def code_2712 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11)]
theorem code_2712_ok : code_2712.OK := by native_decide
/-- Code #2712 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2712_qec :
    ∃ ψ, SS.IsAmplitudes code_2712 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2712 code_2712_ok (by decide) (by decide)

/-- Catalogue code #2713: ((6,2,2)), m=11, a=[1, 2, 3, 3, 5, 10], S=[0, 4]. -/
def code_2713 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2713_ok : code_2713.OK := by native_decide
/-- Code #2713 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2713_qec :
    ∃ ψ, SS.IsAmplitudes code_2713 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2713 code_2713_ok (by decide) (by decide)

/-- Catalogue code #2714: ((6,2,2)), m=11, a=[1, 2, 3, 3, 6, 9], S=[0, 4]. -/
def code_2714 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2714_ok : code_2714.OK := by native_decide
/-- Code #2714 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2714_qec :
    ∃ ψ, SS.IsAmplitudes code_2714 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2714 code_2714_ok (by decide) (by decide)

/-- Catalogue code #2715: ((6,2,2)), m=11, a=[1, 2, 3, 3, 6, 9], S=[0, 7]. -/
def code_2715 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2715_ok : code_2715.OK := by native_decide
/-- Code #2715 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2715_qec :
    ∃ ψ, SS.IsAmplitudes code_2715 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2715 code_2715_ok (by decide) (by decide)

/-- Catalogue code #2716: ((6,2,2)), m=11, a=[1, 2, 3, 3, 6, 10], S=[0, 7]. -/
def code_2716 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2716_ok : code_2716.OK := by native_decide
/-- Code #2716 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2716_qec :
    ∃ ψ, SS.IsAmplitudes code_2716 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2716 code_2716_ok (by decide) (by decide)

/-- Catalogue code #2717: ((6,2,2)), m=11, a=[1, 2, 3, 3, 7, 7], S=[0, 6]. -/
def code_2717 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2717_ok : code_2717.OK := by native_decide
/-- Code #2717 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2717_qec :
    ∃ ψ, SS.IsAmplitudes code_2717 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2717 code_2717_ok (by decide) (by decide)

/-- Catalogue code #2718: ((6,2,2)), m=11, a=[1, 2, 3, 3, 7, 9], S=[0, 5]. -/
def code_2718 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2718_ok : code_2718.OK := by native_decide
/-- Code #2718 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2718_qec :
    ∃ ψ, SS.IsAmplitudes code_2718 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2718 code_2718_ok (by decide) (by decide)

/-- Catalogue code #2719: ((6,2,2)), m=11, a=[1, 2, 3, 3, 7, 10], S=[0, 6]. -/
def code_2719 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2719_ok : code_2719.OK := by native_decide
/-- Code #2719 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2719_qec :
    ∃ ψ, SS.IsAmplitudes code_2719 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2719 code_2719_ok (by decide) (by decide)

/-- Catalogue code #2720: ((6,2,2)), m=11, a=[1, 2, 3, 4, 4, 7], S=[0, 5]. -/
def code_2720 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2720_ok : code_2720.OK := by native_decide
/-- Code #2720 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2720_qec :
    ∃ ψ, SS.IsAmplitudes code_2720 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2720 code_2720_ok (by decide) (by decide)

/-- Catalogue code #2721: ((6,2,2)), m=11, a=[1, 2, 3, 4, 4, 8], S=[0, 5]. -/
def code_2721 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2721_ok : code_2721.OK := by native_decide
/-- Code #2721 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2721_qec :
    ∃ ψ, SS.IsAmplitudes code_2721 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2721 code_2721_ok (by decide) (by decide)

/-- Catalogue code #2722: ((6,2,2)), m=11, a=[1, 2, 3, 4, 4, 8], S=[0, 6]. -/
def code_2722 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2722_ok : code_2722.OK := by native_decide
/-- Code #2722 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2722_qec :
    ∃ ψ, SS.IsAmplitudes code_2722 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2722 code_2722_ok (by decide) (by decide)

/-- Catalogue code #2723: ((6,2,2)), m=11, a=[1, 2, 3, 4, 4, 9], S=[0, 6]. -/
def code_2723 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2723_ok : code_2723.OK := by native_decide
/-- Code #2723 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2723_qec :
    ∃ ψ, SS.IsAmplitudes code_2723 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2723 code_2723_ok (by decide) (by decide)

/-- Catalogue code #2724: ((6,2,2)), m=11, a=[1, 2, 3, 4, 4, 10], S=[0, 5]. -/
def code_2724 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2724_ok : code_2724.OK := by native_decide
/-- Code #2724 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2724_qec :
    ∃ ψ, SS.IsAmplitudes code_2724 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2724 code_2724_ok (by decide) (by decide)

/-- Catalogue code #2725: ((6,2,2)), m=11, a=[1, 2, 3, 4, 7, 8], S=[0, 5]. -/
def code_2725 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2725_ok : code_2725.OK := by native_decide
/-- Code #2725 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2725_qec :
    ∃ ψ, SS.IsAmplitudes code_2725 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2725 code_2725_ok (by decide) (by decide)

/-- Catalogue code #2726: ((6,2,2)), m=11, a=[1, 2, 3, 4, 7, 10], S=[0, 6]. -/
def code_2726 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2726_ok : code_2726.OK := by native_decide
/-- Code #2726 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2726_qec :
    ∃ ψ, SS.IsAmplitudes code_2726 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2726 code_2726_ok (by decide) (by decide)

/-- Catalogue code #2727: ((6,2,2)), m=11, a=[1, 2, 3, 4, 8, 8], S=[0, 5]. -/
def code_2727 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2727_ok : code_2727.OK := by native_decide
/-- Code #2727 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2727_qec :
    ∃ ψ, SS.IsAmplitudes code_2727 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2727 code_2727_ok (by decide) (by decide)

/-- Catalogue code #2728: ((6,2,2)), m=11, a=[1, 2, 3, 4, 8, 9], S=[0, 6]. -/
def code_2728 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2728_ok : code_2728.OK := by native_decide
/-- Code #2728 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2728_qec :
    ∃ ψ, SS.IsAmplitudes code_2728 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2728 code_2728_ok (by decide) (by decide)

/-- Catalogue code #2729: ((6,2,2)), m=11, a=[1, 2, 3, 5, 5, 8], S=[0, 4]. -/
def code_2729 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2729_ok : code_2729.OK := by native_decide
/-- Code #2729 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2729_qec :
    ∃ ψ, SS.IsAmplitudes code_2729 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2729 code_2729_ok (by decide) (by decide)

/-- Catalogue code #2730: ((6,2,2)), m=11, a=[1, 2, 3, 5, 5, 9], S=[0, 4]. -/
def code_2730 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2730_ok : code_2730.OK := by native_decide
/-- Code #2730 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2730_qec :
    ∃ ψ, SS.IsAmplitudes code_2730 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2730 code_2730_ok (by decide) (by decide)

/-- Catalogue code #2731: ((6,2,2)), m=11, a=[1, 2, 3, 5, 5, 9], S=[0, 7]. -/
def code_2731 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2731_ok : code_2731.OK := by native_decide
/-- Code #2731 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2731_qec :
    ∃ ψ, SS.IsAmplitudes code_2731 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2731 code_2731_ok (by decide) (by decide)

/-- Catalogue code #2732: ((6,2,2)), m=11, a=[1, 2, 3, 5, 6, 8], S=[0, 7]. -/
def code_2732 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2732_ok : code_2732.OK := by native_decide
/-- Code #2732 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2732_qec :
    ∃ ψ, SS.IsAmplitudes code_2732 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2732 code_2732_ok (by decide) (by decide)

/-- Catalogue code #2733: ((6,2,2)), m=11, a=[1, 2, 3, 5, 6, 9], S=[0, 7]. -/
def code_2733 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2733_ok : code_2733.OK := by native_decide
/-- Code #2733 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2733_qec :
    ∃ ψ, SS.IsAmplitudes code_2733 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2733 code_2733_ok (by decide) (by decide)

/-- Catalogue code #2734: ((6,2,2)), m=11, a=[1, 2, 3, 5, 6, 10], S=[0, 7]. -/
def code_2734 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2734_ok : code_2734.OK := by native_decide
/-- Code #2734 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2734_qec :
    ∃ ψ, SS.IsAmplitudes code_2734 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2734 code_2734_ok (by decide) (by decide)

/-- Catalogue code #2735: ((6,2,2)), m=11, a=[1, 2, 3, 5, 8, 8], S=[0, 4]. -/
def code_2735 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11)]
theorem code_2735_ok : code_2735.OK := by native_decide
/-- Code #2735 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2735_qec :
    ∃ ψ, SS.IsAmplitudes code_2735 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2735 code_2735_ok (by decide) (by decide)

/-- Catalogue code #2736: ((6,2,2)), m=11, a=[1, 2, 3, 5, 8, 9], S=[0, 4]. -/
def code_2736 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2736_ok : code_2736.OK := by native_decide
/-- Code #2736 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2736_qec :
    ∃ ψ, SS.IsAmplitudes code_2736 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2736 code_2736_ok (by decide) (by decide)

/-- Catalogue code #2737: ((6,2,2)), m=11, a=[1, 2, 3, 5, 8, 9], S=[0, 7]. -/
def code_2737 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2737_ok : code_2737.OK := by native_decide
/-- Code #2737 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2737_qec :
    ∃ ψ, SS.IsAmplitudes code_2737 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2737 code_2737_ok (by decide) (by decide)

/-- Catalogue code #2738: ((6,2,2)), m=11, a=[1, 2, 3, 5, 8, 10], S=[0, 4]. -/
def code_2738 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2738_ok : code_2738.OK := by native_decide
/-- Code #2738 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2738_qec :
    ∃ ψ, SS.IsAmplitudes code_2738 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2738 code_2738_ok (by decide) (by decide)

/-- Catalogue code #2739: ((6,2,2)), m=11, a=[1, 2, 3, 5, 9, 9], S=[0, 4]. -/
def code_2739 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2739_ok : code_2739.OK := by native_decide
/-- Code #2739 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2739_qec :
    ∃ ψ, SS.IsAmplitudes code_2739 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2739 code_2739_ok (by decide) (by decide)

/-- Catalogue code #2740: ((6,2,2)), m=11, a=[1, 2, 3, 5, 9, 10], S=[0, 4]. -/
def code_2740 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2740_ok : code_2740.OK := by native_decide
/-- Code #2740 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2740_qec :
    ∃ ψ, SS.IsAmplitudes code_2740 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2740 code_2740_ok (by decide) (by decide)

/-- Catalogue code #2741: ((6,2,2)), m=11, a=[1, 2, 3, 6, 6, 6], S=[0, 4]. -/
def code_2741 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2741_ok : code_2741.OK := by native_decide
/-- Code #2741 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2741_qec :
    ∃ ψ, SS.IsAmplitudes code_2741 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2741 code_2741_ok (by decide) (by decide)

/-- Catalogue code #2742: ((6,2,2)), m=11, a=[1, 2, 3, 6, 6, 9], S=[0, 4]. -/
def code_2742 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2742_ok : code_2742.OK := by native_decide
/-- Code #2742 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2742_qec :
    ∃ ψ, SS.IsAmplitudes code_2742 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2742 code_2742_ok (by decide) (by decide)

/-- Catalogue code #2743: ((6,2,2)), m=11, a=[1, 2, 3, 6, 6, 10], S=[0, 4]. -/
def code_2743 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2743_ok : code_2743.OK := by native_decide
/-- Code #2743 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2743_qec :
    ∃ ψ, SS.IsAmplitudes code_2743 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2743 code_2743_ok (by decide) (by decide)

/-- Catalogue code #2744: ((6,2,2)), m=11, a=[1, 2, 3, 6, 8, 8], S=[0, 7]. -/
def code_2744 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_2744_ok : code_2744.OK := by native_decide
/-- Code #2744 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2744_qec :
    ∃ ψ, SS.IsAmplitudes code_2744 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2744 code_2744_ok (by decide) (by decide)

/-- Catalogue code #2745: ((6,2,2)), m=11, a=[1, 2, 3, 6, 8, 10], S=[0, 4]. -/
def code_2745 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2745_ok : code_2745.OK := by native_decide
/-- Code #2745 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2745_qec :
    ∃ ψ, SS.IsAmplitudes code_2745 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2745 code_2745_ok (by decide) (by decide)

/-- Catalogue code #2746: ((6,2,2)), m=11, a=[1, 2, 3, 6, 9, 10], S=[0, 4]. -/
def code_2746 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2746_ok : code_2746.OK := by native_decide
/-- Code #2746 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2746_qec :
    ∃ ψ, SS.IsAmplitudes code_2746 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2746 code_2746_ok (by decide) (by decide)

/-- Catalogue code #2747: ((6,2,2)), m=11, a=[1, 2, 3, 7, 7, 8], S=[0, 5]. -/
def code_2747 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2747_ok : code_2747.OK := by native_decide
/-- Code #2747 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2747_qec :
    ∃ ψ, SS.IsAmplitudes code_2747 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2747 code_2747_ok (by decide) (by decide)

/-- Catalogue code #2748: ((6,2,2)), m=11, a=[1, 2, 3, 7, 7, 10], S=[0, 5]. -/
def code_2748 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2748_ok : code_2748.OK := by native_decide
/-- Code #2748 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2748_qec :
    ∃ ψ, SS.IsAmplitudes code_2748 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2748 code_2748_ok (by decide) (by decide)

/-- Catalogue code #2749: ((6,2,2)), m=11, a=[1, 2, 3, 7, 8, 9], S=[0, 6]. -/
def code_2749 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2749_ok : code_2749.OK := by native_decide
/-- Code #2749 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2749_qec :
    ∃ ψ, SS.IsAmplitudes code_2749 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2749 code_2749_ok (by decide) (by decide)

/-- Catalogue code #2750: ((6,2,2)), m=11, a=[1, 2, 3, 7, 8, 10], S=[0, 5]. -/
def code_2750 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2750_ok : code_2750.OK := by native_decide
/-- Code #2750 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2750_qec :
    ∃ ψ, SS.IsAmplitudes code_2750 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2750 code_2750_ok (by decide) (by decide)

/-- Catalogue code #2751: ((6,2,2)), m=11, a=[1, 2, 3, 7, 8, 10], S=[0, 6]. -/
def code_2751 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2751_ok : code_2751.OK := by native_decide
/-- Code #2751 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2751_qec :
    ∃ ψ, SS.IsAmplitudes code_2751 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2751 code_2751_ok (by decide) (by decide)

/-- Catalogue code #2752: ((6,2,2)), m=11, a=[1, 2, 3, 7, 9, 9], S=[0, 6]. -/
def code_2752 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2752_ok : code_2752.OK := by native_decide
/-- Code #2752 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2752_qec :
    ∃ ψ, SS.IsAmplitudes code_2752 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2752 code_2752_ok (by decide) (by decide)

/-- Catalogue code #2753: ((6,2,2)), m=11, a=[1, 2, 3, 7, 9, 10], S=[0, 5]. -/
def code_2753 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2753_ok : code_2753.OK := by native_decide
/-- Code #2753 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2753_qec :
    ∃ ψ, SS.IsAmplitudes code_2753 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2753 code_2753_ok (by decide) (by decide)

/-- Catalogue code #2754: ((6,2,2)), m=11, a=[1, 2, 3, 8, 8, 10], S=[0, 4]. -/
def code_2754 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2754_ok : code_2754.OK := by native_decide
/-- Code #2754 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2754_qec :
    ∃ ψ, SS.IsAmplitudes code_2754 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2754 code_2754_ok (by decide) (by decide)

/-- Catalogue code #2755: ((6,2,2)), m=11, a=[1, 2, 3, 8, 8, 10], S=[0, 6]. -/
def code_2755 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2755_ok : code_2755.OK := by native_decide
/-- Code #2755 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2755_qec :
    ∃ ψ, SS.IsAmplitudes code_2755 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2755 code_2755_ok (by decide) (by decide)

/-- Catalogue code #2756: ((6,2,2)), m=11, a=[1, 2, 3, 8, 9, 9], S=[0, 4]. -/
def code_2756 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2756_ok : code_2756.OK := by native_decide
/-- Code #2756 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2756_qec :
    ∃ ψ, SS.IsAmplitudes code_2756 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2756 code_2756_ok (by decide) (by decide)

/-- Catalogue code #2757: ((6,2,2)), m=11, a=[1, 2, 3, 8, 9, 9], S=[0, 5]. -/
def code_2757 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2757_ok : code_2757.OK := by native_decide
/-- Code #2757 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2757_qec :
    ∃ ψ, SS.IsAmplitudes code_2757 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2757 code_2757_ok (by decide) (by decide)

/-- Catalogue code #2758: ((6,2,2)), m=11, a=[1, 2, 3, 8, 9, 9], S=[0, 6]. -/
def code_2758 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2758_ok : code_2758.OK := by native_decide
/-- Code #2758 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2758_qec :
    ∃ ψ, SS.IsAmplitudes code_2758 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2758 code_2758_ok (by decide) (by decide)

/-- Catalogue code #2759: ((6,2,2)), m=11, a=[1, 2, 3, 8, 10, 10], S=[0, 6]. -/
def code_2759 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2759_ok : code_2759.OK := by native_decide
/-- Code #2759 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2759_qec :
    ∃ ψ, SS.IsAmplitudes code_2759 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2759 code_2759_ok (by decide) (by decide)

/-- Catalogue code #2760: ((6,2,2)), m=11, a=[1, 2, 3, 9, 9, 10], S=[0, 6]. -/
def code_2760 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2760_ok : code_2760.OK := by native_decide
/-- Code #2760 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2760_qec :
    ∃ ψ, SS.IsAmplitudes code_2760 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2760 code_2760_ok (by decide) (by decide)

/-- Catalogue code #2761: ((6,2,2)), m=11, a=[1, 2, 4, 4, 4, 5], S=[0, 3]. -/
def code_2761 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2761_ok : code_2761.OK := by native_decide
/-- Code #2761 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2761_qec :
    ∃ ψ, SS.IsAmplitudes code_2761 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2761 code_2761_ok (by decide) (by decide)

/-- Catalogue code #2762: ((6,2,2)), m=11, a=[1, 2, 4, 4, 4, 8], S=[0, 6]. -/
def code_2762 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2762_ok : code_2762.OK := by native_decide
/-- Code #2762 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2762_qec :
    ∃ ψ, SS.IsAmplitudes code_2762 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2762 code_2762_ok (by decide) (by decide)

/-- Catalogue code #2763: ((6,2,2)), m=11, a=[1, 2, 4, 4, 4, 9], S=[0, 3]. -/
def code_2763 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2763_ok : code_2763.OK := by native_decide
/-- Code #2763 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2763_qec :
    ∃ ψ, SS.IsAmplitudes code_2763 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2763 code_2763_ok (by decide) (by decide)

/-- Catalogue code #2764: ((6,2,2)), m=11, a=[1, 2, 4, 4, 4, 10], S=[0, 5]. -/
def code_2764 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2764_ok : code_2764.OK := by native_decide
/-- Code #2764 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2764_qec :
    ∃ ψ, SS.IsAmplitudes code_2764 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2764 code_2764_ok (by decide) (by decide)

/-- Catalogue code #2765: ((6,2,2)), m=11, a=[1, 2, 4, 4, 5, 5], S=[0, 3]. -/
def code_2765 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2765_ok : code_2765.OK := by native_decide
/-- Code #2765 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2765_qec :
    ∃ ψ, SS.IsAmplitudes code_2765 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2765 code_2765_ok (by decide) (by decide)

/-- Catalogue code #2766: ((6,2,2)), m=11, a=[1, 2, 4, 4, 5, 5], S=[0, 8]. -/
def code_2766 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2766_ok : code_2766.OK := by native_decide
/-- Code #2766 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2766_qec :
    ∃ ψ, SS.IsAmplitudes code_2766 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2766 code_2766_ok (by decide) (by decide)

/-- Catalogue code #2767: ((6,2,2)), m=11, a=[1, 2, 4, 4, 5, 6], S=[0, 3]. -/
def code_2767 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_2767_ok : code_2767.OK := by native_decide
/-- Code #2767 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2767_qec :
    ∃ ψ, SS.IsAmplitudes code_2767 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2767 code_2767_ok (by decide) (by decide)

/-- Catalogue code #2768: ((6,2,2)), m=11, a=[1, 2, 4, 4, 5, 6], S=[0, 8]. -/
def code_2768 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2768_ok : code_2768.OK := by native_decide
/-- Code #2768 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2768_qec :
    ∃ ψ, SS.IsAmplitudes code_2768 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2768 code_2768_ok (by decide) (by decide)

/-- Catalogue code #2769: ((6,2,2)), m=11, a=[1, 2, 4, 4, 5, 9], S=[0, 8]. -/
def code_2769 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2769_ok : code_2769.OK := by native_decide
/-- Code #2769 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2769_qec :
    ∃ ψ, SS.IsAmplitudes code_2769 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2769 code_2769_ok (by decide) (by decide)

/-- Catalogue code #2770: ((6,2,2)), m=11, a=[1, 2, 4, 4, 5, 10], S=[0, 3]. -/
def code_2770 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2770_ok : code_2770.OK := by native_decide
/-- Code #2770 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2770_qec :
    ∃ ψ, SS.IsAmplitudes code_2770 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2770 code_2770_ok (by decide) (by decide)

/-- Catalogue code #2771: ((6,2,2)), m=11, a=[1, 2, 4, 4, 6, 6], S=[0, 3]. -/
def code_2771 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2771_ok : code_2771.OK := by native_decide
/-- Code #2771 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2771_qec :
    ∃ ψ, SS.IsAmplitudes code_2771 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2771 code_2771_ok (by decide) (by decide)

/-- Catalogue code #2772: ((6,2,2)), m=11, a=[1, 2, 4, 4, 6, 6], S=[0, 8]. -/
def code_2772 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2772_ok : code_2772.OK := by native_decide
/-- Code #2772 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2772_qec :
    ∃ ψ, SS.IsAmplitudes code_2772 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2772 code_2772_ok (by decide) (by decide)

/-- Catalogue code #2773: ((6,2,2)), m=11, a=[1, 2, 4, 4, 6, 7], S=[0, 8]. -/
def code_2773 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2773_ok : code_2773.OK := by native_decide
/-- Code #2773 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2773_qec :
    ∃ ψ, SS.IsAmplitudes code_2773 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2773 code_2773_ok (by decide) (by decide)

/-- Catalogue code #2774: ((6,2,2)), m=11, a=[1, 2, 4, 4, 6, 9], S=[0, 3]. -/
def code_2774 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2774_ok : code_2774.OK := by native_decide
/-- Code #2774 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2774_qec :
    ∃ ψ, SS.IsAmplitudes code_2774 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2774 code_2774_ok (by decide) (by decide)

/-- Catalogue code #2775: ((6,2,2)), m=11, a=[1, 2, 4, 4, 6, 10], S=[0, 3]. -/
def code_2775 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2775_ok : code_2775.OK := by native_decide
/-- Code #2775 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2775_qec :
    ∃ ψ, SS.IsAmplitudes code_2775 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2775 code_2775_ok (by decide) (by decide)

/-- Catalogue code #2776: ((6,2,2)), m=11, a=[1, 2, 4, 4, 6, 10], S=[0, 8]. -/
def code_2776 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2776_ok : code_2776.OK := by native_decide
/-- Code #2776 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2776_qec :
    ∃ ψ, SS.IsAmplitudes code_2776 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2776 code_2776_ok (by decide) (by decide)

/-- Catalogue code #2777: ((6,2,2)), m=11, a=[1, 2, 4, 4, 7, 9], S=[0, 6]. -/
def code_2777 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2777_ok : code_2777.OK := by native_decide
/-- Code #2777 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2777_qec :
    ∃ ψ, SS.IsAmplitudes code_2777 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2777 code_2777_ok (by decide) (by decide)

/-- Catalogue code #2778: ((6,2,2)), m=11, a=[1, 2, 4, 4, 7, 10], S=[0, 8]. -/
def code_2778 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2778_ok : code_2778.OK := by native_decide
/-- Code #2778 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2778_qec :
    ∃ ψ, SS.IsAmplitudes code_2778 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2778 code_2778_ok (by decide) (by decide)

/-- Catalogue code #2779: ((6,2,2)), m=11, a=[1, 2, 4, 4, 8, 8], S=[0, 6]. -/
def code_2779 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2779_ok : code_2779.OK := by native_decide
/-- Code #2779 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2779_qec :
    ∃ ψ, SS.IsAmplitudes code_2779 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2779 code_2779_ok (by decide) (by decide)

/-- Catalogue code #2780: ((6,2,2)), m=11, a=[1, 2, 4, 4, 8, 10], S=[0, 6]. -/
def code_2780 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2780_ok : code_2780.OK := by native_decide
/-- Code #2780 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2780_qec :
    ∃ ψ, SS.IsAmplitudes code_2780 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2780 code_2780_ok (by decide) (by decide)

/-- Catalogue code #2781: ((6,2,2)), m=11, a=[1, 2, 4, 4, 9, 9], S=[0, 8]. -/
def code_2781 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2781_ok : code_2781.OK := by native_decide
/-- Code #2781 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2781_qec :
    ∃ ψ, SS.IsAmplitudes code_2781 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2781 code_2781_ok (by decide) (by decide)

/-- Catalogue code #2782: ((6,2,2)), m=11, a=[1, 2, 4, 4, 9, 10], S=[0, 3]. -/
def code_2782 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2782_ok : code_2782.OK := by native_decide
/-- Code #2782 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2782_qec :
    ∃ ψ, SS.IsAmplitudes code_2782 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2782 code_2782_ok (by decide) (by decide)

/-- Catalogue code #2783: ((6,2,2)), m=11, a=[1, 2, 4, 4, 10, 10], S=[0, 3]. -/
def code_2783 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2783_ok : code_2783.OK := by native_decide
/-- Code #2783 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2783_qec :
    ∃ ψ, SS.IsAmplitudes code_2783 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2783 code_2783_ok (by decide) (by decide)

/-- Catalogue code #2784: ((6,2,2)), m=11, a=[1, 2, 4, 4, 10, 10], S=[0, 6]. -/
def code_2784 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2784_ok : code_2784.OK := by native_decide
/-- Code #2784 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2784_qec :
    ∃ ψ, SS.IsAmplitudes code_2784 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2784 code_2784_ok (by decide) (by decide)

/-- Catalogue code #2785: ((6,2,2)), m=11, a=[1, 2, 4, 5, 5, 6], S=[0, 3]. -/
def code_2785 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2785_ok : code_2785.OK := by native_decide
/-- Code #2785 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2785_qec :
    ∃ ψ, SS.IsAmplitudes code_2785 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2785 code_2785_ok (by decide) (by decide)

/-- Catalogue code #2786: ((6,2,2)), m=11, a=[1, 2, 4, 5, 5, 7], S=[0, 3]. -/
def code_2786 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2786_ok : code_2786.OK := by native_decide
/-- Code #2786 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2786_qec :
    ∃ ψ, SS.IsAmplitudes code_2786 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2786 code_2786_ok (by decide) (by decide)

/-- Catalogue code #2787: ((6,2,2)), m=11, a=[1, 2, 4, 5, 5, 9], S=[0, 8]. -/
def code_2787 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2787_ok : code_2787.OK := by native_decide
/-- Code #2787 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2787_qec :
    ∃ ψ, SS.IsAmplitudes code_2787 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2787 code_2787_ok (by decide) (by decide)

/-- Catalogue code #2788: ((6,2,2)), m=11, a=[1, 2, 4, 5, 5, 10], S=[0, 8]. -/
def code_2788 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2788_ok : code_2788.OK := by native_decide
/-- Code #2788 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2788_qec :
    ∃ ψ, SS.IsAmplitudes code_2788 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2788 code_2788_ok (by decide) (by decide)

/-- Catalogue code #2789: ((6,2,2)), m=11, a=[1, 2, 4, 5, 6, 9], S=[0, 8]. -/
def code_2789 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2789_ok : code_2789.OK := by native_decide
/-- Code #2789 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2789_qec :
    ∃ ψ, SS.IsAmplitudes code_2789 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2789 code_2789_ok (by decide) (by decide)

/-- Catalogue code #2790: ((6,2,2)), m=11, a=[1, 2, 4, 5, 6, 10], S=[0, 3]. -/
def code_2790 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2790_ok : code_2790.OK := by native_decide
/-- Code #2790 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2790_qec :
    ∃ ψ, SS.IsAmplitudes code_2790 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2790 code_2790_ok (by decide) (by decide)

/-- Catalogue code #2791: ((6,2,2)), m=11, a=[1, 2, 4, 5, 7, 9], S=[0, 3]. -/
def code_2791 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2791_ok : code_2791.OK := by native_decide
/-- Code #2791 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2791_qec :
    ∃ ψ, SS.IsAmplitudes code_2791 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2791 code_2791_ok (by decide) (by decide)

/-- Catalogue code #2792: ((6,2,2)), m=11, a=[1, 2, 4, 5, 7, 10], S=[0, 8]. -/
def code_2792 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2792_ok : code_2792.OK := by native_decide
/-- Code #2792 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2792_qec :
    ∃ ψ, SS.IsAmplitudes code_2792 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2792 code_2792_ok (by decide) (by decide)

/-- Catalogue code #2793: ((6,2,2)), m=11, a=[1, 2, 4, 5, 10, 10], S=[0, 3]. -/
def code_2793 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2793_ok : code_2793.OK := by native_decide
/-- Code #2793 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2793_qec :
    ∃ ψ, SS.IsAmplitudes code_2793 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2793 code_2793_ok (by decide) (by decide)

/-- Catalogue code #2794: ((6,2,2)), m=11, a=[1, 2, 4, 6, 6, 7], S=[0, 3]. -/
def code_2794 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2794_ok : code_2794.OK := by native_decide
/-- Code #2794 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2794_qec :
    ∃ ψ, SS.IsAmplitudes code_2794 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2794 code_2794_ok (by decide) (by decide)

/-- Catalogue code #2795: ((6,2,2)), m=11, a=[1, 2, 4, 6, 6, 7], S=[0, 8]. -/
def code_2795 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2795_ok : code_2795.OK := by native_decide
/-- Code #2795 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2795_qec :
    ∃ ψ, SS.IsAmplitudes code_2795 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2795 code_2795_ok (by decide) (by decide)

/-- Catalogue code #2796: ((6,2,2)), m=11, a=[1, 2, 4, 6, 6, 9], S=[0, 3]. -/
def code_2796 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2796_ok : code_2796.OK := by native_decide
/-- Code #2796 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2796_qec :
    ∃ ψ, SS.IsAmplitudes code_2796 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2796 code_2796_ok (by decide) (by decide)

/-- Catalogue code #2797: ((6,2,2)), m=11, a=[1, 2, 4, 6, 6, 10], S=[0, 3]. -/
def code_2797 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2797_ok : code_2797.OK := by native_decide
/-- Code #2797 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2797_qec :
    ∃ ψ, SS.IsAmplitudes code_2797 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2797 code_2797_ok (by decide) (by decide)

/-- Catalogue code #2798: ((6,2,2)), m=11, a=[1, 2, 4, 6, 7, 9], S=[0, 8]. -/
def code_2798 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2798_ok : code_2798.OK := by native_decide
/-- Code #2798 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2798_qec :
    ∃ ψ, SS.IsAmplitudes code_2798 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2798 code_2798_ok (by decide) (by decide)

/-- Catalogue code #2799: ((6,2,2)), m=11, a=[1, 2, 4, 6, 7, 10], S=[0, 3]. -/
def code_2799 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2799_ok : code_2799.OK := by native_decide
/-- Code #2799 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2799_qec :
    ∃ ψ, SS.IsAmplitudes code_2799 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2799 code_2799_ok (by decide) (by decide)

/-- Catalogue code #2800: ((6,2,2)), m=11, a=[1, 2, 4, 6, 9, 10], S=[0, 3]. -/
def code_2800 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2800_ok : code_2800.OK := by native_decide
/-- Code #2800 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2800_qec :
    ∃ ψ, SS.IsAmplitudes code_2800 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2800 code_2800_ok (by decide) (by decide)

/-- Catalogue code #2801: ((6,2,2)), m=11, a=[1, 2, 4, 7, 8, 8], S=[0, 6]. -/
def code_2801 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2801_ok : code_2801.OK := by native_decide
/-- Code #2801 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2801_qec :
    ∃ ψ, SS.IsAmplitudes code_2801 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2801 code_2801_ok (by decide) (by decide)

/-- Catalogue code #2802: ((6,2,2)), m=11, a=[1, 2, 4, 7, 8, 9], S=[0, 6]. -/
def code_2802 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2802_ok : code_2802.OK := by native_decide
/-- Code #2802 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2802_qec :
    ∃ ψ, SS.IsAmplitudes code_2802 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2802 code_2802_ok (by decide) (by decide)

/-- Catalogue code #2803: ((6,2,2)), m=11, a=[1, 2, 4, 7, 8, 10], S=[0, 5]. -/
def code_2803 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2803_ok : code_2803.OK := by native_decide
/-- Code #2803 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2803_qec :
    ∃ ψ, SS.IsAmplitudes code_2803 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2803 code_2803_ok (by decide) (by decide)

/-- Catalogue code #2804: ((6,2,2)), m=11, a=[1, 2, 4, 8, 8, 9], S=[0, 5]. -/
def code_2804 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2804_ok : code_2804.OK := by native_decide
/-- Code #2804 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2804_qec :
    ∃ ψ, SS.IsAmplitudes code_2804 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2804 code_2804_ok (by decide) (by decide)

/-- Catalogue code #2805: ((6,2,2)), m=11, a=[1, 2, 4, 8, 8, 9], S=[0, 6]. -/
def code_2805 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2805_ok : code_2805.OK := by native_decide
/-- Code #2805 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2805_qec :
    ∃ ψ, SS.IsAmplitudes code_2805 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2805 code_2805_ok (by decide) (by decide)

/-- Catalogue code #2806: ((6,2,2)), m=11, a=[1, 2, 4, 8, 8, 10], S=[0, 5]. -/
def code_2806 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2806_ok : code_2806.OK := by native_decide
/-- Code #2806 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2806_qec :
    ∃ ψ, SS.IsAmplitudes code_2806 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2806 code_2806_ok (by decide) (by decide)

/-- Catalogue code #2807: ((6,2,2)), m=11, a=[1, 2, 4, 8, 9, 10], S=[0, 6]. -/
def code_2807 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2807_ok : code_2807.OK := by native_decide
/-- Code #2807 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2807_qec :
    ∃ ψ, SS.IsAmplitudes code_2807 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2807 code_2807_ok (by decide) (by decide)

/-- Catalogue code #2808: ((6,2,2)), m=11, a=[1, 2, 4, 8, 10, 10], S=[0, 6]. -/
def code_2808 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2808_ok : code_2808.OK := by native_decide
/-- Code #2808 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2808_qec :
    ∃ ψ, SS.IsAmplitudes code_2808 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2808 code_2808_ok (by decide) (by decide)

/-- Catalogue code #2809: ((6,2,2)), m=11, a=[1, 2, 5, 5, 5, 10], S=[0, 3]. -/
def code_2809 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2809_ok : code_2809.OK := by native_decide
/-- Code #2809 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2809_qec :
    ∃ ψ, SS.IsAmplitudes code_2809 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2809 code_2809_ok (by decide) (by decide)

/-- Catalogue code #2810: ((6,2,2)), m=11, a=[1, 2, 5, 5, 6, 8], S=[0, 7]. -/
def code_2810 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2810_ok : code_2810.OK := by native_decide
/-- Code #2810 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2810_qec :
    ∃ ψ, SS.IsAmplitudes code_2810 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2810 code_2810_ok (by decide) (by decide)

/-- Catalogue code #2811: ((6,2,2)), m=11, a=[1, 2, 5, 5, 7, 7], S=[0, 3]. -/
def code_2811 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2811_ok : code_2811.OK := by native_decide
/-- Code #2811 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2811_qec :
    ∃ ψ, SS.IsAmplitudes code_2811 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2811 code_2811_ok (by decide) (by decide)

/-- Catalogue code #2812: ((6,2,2)), m=11, a=[1, 2, 5, 5, 7, 7], S=[0, 8]. -/
def code_2812 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2812_ok : code_2812.OK := by native_decide
/-- Code #2812 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2812_qec :
    ∃ ψ, SS.IsAmplitudes code_2812 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2812 code_2812_ok (by decide) (by decide)

/-- Catalogue code #2813: ((6,2,2)), m=11, a=[1, 2, 5, 5, 7, 9], S=[0, 3]. -/
def code_2813 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2813_ok : code_2813.OK := by native_decide
/-- Code #2813 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2813_qec :
    ∃ ψ, SS.IsAmplitudes code_2813 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2813 code_2813_ok (by decide) (by decide)

/-- Catalogue code #2814: ((6,2,2)), m=11, a=[1, 2, 5, 5, 8, 9], S=[0, 4]. -/
def code_2814 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2814_ok : code_2814.OK := by native_decide
/-- Code #2814 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2814_qec :
    ∃ ψ, SS.IsAmplitudes code_2814 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2814 code_2814_ok (by decide) (by decide)

/-- Catalogue code #2815: ((6,2,2)), m=11, a=[1, 2, 5, 5, 8, 9], S=[0, 7]. -/
def code_2815 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2815_ok : code_2815.OK := by native_decide
/-- Code #2815 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2815_qec :
    ∃ ψ, SS.IsAmplitudes code_2815 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2815 code_2815_ok (by decide) (by decide)

/-- Catalogue code #2816: ((6,2,2)), m=11, a=[1, 2, 5, 5, 8, 10], S=[0, 7]. -/
def code_2816 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2816_ok : code_2816.OK := by native_decide
/-- Code #2816 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2816_qec :
    ∃ ψ, SS.IsAmplitudes code_2816 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2816 code_2816_ok (by decide) (by decide)

/-- Catalogue code #2817: ((6,2,2)), m=11, a=[1, 2, 5, 5, 9, 9], S=[0, 8]. -/
def code_2817 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2817_ok : code_2817.OK := by native_decide
/-- Code #2817 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2817_qec :
    ∃ ψ, SS.IsAmplitudes code_2817 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2817 code_2817_ok (by decide) (by decide)

/-- Catalogue code #2818: ((6,2,2)), m=11, a=[1, 2, 5, 5, 9, 10], S=[0, 7]. -/
def code_2818 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2818_ok : code_2818.OK := by native_decide
/-- Code #2818 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2818_qec :
    ∃ ψ, SS.IsAmplitudes code_2818 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2818 code_2818_ok (by decide) (by decide)

/-- Catalogue code #2819: ((6,2,2)), m=11, a=[1, 2, 5, 5, 9, 10], S=[0, 8]. -/
def code_2819 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2819_ok : code_2819.OK := by native_decide
/-- Code #2819 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2819_qec :
    ∃ ψ, SS.IsAmplitudes code_2819 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2819 code_2819_ok (by decide) (by decide)

/-- Catalogue code #2820: ((6,2,2)), m=11, a=[1, 2, 5, 5, 10, 10], S=[0, 3]. -/
def code_2820 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2820_ok : code_2820.OK := by native_decide
/-- Code #2820 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2820_qec :
    ∃ ψ, SS.IsAmplitudes code_2820 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2820 code_2820_ok (by decide) (by decide)

/-- Catalogue code #2821: ((6,2,2)), m=11, a=[1, 2, 5, 6, 6, 7], S=[0, 3]. -/
def code_2821 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2821_ok : code_2821.OK := by native_decide
/-- Code #2821 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2821_qec :
    ∃ ψ, SS.IsAmplitudes code_2821 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2821 code_2821_ok (by decide) (by decide)

/-- Catalogue code #2822: ((6,2,2)), m=11, a=[1, 2, 5, 6, 6, 8], S=[0, 4]. -/
def code_2822 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2822_ok : code_2822.OK := by native_decide
/-- Code #2822 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2822_qec :
    ∃ ψ, SS.IsAmplitudes code_2822 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2822 code_2822_ok (by decide) (by decide)

/-- Catalogue code #2823: ((6,2,2)), m=11, a=[1, 2, 5, 6, 6, 9], S=[0, 3]. -/
def code_2823 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2823_ok : code_2823.OK := by native_decide
/-- Code #2823 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2823_qec :
    ∃ ψ, SS.IsAmplitudes code_2823 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2823 code_2823_ok (by decide) (by decide)

/-- Catalogue code #2824: ((6,2,2)), m=11, a=[1, 2, 5, 6, 6, 9], S=[0, 4]. -/
def code_2824 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2824_ok : code_2824.OK := by native_decide
/-- Code #2824 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2824_qec :
    ∃ ψ, SS.IsAmplitudes code_2824 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2824 code_2824_ok (by decide) (by decide)

/-- Catalogue code #2825: ((6,2,2)), m=11, a=[1, 2, 5, 6, 7, 7], S=[0, 3]. -/
def code_2825 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2825_ok : code_2825.OK := by native_decide
/-- Code #2825 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2825_qec :
    ∃ ψ, SS.IsAmplitudes code_2825 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2825 code_2825_ok (by decide) (by decide)

/-- Catalogue code #2826: ((6,2,2)), m=11, a=[1, 2, 5, 6, 7, 7], S=[0, 8]. -/
def code_2826 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2826_ok : code_2826.OK := by native_decide
/-- Code #2826 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2826_qec :
    ∃ ψ, SS.IsAmplitudes code_2826 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2826 code_2826_ok (by decide) (by decide)

/-- Catalogue code #2827: ((6,2,2)), m=11, a=[1, 2, 5, 6, 7, 9], S=[0, 3]. -/
def code_2827 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_2827_ok : code_2827.OK := by native_decide
/-- Code #2827 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2827_qec :
    ∃ ψ, SS.IsAmplitudes code_2827 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2827 code_2827_ok (by decide) (by decide)

/-- Catalogue code #2828: ((6,2,2)), m=11, a=[1, 2, 5, 6, 8, 8], S=[0, 4]. -/
def code_2828 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2828_ok : code_2828.OK := by native_decide
/-- Code #2828 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2828_qec :
    ∃ ψ, SS.IsAmplitudes code_2828 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2828 code_2828_ok (by decide) (by decide)

/-- Catalogue code #2829: ((6,2,2)), m=11, a=[1, 2, 5, 6, 8, 9], S=[0, 4]. -/
def code_2829 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2829_ok : code_2829.OK := by native_decide
/-- Code #2829 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2829_qec :
    ∃ ψ, SS.IsAmplitudes code_2829 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2829 code_2829_ok (by decide) (by decide)

/-- Catalogue code #2830: ((6,2,2)), m=11, a=[1, 2, 5, 7, 7, 9], S=[0, 3]. -/
def code_2830 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2830_ok : code_2830.OK := by native_decide
/-- Code #2830 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2830_qec :
    ∃ ψ, SS.IsAmplitudes code_2830 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2830 code_2830_ok (by decide) (by decide)

/-- Catalogue code #2831: ((6,2,2)), m=11, a=[1, 2, 5, 7, 7, 9], S=[0, 8]. -/
def code_2831 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2831_ok : code_2831.OK := by native_decide
/-- Code #2831 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2831_qec :
    ∃ ψ, SS.IsAmplitudes code_2831 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2831 code_2831_ok (by decide) (by decide)

/-- Catalogue code #2832: ((6,2,2)), m=11, a=[1, 2, 5, 7, 7, 10], S=[0, 8]. -/
def code_2832 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2832_ok : code_2832.OK := by native_decide
/-- Code #2832 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2832_qec :
    ∃ ψ, SS.IsAmplitudes code_2832 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2832 code_2832_ok (by decide) (by decide)

/-- Catalogue code #2833: ((6,2,2)), m=11, a=[1, 2, 5, 7, 9, 9], S=[0, 3]. -/
def code_2833 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2833_ok : code_2833.OK := by native_decide
/-- Code #2833 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2833_qec :
    ∃ ψ, SS.IsAmplitudes code_2833 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2833 code_2833_ok (by decide) (by decide)

/-- Catalogue code #2834: ((6,2,2)), m=11, a=[1, 2, 5, 7, 9, 9], S=[0, 8]. -/
def code_2834 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2834_ok : code_2834.OK := by native_decide
/-- Code #2834 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2834_qec :
    ∃ ψ, SS.IsAmplitudes code_2834 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2834 code_2834_ok (by decide) (by decide)

/-- Catalogue code #2835: ((6,2,2)), m=11, a=[1, 2, 5, 7, 9, 10], S=[0, 8]. -/
def code_2835 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2835_ok : code_2835.OK := by native_decide
/-- Code #2835 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2835_qec :
    ∃ ψ, SS.IsAmplitudes code_2835 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2835 code_2835_ok (by decide) (by decide)

/-- Catalogue code #2836: ((6,2,2)), m=11, a=[1, 2, 5, 8, 8, 9], S=[0, 4]. -/
def code_2836 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2836_ok : code_2836.OK := by native_decide
/-- Code #2836 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2836_qec :
    ∃ ψ, SS.IsAmplitudes code_2836 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2836 code_2836_ok (by decide) (by decide)

/-- Catalogue code #2837: ((6,2,2)), m=11, a=[1, 2, 5, 8, 8, 9], S=[0, 7]. -/
def code_2837 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2837_ok : code_2837.OK := by native_decide
/-- Code #2837 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2837_qec :
    ∃ ψ, SS.IsAmplitudes code_2837 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2837 code_2837_ok (by decide) (by decide)

/-- Catalogue code #2838: ((6,2,2)), m=11, a=[1, 2, 5, 8, 8, 10], S=[0, 4]. -/
def code_2838 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_2838_ok : code_2838.OK := by native_decide
/-- Code #2838 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2838_qec :
    ∃ ψ, SS.IsAmplitudes code_2838 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2838 code_2838_ok (by decide) (by decide)

/-- Catalogue code #2839: ((6,2,2)), m=11, a=[1, 2, 5, 8, 9, 9], S=[0, 4]. -/
def code_2839 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2839_ok : code_2839.OK := by native_decide
/-- Code #2839 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2839_qec :
    ∃ ψ, SS.IsAmplitudes code_2839 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2839 code_2839_ok (by decide) (by decide)

/-- Catalogue code #2840: ((6,2,2)), m=11, a=[1, 2, 5, 8, 9, 10], S=[0, 7]. -/
def code_2840 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2840_ok : code_2840.OK := by native_decide
/-- Code #2840 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2840_qec :
    ∃ ψ, SS.IsAmplitudes code_2840 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2840 code_2840_ok (by decide) (by decide)

/-- Catalogue code #2841: ((6,2,2)), m=11, a=[1, 2, 5, 8, 10, 10], S=[0, 7]. -/
def code_2841 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2841_ok : code_2841.OK := by native_decide
/-- Code #2841 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2841_qec :
    ∃ ψ, SS.IsAmplitudes code_2841 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2841 code_2841_ok (by decide) (by decide)

/-- Catalogue code #2842: ((6,2,2)), m=11, a=[1, 2, 5, 9, 9, 10], S=[0, 8]. -/
def code_2842 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2842_ok : code_2842.OK := by native_decide
/-- Code #2842 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2842_qec :
    ∃ ψ, SS.IsAmplitudes code_2842 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2842 code_2842_ok (by decide) (by decide)

/-- Catalogue code #2843: ((6,2,2)), m=11, a=[1, 2, 6, 6, 6, 7], S=[0, 8]. -/
def code_2843 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2843_ok : code_2843.OK := by native_decide
/-- Code #2843 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2843_qec :
    ∃ ψ, SS.IsAmplitudes code_2843 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2843 code_2843_ok (by decide) (by decide)

/-- Catalogue code #2844: ((6,2,2)), m=11, a=[1, 2, 6, 6, 7, 7], S=[0, 3]. -/
def code_2844 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2844_ok : code_2844.OK := by native_decide
/-- Code #2844 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2844_qec :
    ∃ ψ, SS.IsAmplitudes code_2844 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2844 code_2844_ok (by decide) (by decide)

/-- Catalogue code #2845: ((6,2,2)), m=11, a=[1, 2, 6, 6, 7, 7], S=[0, 8]. -/
def code_2845 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2845_ok : code_2845.OK := by native_decide
/-- Code #2845 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2845_qec :
    ∃ ψ, SS.IsAmplitudes code_2845 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2845 code_2845_ok (by decide) (by decide)

/-- Catalogue code #2846: ((6,2,2)), m=11, a=[1, 2, 6, 6, 7, 9], S=[0, 3]. -/
def code_2846 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2846_ok : code_2846.OK := by native_decide
/-- Code #2846 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2846_qec :
    ∃ ψ, SS.IsAmplitudes code_2846 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2846 code_2846_ok (by decide) (by decide)

/-- Catalogue code #2847: ((6,2,2)), m=11, a=[1, 2, 6, 6, 7, 10], S=[0, 3]. -/
def code_2847 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2847_ok : code_2847.OK := by native_decide
/-- Code #2847 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2847_qec :
    ∃ ψ, SS.IsAmplitudes code_2847 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2847 code_2847_ok (by decide) (by decide)

/-- Catalogue code #2848: ((6,2,2)), m=11, a=[1, 2, 6, 6, 8, 8], S=[0, 7]. -/
def code_2848 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2848_ok : code_2848.OK := by native_decide
/-- Code #2848 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2848_qec :
    ∃ ψ, SS.IsAmplitudes code_2848 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2848 code_2848_ok (by decide) (by decide)

/-- Catalogue code #2849: ((6,2,2)), m=11, a=[1, 2, 6, 6, 8, 9], S=[0, 7]. -/
def code_2849 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2849_ok : code_2849.OK := by native_decide
/-- Code #2849 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2849_qec :
    ∃ ψ, SS.IsAmplitudes code_2849 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2849 code_2849_ok (by decide) (by decide)

/-- Catalogue code #2850: ((6,2,2)), m=11, a=[1, 2, 6, 6, 8, 10], S=[0, 4]. -/
def code_2850 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2850_ok : code_2850.OK := by native_decide
/-- Code #2850 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2850_qec :
    ∃ ψ, SS.IsAmplitudes code_2850 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2850 code_2850_ok (by decide) (by decide)

/-- Catalogue code #2851: ((6,2,2)), m=11, a=[1, 2, 6, 6, 8, 10], S=[0, 7]. -/
def code_2851 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2851_ok : code_2851.OK := by native_decide
/-- Code #2851 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2851_qec :
    ∃ ψ, SS.IsAmplitudes code_2851 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2851 code_2851_ok (by decide) (by decide)

/-- Catalogue code #2852: ((6,2,2)), m=11, a=[1, 2, 6, 6, 9, 9], S=[0, 3]. -/
def code_2852 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2852_ok : code_2852.OK := by native_decide
/-- Code #2852 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2852_qec :
    ∃ ψ, SS.IsAmplitudes code_2852 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2852 code_2852_ok (by decide) (by decide)

/-- Catalogue code #2853: ((6,2,2)), m=11, a=[1, 2, 6, 6, 9, 10], S=[0, 4]. -/
def code_2853 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2853_ok : code_2853.OK := by native_decide
/-- Code #2853 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2853_qec :
    ∃ ψ, SS.IsAmplitudes code_2853 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2853 code_2853_ok (by decide) (by decide)

/-- Catalogue code #2854: ((6,2,2)), m=11, a=[1, 2, 6, 6, 10, 10], S=[0, 4]. -/
def code_2854 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2854_ok : code_2854.OK := by native_decide
/-- Code #2854 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2854_qec :
    ∃ ψ, SS.IsAmplitudes code_2854 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2854 code_2854_ok (by decide) (by decide)

/-- Catalogue code #2855: ((6,2,2)), m=11, a=[1, 2, 6, 7, 7, 7], S=[0, 3]. -/
def code_2855 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2855_ok : code_2855.OK := by native_decide
/-- Code #2855 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2855_qec :
    ∃ ψ, SS.IsAmplitudes code_2855 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2855 code_2855_ok (by decide) (by decide)

/-- Catalogue code #2856: ((6,2,2)), m=11, a=[1, 2, 6, 7, 7, 10], S=[0, 3]. -/
def code_2856 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2856_ok : code_2856.OK := by native_decide
/-- Code #2856 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2856_qec :
    ∃ ψ, SS.IsAmplitudes code_2856 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2856 code_2856_ok (by decide) (by decide)

/-- Catalogue code #2857: ((6,2,2)), m=11, a=[1, 2, 6, 7, 7, 10], S=[0, 8]. -/
def code_2857 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2857_ok : code_2857.OK := by native_decide
/-- Code #2857 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2857_qec :
    ∃ ψ, SS.IsAmplitudes code_2857 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2857 code_2857_ok (by decide) (by decide)

/-- Catalogue code #2858: ((6,2,2)), m=11, a=[1, 2, 6, 8, 8, 9], S=[0, 7]. -/
def code_2858 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2858_ok : code_2858.OK := by native_decide
/-- Code #2858 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2858_qec :
    ∃ ψ, SS.IsAmplitudes code_2858 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2858 code_2858_ok (by decide) (by decide)

/-- Catalogue code #2859: ((6,2,2)), m=11, a=[1, 2, 6, 8, 8, 10], S=[0, 4]. -/
def code_2859 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2859_ok : code_2859.OK := by native_decide
/-- Code #2859 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2859_qec :
    ∃ ψ, SS.IsAmplitudes code_2859 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2859 code_2859_ok (by decide) (by decide)

/-- Catalogue code #2860: ((6,2,2)), m=11, a=[1, 2, 6, 8, 9, 10], S=[0, 7]. -/
def code_2860 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2860_ok : code_2860.OK := by native_decide
/-- Code #2860 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2860_qec :
    ∃ ψ, SS.IsAmplitudes code_2860 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2860 code_2860_ok (by decide) (by decide)

/-- Catalogue code #2861: ((6,2,2)), m=11, a=[1, 2, 7, 7, 7, 8], S=[0, 5]. -/
def code_2861 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2861_ok : code_2861.OK := by native_decide
/-- Code #2861 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2861_qec :
    ∃ ψ, SS.IsAmplitudes code_2861 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2861 code_2861_ok (by decide) (by decide)

/-- Catalogue code #2862: ((6,2,2)), m=11, a=[1, 2, 7, 7, 7, 10], S=[0, 3]. -/
def code_2862 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2862_ok : code_2862.OK := by native_decide
/-- Code #2862 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2862_qec :
    ∃ ψ, SS.IsAmplitudes code_2862 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2862 code_2862_ok (by decide) (by decide)

/-- Catalogue code #2863: ((6,2,2)), m=11, a=[1, 2, 7, 7, 7, 10], S=[0, 6]. -/
def code_2863 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2863_ok : code_2863.OK := by native_decide
/-- Code #2863 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2863_qec :
    ∃ ψ, SS.IsAmplitudes code_2863 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2863 code_2863_ok (by decide) (by decide)

/-- Catalogue code #2864: ((6,2,2)), m=11, a=[1, 2, 7, 7, 8, 8], S=[0, 5]. -/
def code_2864 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2864_ok : code_2864.OK := by native_decide
/-- Code #2864 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2864_qec :
    ∃ ψ, SS.IsAmplitudes code_2864 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2864 code_2864_ok (by decide) (by decide)

/-- Catalogue code #2865: ((6,2,2)), m=11, a=[1, 2, 7, 7, 8, 8], S=[0, 6]. -/
def code_2865 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2865_ok : code_2865.OK := by native_decide
/-- Code #2865 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2865_qec :
    ∃ ψ, SS.IsAmplitudes code_2865 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2865 code_2865_ok (by decide) (by decide)

/-- Catalogue code #2866: ((6,2,2)), m=11, a=[1, 2, 7, 7, 8, 9], S=[0, 6]. -/
def code_2866 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2866_ok : code_2866.OK := by native_decide
/-- Code #2866 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2866_qec :
    ∃ ψ, SS.IsAmplitudes code_2866 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2866 code_2866_ok (by decide) (by decide)

/-- Catalogue code #2867: ((6,2,2)), m=11, a=[1, 2, 7, 7, 8, 10], S=[0, 5]. -/
def code_2867 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2867_ok : code_2867.OK := by native_decide
/-- Code #2867 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2867_qec :
    ∃ ψ, SS.IsAmplitudes code_2867 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2867 code_2867_ok (by decide) (by decide)

/-- Catalogue code #2868: ((6,2,2)), m=11, a=[1, 2, 7, 8, 8, 9], S=[0, 6]. -/
def code_2868 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_2868_ok : code_2868.OK := by native_decide
/-- Code #2868 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2868_qec :
    ∃ ψ, SS.IsAmplitudes code_2868 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2868 code_2868_ok (by decide) (by decide)

/-- Catalogue code #2869: ((6,2,2)), m=11, a=[1, 2, 7, 8, 8, 10], S=[0, 5]. -/
def code_2869 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2869_ok : code_2869.OK := by native_decide
/-- Code #2869 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2869_qec :
    ∃ ψ, SS.IsAmplitudes code_2869 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2869 code_2869_ok (by decide) (by decide)

/-- Catalogue code #2870: ((6,2,2)), m=11, a=[1, 2, 7, 8, 8, 10], S=[0, 6]. -/
def code_2870 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2870_ok : code_2870.OK := by native_decide
/-- Code #2870 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2870_qec :
    ∃ ψ, SS.IsAmplitudes code_2870 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2870 code_2870_ok (by decide) (by decide)

/-- Catalogue code #2871: ((6,2,2)), m=11, a=[1, 2, 7, 8, 9, 9], S=[0, 6]. -/
def code_2871 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2871_ok : code_2871.OK := by native_decide
/-- Code #2871 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2871_qec :
    ∃ ψ, SS.IsAmplitudes code_2871 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2871 code_2871_ok (by decide) (by decide)

/-- Catalogue code #2872: ((6,2,2)), m=11, a=[1, 2, 8, 8, 8, 9], S=[0, 7]. -/
def code_2872 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (2 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2872_ok : code_2872.OK := by native_decide
/-- Code #2872 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2872_qec :
    ∃ ψ, SS.IsAmplitudes code_2872 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2872 code_2872_ok (by decide) (by decide)

/-- Catalogue code #2873: ((6,2,2)), m=11, a=[1, 3, 3, 3, 3, 10], S=[0, 2]. -/
def code_2873 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2873_ok : code_2873.OK := by native_decide
/-- Code #2873 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2873_qec :
    ∃ ψ, SS.IsAmplitudes code_2873 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2873 code_2873_ok (by decide) (by decide)

/-- Catalogue code #2874: ((6,2,2)), m=11, a=[1, 3, 3, 3, 4, 4], S=[0, 9]. -/
def code_2874 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2874_ok : code_2874.OK := by native_decide
/-- Code #2874 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2874_qec :
    ∃ ψ, SS.IsAmplitudes code_2874 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2874 code_2874_ok (by decide) (by decide)

/-- Catalogue code #2875: ((6,2,2)), m=11, a=[1, 3, 3, 3, 4, 5], S=[0, 9]. -/
def code_2875 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2875_ok : code_2875.OK := by native_decide
/-- Code #2875 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2875_qec :
    ∃ ψ, SS.IsAmplitudes code_2875 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2875 code_2875_ok (by decide) (by decide)

/-- Catalogue code #2876: ((6,2,2)), m=11, a=[1, 3, 3, 3, 4, 7], S=[0, 5]. -/
def code_2876 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2876_ok : code_2876.OK := by native_decide
/-- Code #2876 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2876_qec :
    ∃ ψ, SS.IsAmplitudes code_2876 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2876 code_2876_ok (by decide) (by decide)

/-- Catalogue code #2877: ((6,2,2)), m=11, a=[1, 3, 3, 3, 6, 6], S=[0, 4]. -/
def code_2877 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2877_ok : code_2877.OK := by native_decide
/-- Code #2877 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2877_qec :
    ∃ ψ, SS.IsAmplitudes code_2877 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2877 code_2877_ok (by decide) (by decide)

/-- Catalogue code #2878: ((6,2,2)), m=11, a=[1, 3, 3, 3, 6, 7], S=[0, 2]. -/
def code_2878 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2878_ok : code_2878.OK := by native_decide
/-- Code #2878 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2878_qec :
    ∃ ψ, SS.IsAmplitudes code_2878 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2878 code_2878_ok (by decide) (by decide)

/-- Catalogue code #2879: ((6,2,2)), m=11, a=[1, 3, 3, 3, 6, 9], S=[0, 4]. -/
def code_2879 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2879_ok : code_2879.OK := by native_decide
/-- Code #2879 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2879_qec :
    ∃ ψ, SS.IsAmplitudes code_2879 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2879 code_2879_ok (by decide) (by decide)

/-- Catalogue code #2880: ((6,2,2)), m=11, a=[1, 3, 3, 3, 7, 9], S=[0, 5]. -/
def code_2880 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2880_ok : code_2880.OK := by native_decide
/-- Code #2880 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2880_qec :
    ∃ ψ, SS.IsAmplitudes code_2880 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2880 code_2880_ok (by decide) (by decide)

/-- Catalogue code #2881: ((6,2,2)), m=11, a=[1, 3, 3, 4, 4, 6], S=[0, 9]. -/
def code_2881 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2881_ok : code_2881.OK := by native_decide
/-- Code #2881 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2881_qec :
    ∃ ψ, SS.IsAmplitudes code_2881 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2881 code_2881_ok (by decide) (by decide)

/-- Catalogue code #2882: ((6,2,2)), m=11, a=[1, 3, 3, 4, 4, 8], S=[0, 6]. -/
def code_2882 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2882_ok : code_2882.OK := by native_decide
/-- Code #2882 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2882_qec :
    ∃ ψ, SS.IsAmplitudes code_2882 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2882 code_2882_ok (by decide) (by decide)

/-- Catalogue code #2883: ((6,2,2)), m=11, a=[1, 3, 3, 4, 4, 10], S=[0, 5]. -/
def code_2883 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2883_ok : code_2883.OK := by native_decide
/-- Code #2883 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2883_qec :
    ∃ ψ, SS.IsAmplitudes code_2883 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2883 code_2883_ok (by decide) (by decide)

/-- Catalogue code #2884: ((6,2,2)), m=11, a=[1, 3, 3, 4, 4, 10], S=[0, 9]. -/
def code_2884 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2884_ok : code_2884.OK := by native_decide
/-- Code #2884 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2884_qec :
    ∃ ψ, SS.IsAmplitudes code_2884 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2884 code_2884_ok (by decide) (by decide)

/-- Catalogue code #2885: ((6,2,2)), m=11, a=[1, 3, 3, 4, 5, 5], S=[0, 9]. -/
def code_2885 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2885_ok : code_2885.OK := by native_decide
/-- Code #2885 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2885_qec :
    ∃ ψ, SS.IsAmplitudes code_2885 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2885 code_2885_ok (by decide) (by decide)

/-- Catalogue code #2886: ((6,2,2)), m=11, a=[1, 3, 3, 4, 5, 6], S=[0, 2]. -/
def code_2886 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2886_ok : code_2886.OK := by native_decide
/-- Code #2886 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2886_qec :
    ∃ ψ, SS.IsAmplitudes code_2886 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2886 code_2886_ok (by decide) (by decide)

/-- Catalogue code #2887: ((6,2,2)), m=11, a=[1, 3, 3, 4, 5, 7], S=[0, 2]. -/
def code_2887 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2887_ok : code_2887.OK := by native_decide
/-- Code #2887 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2887_qec :
    ∃ ψ, SS.IsAmplitudes code_2887 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2887 code_2887_ok (by decide) (by decide)

/-- Catalogue code #2888: ((6,2,2)), m=11, a=[1, 3, 3, 4, 5, 10], S=[0, 2]. -/
def code_2888 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2888_ok : code_2888.OK := by native_decide
/-- Code #2888 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2888_qec :
    ∃ ψ, SS.IsAmplitudes code_2888 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2888 code_2888_ok (by decide) (by decide)

/-- Catalogue code #2889: ((6,2,2)), m=11, a=[1, 3, 3, 4, 5, 10], S=[0, 9]. -/
def code_2889 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2889_ok : code_2889.OK := by native_decide
/-- Code #2889 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2889_qec :
    ∃ ψ, SS.IsAmplitudes code_2889 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2889 code_2889_ok (by decide) (by decide)

/-- Catalogue code #2890: ((6,2,2)), m=11, a=[1, 3, 3, 4, 6, 6], S=[0, 2]. -/
def code_2890 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2890_ok : code_2890.OK := by native_decide
/-- Code #2890 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2890_qec :
    ∃ ψ, SS.IsAmplitudes code_2890 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2890 code_2890_ok (by decide) (by decide)

/-- Catalogue code #2891: ((6,2,2)), m=11, a=[1, 3, 3, 4, 6, 8], S=[0, 2]. -/
def code_2891 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2891_ok : code_2891.OK := by native_decide
/-- Code #2891 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2891_qec :
    ∃ ψ, SS.IsAmplitudes code_2891 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2891 code_2891_ok (by decide) (by decide)

/-- Catalogue code #2892: ((6,2,2)), m=11, a=[1, 3, 3, 4, 6, 10], S=[0, 2]. -/
def code_2892 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2892_ok : code_2892.OK := by native_decide
/-- Code #2892 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2892_qec :
    ∃ ψ, SS.IsAmplitudes code_2892 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2892 code_2892_ok (by decide) (by decide)

/-- Catalogue code #2893: ((6,2,2)), m=11, a=[1, 3, 3, 4, 6, 10], S=[0, 9]. -/
def code_2893 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2893_ok : code_2893.OK := by native_decide
/-- Code #2893 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2893_qec :
    ∃ ψ, SS.IsAmplitudes code_2893 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2893 code_2893_ok (by decide) (by decide)

/-- Catalogue code #2894: ((6,2,2)), m=11, a=[1, 3, 3, 4, 7, 8], S=[0, 2]. -/
def code_2894 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2894_ok : code_2894.OK := by native_decide
/-- Code #2894 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2894_qec :
    ∃ ψ, SS.IsAmplitudes code_2894 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2894 code_2894_ok (by decide) (by decide)

/-- Catalogue code #2895: ((6,2,2)), m=11, a=[1, 3, 3, 4, 7, 9], S=[0, 6]. -/
def code_2895 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2895_ok : code_2895.OK := by native_decide
/-- Code #2895 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2895_qec :
    ∃ ψ, SS.IsAmplitudes code_2895 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2895 code_2895_ok (by decide) (by decide)

/-- Catalogue code #2896: ((6,2,2)), m=11, a=[1, 3, 3, 4, 8, 9], S=[0, 5]. -/
def code_2896 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2896_ok : code_2896.OK := by native_decide
/-- Code #2896 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2896_qec :
    ∃ ψ, SS.IsAmplitudes code_2896 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2896 code_2896_ok (by decide) (by decide)

/-- Catalogue code #2897: ((6,2,2)), m=11, a=[1, 3, 3, 4, 8, 10], S=[0, 2]. -/
def code_2897 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2897_ok : code_2897.OK := by native_decide
/-- Code #2897 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2897_qec :
    ∃ ψ, SS.IsAmplitudes code_2897 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2897 code_2897_ok (by decide) (by decide)

/-- Catalogue code #2898: ((6,2,2)), m=11, a=[1, 3, 3, 4, 8, 10], S=[0, 5]. -/
def code_2898 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2898_ok : code_2898.OK := by native_decide
/-- Code #2898 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2898_qec :
    ∃ ψ, SS.IsAmplitudes code_2898 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2898 code_2898_ok (by decide) (by decide)

/-- Catalogue code #2899: ((6,2,2)), m=11, a=[1, 3, 3, 4, 8, 10], S=[0, 9]. -/
def code_2899 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2899_ok : code_2899.OK := by native_decide
/-- Code #2899 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2899_qec :
    ∃ ψ, SS.IsAmplitudes code_2899 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2899 code_2899_ok (by decide) (by decide)

/-- Catalogue code #2900: ((6,2,2)), m=11, a=[1, 3, 3, 4, 9, 9], S=[0, 5]. -/
def code_2900 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2900_ok : code_2900.OK := by native_decide
/-- Code #2900 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2900_qec :
    ∃ ψ, SS.IsAmplitudes code_2900 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2900 code_2900_ok (by decide) (by decide)

/-- Catalogue code #2901: ((6,2,2)), m=11, a=[1, 3, 3, 4, 9, 9], S=[0, 6]. -/
def code_2901 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2901_ok : code_2901.OK := by native_decide
/-- Code #2901 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2901_qec :
    ∃ ψ, SS.IsAmplitudes code_2901 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2901 code_2901_ok (by decide) (by decide)

/-- Catalogue code #2902: ((6,2,2)), m=11, a=[1, 3, 3, 4, 9, 10], S=[0, 5]. -/
def code_2902 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2902_ok : code_2902.OK := by native_decide
/-- Code #2902 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2902_qec :
    ∃ ψ, SS.IsAmplitudes code_2902 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2902 code_2902_ok (by decide) (by decide)

/-- Catalogue code #2903: ((6,2,2)), m=11, a=[1, 3, 3, 4, 9, 10], S=[0, 6]. -/
def code_2903 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2903_ok : code_2903.OK := by native_decide
/-- Code #2903 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2903_qec :
    ∃ ψ, SS.IsAmplitudes code_2903 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2903 code_2903_ok (by decide) (by decide)

/-- Catalogue code #2904: ((6,2,2)), m=11, a=[1, 3, 3, 5, 5, 5], S=[0, 4]. -/
def code_2904 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2904_ok : code_2904.OK := by native_decide
/-- Code #2904 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2904_qec :
    ∃ ψ, SS.IsAmplitudes code_2904 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2904 code_2904_ok (by decide) (by decide)

/-- Catalogue code #2905: ((6,2,2)), m=11, a=[1, 3, 3, 5, 5, 6], S=[0, 2]. -/
def code_2905 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2905_ok : code_2905.OK := by native_decide
/-- Code #2905 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2905_qec :
    ∃ ψ, SS.IsAmplitudes code_2905 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2905 code_2905_ok (by decide) (by decide)

/-- Catalogue code #2906: ((6,2,2)), m=11, a=[1, 3, 3, 5, 5, 8], S=[0, 7]. -/
def code_2906 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2906_ok : code_2906.OK := by native_decide
/-- Code #2906 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2906_qec :
    ∃ ψ, SS.IsAmplitudes code_2906 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2906 code_2906_ok (by decide) (by decide)

/-- Catalogue code #2907: ((6,2,2)), m=11, a=[1, 3, 3, 5, 5, 10], S=[0, 4]. -/
def code_2907 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2907_ok : code_2907.OK := by native_decide
/-- Code #2907 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2907_qec :
    ∃ ψ, SS.IsAmplitudes code_2907 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2907 code_2907_ok (by decide) (by decide)

/-- Catalogue code #2908: ((6,2,2)), m=11, a=[1, 3, 3, 5, 5, 10], S=[0, 9]. -/
def code_2908 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2908_ok : code_2908.OK := by native_decide
/-- Code #2908 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2908_qec :
    ∃ ψ, SS.IsAmplitudes code_2908 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2908 code_2908_ok (by decide) (by decide)

/-- Catalogue code #2909: ((6,2,2)), m=11, a=[1, 3, 3, 5, 6, 7], S=[0, 2]. -/
def code_2909 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2909_ok : code_2909.OK := by native_decide
/-- Code #2909 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2909_qec :
    ∃ ψ, SS.IsAmplitudes code_2909 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2909 code_2909_ok (by decide) (by decide)

/-- Catalogue code #2910: ((6,2,2)), m=11, a=[1, 3, 3, 5, 6, 9], S=[0, 7]. -/
def code_2910 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2910_ok : code_2910.OK := by native_decide
/-- Code #2910 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2910_qec :
    ∃ ψ, SS.IsAmplitudes code_2910 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2910 code_2910_ok (by decide) (by decide)

/-- Catalogue code #2911: ((6,2,2)), m=11, a=[1, 3, 3, 5, 6, 10], S=[0, 2]. -/
def code_2911 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2911_ok : code_2911.OK := by native_decide
/-- Code #2911 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2911_qec :
    ∃ ψ, SS.IsAmplitudes code_2911 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2911 code_2911_ok (by decide) (by decide)

/-- Catalogue code #2912: ((6,2,2)), m=11, a=[1, 3, 3, 5, 6, 10], S=[0, 7]. -/
def code_2912 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2912_ok : code_2912.OK := by native_decide
/-- Code #2912 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2912_qec :
    ∃ ψ, SS.IsAmplitudes code_2912 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2912 code_2912_ok (by decide) (by decide)

/-- Catalogue code #2913: ((6,2,2)), m=11, a=[1, 3, 3, 5, 7, 7], S=[0, 2]. -/
def code_2913 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2913_ok : code_2913.OK := by native_decide
/-- Code #2913 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2913_qec :
    ∃ ψ, SS.IsAmplitudes code_2913 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2913 code_2913_ok (by decide) (by decide)

/-- Catalogue code #2914: ((6,2,2)), m=11, a=[1, 3, 3, 5, 7, 10], S=[0, 2]. -/
def code_2914 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2914_ok : code_2914.OK := by native_decide
/-- Code #2914 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2914_qec :
    ∃ ψ, SS.IsAmplitudes code_2914 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2914 code_2914_ok (by decide) (by decide)

/-- Catalogue code #2915: ((6,2,2)), m=11, a=[1, 3, 3, 5, 7, 10], S=[0, 9]. -/
def code_2915 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2915_ok : code_2915.OK := by native_decide
/-- Code #2915 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2915_qec :
    ∃ ψ, SS.IsAmplitudes code_2915 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2915 code_2915_ok (by decide) (by decide)

/-- Catalogue code #2916: ((6,2,2)), m=11, a=[1, 3, 3, 5, 9, 9], S=[0, 4]. -/
def code_2916 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2916_ok : code_2916.OK := by native_decide
/-- Code #2916 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2916_qec :
    ∃ ψ, SS.IsAmplitudes code_2916 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2916 code_2916_ok (by decide) (by decide)

/-- Catalogue code #2917: ((6,2,2)), m=11, a=[1, 3, 3, 5, 9, 9], S=[0, 7]. -/
def code_2917 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2917_ok : code_2917.OK := by native_decide
/-- Code #2917 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2917_qec :
    ∃ ψ, SS.IsAmplitudes code_2917 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2917 code_2917_ok (by decide) (by decide)

/-- Catalogue code #2918: ((6,2,2)), m=11, a=[1, 3, 3, 5, 9, 10], S=[0, 7]. -/
def code_2918 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2918_ok : code_2918.OK := by native_decide
/-- Code #2918 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2918_qec :
    ∃ ψ, SS.IsAmplitudes code_2918 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2918 code_2918_ok (by decide) (by decide)

/-- Catalogue code #2919: ((6,2,2)), m=11, a=[1, 3, 3, 5, 10, 10], S=[0, 4]. -/
def code_2919 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2919_ok : code_2919.OK := by native_decide
/-- Code #2919 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2919_qec :
    ∃ ψ, SS.IsAmplitudes code_2919 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2919 code_2919_ok (by decide) (by decide)

/-- Catalogue code #2920: ((6,2,2)), m=11, a=[1, 3, 3, 6, 6, 6], S=[0, 2]. -/
def code_2920 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2920_ok : code_2920.OK := by native_decide
/-- Code #2920 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2920_qec :
    ∃ ψ, SS.IsAmplitudes code_2920 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2920 code_2920_ok (by decide) (by decide)

/-- Catalogue code #2921: ((6,2,2)), m=11, a=[1, 3, 3, 6, 6, 7], S=[0, 2]. -/
def code_2921 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2921_ok : code_2921.OK := by native_decide
/-- Code #2921 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2921_qec :
    ∃ ψ, SS.IsAmplitudes code_2921 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2921 code_2921_ok (by decide) (by decide)

/-- Catalogue code #2922: ((6,2,2)), m=11, a=[1, 3, 3, 6, 6, 9], S=[0, 4]. -/
def code_2922 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2922_ok : code_2922.OK := by native_decide
/-- Code #2922 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2922_qec :
    ∃ ψ, SS.IsAmplitudes code_2922 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2922 code_2922_ok (by decide) (by decide)

/-- Catalogue code #2923: ((6,2,2)), m=11, a=[1, 3, 3, 6, 6, 10], S=[0, 2]. -/
def code_2923 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2923_ok : code_2923.OK := by native_decide
/-- Code #2923 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2923_qec :
    ∃ ψ, SS.IsAmplitudes code_2923 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2923 code_2923_ok (by decide) (by decide)

/-- Catalogue code #2924: ((6,2,2)), m=11, a=[1, 3, 3, 6, 7, 10], S=[0, 2]. -/
def code_2924 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2924_ok : code_2924.OK := by native_decide
/-- Code #2924 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2924_qec :
    ∃ ψ, SS.IsAmplitudes code_2924 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2924 code_2924_ok (by decide) (by decide)

/-- Catalogue code #2925: ((6,2,2)), m=11, a=[1, 3, 3, 6, 8, 9], S=[0, 7]. -/
def code_2925 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2925_ok : code_2925.OK := by native_decide
/-- Code #2925 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2925_qec :
    ∃ ψ, SS.IsAmplitudes code_2925 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2925 code_2925_ok (by decide) (by decide)

/-- Catalogue code #2926: ((6,2,2)), m=11, a=[1, 3, 3, 6, 8, 10], S=[0, 2]. -/
def code_2926 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2926_ok : code_2926.OK := by native_decide
/-- Code #2926 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2926_qec :
    ∃ ψ, SS.IsAmplitudes code_2926 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2926 code_2926_ok (by decide) (by decide)

/-- Catalogue code #2927: ((6,2,2)), m=11, a=[1, 3, 3, 6, 8, 10], S=[0, 7]. -/
def code_2927 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2927_ok : code_2927.OK := by native_decide
/-- Code #2927 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2927_qec :
    ∃ ψ, SS.IsAmplitudes code_2927 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2927 code_2927_ok (by decide) (by decide)

/-- Catalogue code #2928: ((6,2,2)), m=11, a=[1, 3, 3, 6, 9, 9], S=[0, 4]. -/
def code_2928 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2928_ok : code_2928.OK := by native_decide
/-- Code #2928 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2928_qec :
    ∃ ψ, SS.IsAmplitudes code_2928 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2928 code_2928_ok (by decide) (by decide)

/-- Catalogue code #2929: ((6,2,2)), m=11, a=[1, 3, 3, 6, 9, 9], S=[0, 7]. -/
def code_2929 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2929_ok : code_2929.OK := by native_decide
/-- Code #2929 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2929_qec :
    ∃ ψ, SS.IsAmplitudes code_2929 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2929 code_2929_ok (by decide) (by decide)

/-- Catalogue code #2930: ((6,2,2)), m=11, a=[1, 3, 3, 6, 9, 10], S=[0, 7]. -/
def code_2930 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2930_ok : code_2930.OK := by native_decide
/-- Code #2930 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2930_qec :
    ∃ ψ, SS.IsAmplitudes code_2930 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2930 code_2930_ok (by decide) (by decide)

/-- Catalogue code #2931: ((6,2,2)), m=11, a=[1, 3, 3, 6, 10, 10], S=[0, 4]. -/
def code_2931 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2931_ok : code_2931.OK := by native_decide
/-- Code #2931 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2931_qec :
    ∃ ψ, SS.IsAmplitudes code_2931 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2931 code_2931_ok (by decide) (by decide)

/-- Catalogue code #2932: ((6,2,2)), m=11, a=[1, 3, 3, 7, 7, 8], S=[0, 9]. -/
def code_2932 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2932_ok : code_2932.OK := by native_decide
/-- Code #2932 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2932_qec :
    ∃ ψ, SS.IsAmplitudes code_2932 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2932 code_2932_ok (by decide) (by decide)

/-- Catalogue code #2933: ((6,2,2)), m=11, a=[1, 3, 3, 7, 7, 9], S=[0, 6]. -/
def code_2933 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2933_ok : code_2933.OK := by native_decide
/-- Code #2933 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2933_qec :
    ∃ ψ, SS.IsAmplitudes code_2933 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2933 code_2933_ok (by decide) (by decide)

/-- Catalogue code #2934: ((6,2,2)), m=11, a=[1, 3, 3, 7, 9, 9], S=[0, 5]. -/
def code_2934 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2934_ok : code_2934.OK := by native_decide
/-- Code #2934 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2934_qec :
    ∃ ψ, SS.IsAmplitudes code_2934 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2934 code_2934_ok (by decide) (by decide)

/-- Catalogue code #2935: ((6,2,2)), m=11, a=[1, 3, 3, 7, 9, 9], S=[0, 6]. -/
def code_2935 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2935_ok : code_2935.OK := by native_decide
/-- Code #2935 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2935_qec :
    ∃ ψ, SS.IsAmplitudes code_2935 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2935 code_2935_ok (by decide) (by decide)

/-- Catalogue code #2936: ((6,2,2)), m=11, a=[1, 3, 3, 7, 9, 10], S=[0, 5]. -/
def code_2936 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2936_ok : code_2936.OK := by native_decide
/-- Code #2936 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2936_qec :
    ∃ ψ, SS.IsAmplitudes code_2936 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2936 code_2936_ok (by decide) (by decide)

/-- Catalogue code #2937: ((6,2,2)), m=11, a=[1, 3, 3, 7, 9, 10], S=[0, 6]. -/
def code_2937 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2937_ok : code_2937.OK := by native_decide
/-- Code #2937 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2937_qec :
    ∃ ψ, SS.IsAmplitudes code_2937 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2937 code_2937_ok (by decide) (by decide)

/-- Catalogue code #2938: ((6,2,2)), m=11, a=[1, 3, 3, 7, 10, 10], S=[0, 6]. -/
def code_2938 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2938_ok : code_2938.OK := by native_decide
/-- Code #2938 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2938_qec :
    ∃ ψ, SS.IsAmplitudes code_2938 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2938 code_2938_ok (by decide) (by decide)

/-- Catalogue code #2939: ((6,2,2)), m=11, a=[1, 3, 3, 8, 9, 9], S=[0, 4]. -/
def code_2939 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2939_ok : code_2939.OK := by native_decide
/-- Code #2939 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2939_qec :
    ∃ ψ, SS.IsAmplitudes code_2939 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2939 code_2939_ok (by decide) (by decide)

/-- Catalogue code #2940: ((6,2,2)), m=11, a=[1, 3, 3, 8, 9, 9], S=[0, 7]. -/
def code_2940 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2940_ok : code_2940.OK := by native_decide
/-- Code #2940 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2940_qec :
    ∃ ψ, SS.IsAmplitudes code_2940 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2940 code_2940_ok (by decide) (by decide)

/-- Catalogue code #2941: ((6,2,2)), m=11, a=[1, 3, 3, 8, 9, 10], S=[0, 7]. -/
def code_2941 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2941_ok : code_2941.OK := by native_decide
/-- Code #2941 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2941_qec :
    ∃ ψ, SS.IsAmplitudes code_2941 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2941 code_2941_ok (by decide) (by decide)

/-- Catalogue code #2942: ((6,2,2)), m=11, a=[1, 3, 3, 9, 9, 9], S=[0, 5]. -/
def code_2942 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_2942_ok : code_2942.OK := by native_decide
/-- Code #2942 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2942_qec :
    ∃ ψ, SS.IsAmplitudes code_2942 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2942 code_2942_ok (by decide) (by decide)

/-- Catalogue code #2943: ((6,2,2)), m=11, a=[1, 3, 3, 9, 9, 9], S=[0, 6]. -/
def code_2943 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2943_ok : code_2943.OK := by native_decide
/-- Code #2943 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2943_qec :
    ∃ ψ, SS.IsAmplitudes code_2943 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2943 code_2943_ok (by decide) (by decide)

/-- Catalogue code #2944: ((6,2,2)), m=11, a=[1, 3, 3, 9, 9, 9], S=[0, 7]. -/
def code_2944 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2944_ok : code_2944.OK := by native_decide
/-- Code #2944 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2944_qec :
    ∃ ψ, SS.IsAmplitudes code_2944 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2944 code_2944_ok (by decide) (by decide)

/-- Catalogue code #2945: ((6,2,2)), m=11, a=[1, 3, 3, 9, 9, 10], S=[0, 6]. -/
def code_2945 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_2945_ok : code_2945.OK := by native_decide
/-- Code #2945 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2945_qec :
    ∃ ψ, SS.IsAmplitudes code_2945 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2945 code_2945_ok (by decide) (by decide)

/-- Catalogue code #2946: ((6,2,2)), m=11, a=[1, 3, 3, 9, 9, 10], S=[0, 7]. -/
def code_2946 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (3 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_2946_ok : code_2946.OK := by native_decide
/-- Code #2946 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2946_qec :
    ∃ ψ, SS.IsAmplitudes code_2946 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2946 code_2946_ok (by decide) (by decide)

/-- Catalogue code #2947: ((6,2,2)), m=11, a=[1, 3, 4, 4, 4, 10], S=[0, 2]. -/
def code_2947 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2947_ok : code_2947.OK := by native_decide
/-- Code #2947 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2947_qec :
    ∃ ψ, SS.IsAmplitudes code_2947 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2947 code_2947_ok (by decide) (by decide)

/-- Catalogue code #2948: ((6,2,2)), m=11, a=[1, 3, 4, 4, 5, 5], S=[0, 2]. -/
def code_2948 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2948_ok : code_2948.OK := by native_decide
/-- Code #2948 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2948_qec :
    ∃ ψ, SS.IsAmplitudes code_2948 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2948 code_2948_ok (by decide) (by decide)

/-- Catalogue code #2949: ((6,2,2)), m=11, a=[1, 3, 4, 4, 5, 6], S=[0, 2]. -/
def code_2949 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2949_ok : code_2949.OK := by native_decide
/-- Code #2949 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2949_qec :
    ∃ ψ, SS.IsAmplitudes code_2949 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2949 code_2949_ok (by decide) (by decide)

/-- Catalogue code #2950: ((6,2,2)), m=11, a=[1, 3, 4, 4, 5, 8], S=[0, 2]. -/
def code_2950 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2950_ok : code_2950.OK := by native_decide
/-- Code #2950 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2950_qec :
    ∃ ψ, SS.IsAmplitudes code_2950 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2950 code_2950_ok (by decide) (by decide)

/-- Catalogue code #2951: ((6,2,2)), m=11, a=[1, 3, 4, 4, 5, 10], S=[0, 2]. -/
def code_2951 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_2951_ok : code_2951.OK := by native_decide
/-- Code #2951 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2951_qec :
    ∃ ψ, SS.IsAmplitudes code_2951 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2951 code_2951_ok (by decide) (by decide)

/-- Catalogue code #2952: ((6,2,2)), m=11, a=[1, 3, 4, 4, 6, 6], S=[0, 9]. -/
def code_2952 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2952_ok : code_2952.OK := by native_decide
/-- Code #2952 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2952_qec :
    ∃ ψ, SS.IsAmplitudes code_2952 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2952 code_2952_ok (by decide) (by decide)

/-- Catalogue code #2953: ((6,2,2)), m=11, a=[1, 3, 4, 4, 6, 7], S=[0, 9]. -/
def code_2953 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2953_ok : code_2953.OK := by native_decide
/-- Code #2953 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2953_qec :
    ∃ ψ, SS.IsAmplitudes code_2953 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2953 code_2953_ok (by decide) (by decide)

/-- Catalogue code #2954: ((6,2,2)), m=11, a=[1, 3, 4, 4, 6, 8], S=[0, 2]. -/
def code_2954 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2954_ok : code_2954.OK := by native_decide
/-- Code #2954 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2954_qec :
    ∃ ψ, SS.IsAmplitudes code_2954 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2954 code_2954_ok (by decide) (by decide)

/-- Catalogue code #2955: ((6,2,2)), m=11, a=[1, 3, 4, 4, 6, 10], S=[0, 9]. -/
def code_2955 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11)]
theorem code_2955_ok : code_2955.OK := by native_decide
/-- Code #2955 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2955_qec :
    ∃ ψ, SS.IsAmplitudes code_2955 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2955 code_2955_ok (by decide) (by decide)

/-- Catalogue code #2956: ((6,2,2)), m=11, a=[1, 3, 4, 4, 8, 9], S=[0, 5]. -/
def code_2956 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2956_ok : code_2956.OK := by native_decide
/-- Code #2956 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2956_qec :
    ∃ ψ, SS.IsAmplitudes code_2956 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2956 code_2956_ok (by decide) (by decide)

/-- Catalogue code #2957: ((6,2,2)), m=11, a=[1, 3, 4, 4, 8, 9], S=[0, 6]. -/
def code_2957 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2957_ok : code_2957.OK := by native_decide
/-- Code #2957 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2957_qec :
    ∃ ψ, SS.IsAmplitudes code_2957 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2957 code_2957_ok (by decide) (by decide)

/-- Catalogue code #2958: ((6,2,2)), m=11, a=[1, 3, 4, 4, 8, 10], S=[0, 2]. -/
def code_2958 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2958_ok : code_2958.OK := by native_decide
/-- Code #2958 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2958_qec :
    ∃ ψ, SS.IsAmplitudes code_2958 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2958 code_2958_ok (by decide) (by decide)

/-- Catalogue code #2959: ((6,2,2)), m=11, a=[1, 3, 4, 4, 8, 10], S=[0, 6]. -/
def code_2959 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2959_ok : code_2959.OK := by native_decide
/-- Code #2959 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2959_qec :
    ∃ ψ, SS.IsAmplitudes code_2959 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2959 code_2959_ok (by decide) (by decide)

/-- Catalogue code #2960: ((6,2,2)), m=11, a=[1, 3, 4, 4, 9, 9], S=[0, 5]. -/
def code_2960 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2960_ok : code_2960.OK := by native_decide
/-- Code #2960 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2960_qec :
    ∃ ψ, SS.IsAmplitudes code_2960 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2960 code_2960_ok (by decide) (by decide)

/-- Catalogue code #2961: ((6,2,2)), m=11, a=[1, 3, 4, 4, 9, 10], S=[0, 6]. -/
def code_2961 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2961_ok : code_2961.OK := by native_decide
/-- Code #2961 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2961_qec :
    ∃ ψ, SS.IsAmplitudes code_2961 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2961 code_2961_ok (by decide) (by decide)

/-- Catalogue code #2962: ((6,2,2)), m=11, a=[1, 3, 4, 5, 5, 7], S=[0, 2]. -/
def code_2962 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2962_ok : code_2962.OK := by native_decide
/-- Code #2962 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2962_qec :
    ∃ ψ, SS.IsAmplitudes code_2962 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2962 code_2962_ok (by decide) (by decide)

/-- Catalogue code #2963: ((6,2,2)), m=11, a=[1, 3, 4, 5, 5, 8], S=[0, 2]. -/
def code_2963 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2963_ok : code_2963.OK := by native_decide
/-- Code #2963 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2963_qec :
    ∃ ψ, SS.IsAmplitudes code_2963 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2963 code_2963_ok (by decide) (by decide)

/-- Catalogue code #2964: ((6,2,2)), m=11, a=[1, 3, 4, 5, 5, 10], S=[0, 2]. -/
def code_2964 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2964_ok : code_2964.OK := by native_decide
/-- Code #2964 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2964_qec :
    ∃ ψ, SS.IsAmplitudes code_2964 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2964 code_2964_ok (by decide) (by decide)

/-- Catalogue code #2965: ((6,2,2)), m=11, a=[1, 3, 4, 5, 5, 10], S=[0, 9]. -/
def code_2965 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2965_ok : code_2965.OK := by native_decide
/-- Code #2965 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2965_qec :
    ∃ ψ, SS.IsAmplitudes code_2965 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2965 code_2965_ok (by decide) (by decide)

/-- Catalogue code #2966: ((6,2,2)), m=11, a=[1, 3, 4, 5, 6, 7], S=[0, 2]. -/
def code_2966 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2966_ok : code_2966.OK := by native_decide
/-- Code #2966 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2966_qec :
    ∃ ψ, SS.IsAmplitudes code_2966 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2966 code_2966_ok (by decide) (by decide)

/-- Catalogue code #2967: ((6,2,2)), m=11, a=[1, 3, 4, 5, 6, 10], S=[0, 9]. -/
def code_2967 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2967_ok : code_2967.OK := by native_decide
/-- Code #2967 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2967_qec :
    ∃ ψ, SS.IsAmplitudes code_2967 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2967 code_2967_ok (by decide) (by decide)

/-- Catalogue code #2968: ((6,2,2)), m=11, a=[1, 3, 4, 5, 7, 10], S=[0, 2]. -/
def code_2968 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2968_ok : code_2968.OK := by native_decide
/-- Code #2968 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2968_qec :
    ∃ ψ, SS.IsAmplitudes code_2968 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2968 code_2968_ok (by decide) (by decide)

/-- Catalogue code #2969: ((6,2,2)), m=11, a=[1, 3, 4, 5, 7, 10], S=[0, 9]. -/
def code_2969 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2969_ok : code_2969.OK := by native_decide
/-- Code #2969 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2969_qec :
    ∃ ψ, SS.IsAmplitudes code_2969 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2969 code_2969_ok (by decide) (by decide)

/-- Catalogue code #2970: ((6,2,2)), m=11, a=[1, 3, 4, 5, 8, 10], S=[0, 2]. -/
def code_2970 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2970_ok : code_2970.OK := by native_decide
/-- Code #2970 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2970_qec :
    ∃ ψ, SS.IsAmplitudes code_2970 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2970 code_2970_ok (by decide) (by decide)

/-- Catalogue code #2971: ((6,2,2)), m=11, a=[1, 3, 4, 6, 6, 6], S=[0, 2]. -/
def code_2971 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2971_ok : code_2971.OK := by native_decide
/-- Code #2971 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2971_qec :
    ∃ ψ, SS.IsAmplitudes code_2971 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2971 code_2971_ok (by decide) (by decide)

/-- Catalogue code #2972: ((6,2,2)), m=11, a=[1, 3, 4, 6, 6, 7], S=[0, 9]. -/
def code_2972 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2972_ok : code_2972.OK := by native_decide
/-- Code #2972 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2972_qec :
    ∃ ψ, SS.IsAmplitudes code_2972 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2972 code_2972_ok (by decide) (by decide)

/-- Catalogue code #2973: ((6,2,2)), m=11, a=[1, 3, 4, 6, 7, 8], S=[0, 9]. -/
def code_2973 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2973_ok : code_2973.OK := by native_decide
/-- Code #2973 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2973_qec :
    ∃ ψ, SS.IsAmplitudes code_2973 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2973 code_2973_ok (by decide) (by decide)

/-- Catalogue code #2974: ((6,2,2)), m=11, a=[1, 3, 4, 6, 8, 8], S=[0, 9]. -/
def code_2974 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2974_ok : code_2974.OK := by native_decide
/-- Code #2974 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2974_qec :
    ∃ ψ, SS.IsAmplitudes code_2974 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2974 code_2974_ok (by decide) (by decide)

/-- Catalogue code #2975: ((6,2,2)), m=11, a=[1, 3, 4, 6, 8, 10], S=[0, 2]. -/
def code_2975 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2975_ok : code_2975.OK := by native_decide
/-- Code #2975 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2975_qec :
    ∃ ψ, SS.IsAmplitudes code_2975 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2975 code_2975_ok (by decide) (by decide)

/-- Catalogue code #2976: ((6,2,2)), m=11, a=[1, 3, 4, 7, 8, 9], S=[0, 5]. -/
def code_2976 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2976_ok : code_2976.OK := by native_decide
/-- Code #2976 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2976_qec :
    ∃ ψ, SS.IsAmplitudes code_2976 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2976 code_2976_ok (by decide) (by decide)

/-- Catalogue code #2977: ((6,2,2)), m=11, a=[1, 3, 4, 7, 9, 9], S=[0, 5]. -/
def code_2977 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2977_ok : code_2977.OK := by native_decide
/-- Code #2977 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2977_qec :
    ∃ ψ, SS.IsAmplitudes code_2977 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2977 code_2977_ok (by decide) (by decide)

/-- Catalogue code #2978: ((6,2,2)), m=11, a=[1, 3, 4, 7, 9, 9], S=[0, 6]. -/
def code_2978 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2978_ok : code_2978.OK := by native_decide
/-- Code #2978 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2978_qec :
    ∃ ψ, SS.IsAmplitudes code_2978 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2978 code_2978_ok (by decide) (by decide)

/-- Catalogue code #2979: ((6,2,2)), m=11, a=[1, 3, 4, 7, 9, 10], S=[0, 6]. -/
def code_2979 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2979_ok : code_2979.OK := by native_decide
/-- Code #2979 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2979_qec :
    ∃ ψ, SS.IsAmplitudes code_2979 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2979 code_2979_ok (by decide) (by decide)

/-- Catalogue code #2980: ((6,2,2)), m=11, a=[1, 3, 4, 8, 9, 9], S=[0, 5]. -/
def code_2980 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2980_ok : code_2980.OK := by native_decide
/-- Code #2980 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2980_qec :
    ∃ ψ, SS.IsAmplitudes code_2980 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2980 code_2980_ok (by decide) (by decide)

/-- Catalogue code #2981: ((6,2,2)), m=11, a=[1, 3, 4, 8, 9, 9], S=[0, 6]. -/
def code_2981 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2981_ok : code_2981.OK := by native_decide
/-- Code #2981 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2981_qec :
    ∃ ψ, SS.IsAmplitudes code_2981 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2981 code_2981_ok (by decide) (by decide)

/-- Catalogue code #2982: ((6,2,2)), m=11, a=[1, 3, 4, 8, 9, 10], S=[0, 5]. -/
def code_2982 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2982_ok : code_2982.OK := by native_decide
/-- Code #2982 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2982_qec :
    ∃ ψ, SS.IsAmplitudes code_2982 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2982 code_2982_ok (by decide) (by decide)

/-- Catalogue code #2983: ((6,2,2)), m=11, a=[1, 3, 4, 8, 9, 10], S=[0, 6]. -/
def code_2983 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2983_ok : code_2983.OK := by native_decide
/-- Code #2983 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2983_qec :
    ∃ ψ, SS.IsAmplitudes code_2983 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2983 code_2983_ok (by decide) (by decide)

/-- Catalogue code #2984: ((6,2,2)), m=11, a=[1, 3, 4, 9, 9, 9], S=[0, 5]. -/
def code_2984 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2984_ok : code_2984.OK := by native_decide
/-- Code #2984 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2984_qec :
    ∃ ψ, SS.IsAmplitudes code_2984 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2984 code_2984_ok (by decide) (by decide)

/-- Catalogue code #2985: ((6,2,2)), m=11, a=[1, 3, 4, 9, 9, 10], S=[0, 6]. -/
def code_2985 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2985_ok : code_2985.OK := by native_decide
/-- Code #2985 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2985_qec :
    ∃ ψ, SS.IsAmplitudes code_2985 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2985 code_2985_ok (by decide) (by decide)

/-- Catalogue code #2986: ((6,2,2)), m=11, a=[1, 3, 5, 5, 5, 7], S=[0, 2]. -/
def code_2986 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2986_ok : code_2986.OK := by native_decide
/-- Code #2986 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2986_qec :
    ∃ ψ, SS.IsAmplitudes code_2986 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2986 code_2986_ok (by decide) (by decide)

/-- Catalogue code #2987: ((6,2,2)), m=11, a=[1, 3, 5, 5, 5, 9], S=[0, 4]. -/
def code_2987 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2987_ok : code_2987.OK := by native_decide
/-- Code #2987 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2987_qec :
    ∃ ψ, SS.IsAmplitudes code_2987 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2987 code_2987_ok (by decide) (by decide)

/-- Catalogue code #2988: ((6,2,2)), m=11, a=[1, 3, 5, 5, 7, 7], S=[0, 2]. -/
def code_2988 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2988_ok : code_2988.OK := by native_decide
/-- Code #2988 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2988_qec :
    ∃ ψ, SS.IsAmplitudes code_2988 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2988 code_2988_ok (by decide) (by decide)

/-- Catalogue code #2989: ((6,2,2)), m=11, a=[1, 3, 5, 5, 7, 8], S=[0, 9]. -/
def code_2989 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_2989_ok : code_2989.OK := by native_decide
/-- Code #2989 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2989_qec :
    ∃ ψ, SS.IsAmplitudes code_2989 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2989 code_2989_ok (by decide) (by decide)

/-- Catalogue code #2990: ((6,2,2)), m=11, a=[1, 3, 5, 5, 7, 10], S=[0, 2]. -/
def code_2990 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2990_ok : code_2990.OK := by native_decide
/-- Code #2990 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2990_qec :
    ∃ ψ, SS.IsAmplitudes code_2990 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2990 code_2990_ok (by decide) (by decide)

/-- Catalogue code #2991: ((6,2,2)), m=11, a=[1, 3, 5, 5, 8, 8], S=[0, 4]. -/
def code_2991 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2991_ok : code_2991.OK := by native_decide
/-- Code #2991 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2991_qec :
    ∃ ψ, SS.IsAmplitudes code_2991 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2991 code_2991_ok (by decide) (by decide)

/-- Catalogue code #2992: ((6,2,2)), m=11, a=[1, 3, 5, 5, 8, 9], S=[0, 7]. -/
def code_2992 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2992_ok : code_2992.OK := by native_decide
/-- Code #2992 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2992_qec :
    ∃ ψ, SS.IsAmplitudes code_2992 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2992 code_2992_ok (by decide) (by decide)

/-- Catalogue code #2993: ((6,2,2)), m=11, a=[1, 3, 5, 5, 8, 10], S=[0, 9]. -/
def code_2993 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_2993_ok : code_2993.OK := by native_decide
/-- Code #2993 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2993_qec :
    ∃ ψ, SS.IsAmplitudes code_2993 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2993 code_2993_ok (by decide) (by decide)

/-- Catalogue code #2994: ((6,2,2)), m=11, a=[1, 3, 5, 5, 9, 9], S=[0, 4]. -/
def code_2994 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2994_ok : code_2994.OK := by native_decide
/-- Code #2994 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2994_qec :
    ∃ ψ, SS.IsAmplitudes code_2994 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2994 code_2994_ok (by decide) (by decide)

/-- Catalogue code #2995: ((6,2,2)), m=11, a=[1, 3, 5, 5, 9, 9], S=[0, 7]. -/
def code_2995 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2995_ok : code_2995.OK := by native_decide
/-- Code #2995 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2995_qec :
    ∃ ψ, SS.IsAmplitudes code_2995 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2995 code_2995_ok (by decide) (by decide)

/-- Catalogue code #2996: ((6,2,2)), m=11, a=[1, 3, 5, 5, 9, 10], S=[0, 4]. -/
def code_2996 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_2996_ok : code_2996.OK := by native_decide
/-- Code #2996 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2996_qec :
    ∃ ψ, SS.IsAmplitudes code_2996 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2996 code_2996_ok (by decide) (by decide)

/-- Catalogue code #2997: ((6,2,2)), m=11, a=[1, 3, 5, 5, 9, 10], S=[0, 7]. -/
def code_2997 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_2997_ok : code_2997.OK := by native_decide
/-- Code #2997 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2997_qec :
    ∃ ψ, SS.IsAmplitudes code_2997 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2997 code_2997_ok (by decide) (by decide)

/-- Catalogue code #2998: ((6,2,2)), m=11, a=[1, 3, 5, 5, 10, 10], S=[0, 4]. -/
def code_2998 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_2998_ok : code_2998.OK := by native_decide
/-- Code #2998 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2998_qec :
    ∃ ψ, SS.IsAmplitudes code_2998 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2998 code_2998_ok (by decide) (by decide)

/-- Catalogue code #2999: ((6,2,2)), m=11, a=[1, 3, 5, 5, 10, 10], S=[0, 9]. -/
def code_2999 : ExampleData 6 11 2 where
  a := ![(1 : ZMod 11), (3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}, {![false, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_2999_ok : code_2999.OK := by native_decide
/-- Code #2999 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2999_qec :
    ∃ ψ, SS.IsAmplitudes code_2999 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2999 code_2999_ok (by decide) (by decide)

end Catalogue.Chunk005
