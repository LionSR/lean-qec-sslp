import SS

namespace Catalogue.Chunk028

open SS SS.Verify

/-- Catalogue code #14000: ((6,3,2)), m=14, a=[4, 6, 6, 11, 13, 13], S=[0, 2, 9]. -/
def code_14000 : ExampleData 6 14 3 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_14000_ok : code_14000.OK := by native_decide
/-- Code #14000 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14000_qec :
    ∃ ψ, SS.IsAmplitudes code_14000 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14000 code_14000_ok (by decide) (by decide)

/-- Catalogue code #14001: ((6,3,2)), m=14, a=[5, 5, 8, 12, 12, 13], S=[0, 3, 10]. -/
def code_14001 : ExampleData 6 14 3 where
  a := ![(5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_14001_ok : code_14001.OK := by native_decide
/-- Code #14001 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14001_qec :
    ∃ ψ, SS.IsAmplitudes code_14001 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14001 code_14001_ok (by decide) (by decide)

/-- Catalogue code #14002: ((6,3,2)), m=14, a=[5, 6, 9, 12, 12, 13], S=[0, 4, 11]. -/
def code_14002 : ExampleData 6 14 3 where
  a := ![(5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_14002_ok : code_14002.OK := by native_decide
/-- Code #14002 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14002_qec :
    ∃ ψ, SS.IsAmplitudes code_14002 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14002 code_14002_ok (by decide) (by decide)

/-- Catalogue code #14003: ((6,3,2)), m=14, a=[8, 8, 10, 11, 13, 13], S=[0, 7, 9]. -/
def code_14003 : ExampleData 6 14 3 where
  a := ![(8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_14003_ok : code_14003.OK := by native_decide
/-- Code #14003 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14003_qec :
    ∃ ψ, SS.IsAmplitudes code_14003 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14003 code_14003_ok (by decide) (by decide)

/-- Catalogue code #14004: ((6,3,2)), m=14, a=[8, 8, 10, 11, 13, 13], S=[0, 7, 12]. -/
def code_14004 : ExampleData 6 14 3 where
  a := ![(8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_14004_ok : code_14004.OK := by native_decide
/-- Code #14004 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14004_qec :
    ∃ ψ, SS.IsAmplitudes code_14004 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14004 code_14004_ok (by decide) (by decide)

/-- Catalogue code #14005: ((6,3,2)), m=14, a=[9, 10, 10, 11, 11, 12], S=[0, 1, 7]. -/
def code_14005 : ExampleData 6 14 3 where
  a := ![(9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_14005_ok : code_14005.OK := by native_decide
/-- Code #14005 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14005_qec :
    ∃ ψ, SS.IsAmplitudes code_14005 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14005 code_14005_ok (by decide) (by decide)

/-- Catalogue code #14006: ((6,3,2)), m=14, a=[9, 10, 10, 11, 11, 12], S=[0, 6, 7]. -/
def code_14006 : ExampleData 6 14 3 where
  a := ![(9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_14006_ok : code_14006.OK := by native_decide
/-- Code #14006 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14006_qec :
    ∃ ψ, SS.IsAmplitudes code_14006 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14006 code_14006_ok (by decide) (by decide)

/-- Catalogue code #14007: ((6,3,2)), m=15, a=[1, 1, 4, 4, 6, 9], S=[0, 2, 10]. -/
def code_14007 : ExampleData 6 15 3 where
  a := ![(1 : ZMod 15), (1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15), (10 : ZMod 15)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-11 : ℚ) / 15)]
theorem code_14007_ok : code_14007.OK := by native_decide
/-- Code #14007 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14007_qec :
    ∃ ψ, SS.IsAmplitudes code_14007 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14007 code_14007_ok (by decide) (by decide)

/-- Catalogue code #14008: ((6,3,2)), m=15, a=[1, 1, 4, 4, 6, 9], S=[0, 8, 10]. -/
def code_14008 : ExampleData 6 15 3 where
  a := ![(1 : ZMod 15), (1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-11 : ℚ) / 15), ((1 : ℚ) / 15)]
theorem code_14008_ok : code_14008.OK := by native_decide
/-- Code #14008 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14008_qec :
    ∃ ψ, SS.IsAmplitudes code_14008 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14008 code_14008_ok (by decide) (by decide)

/-- Catalogue code #14009: ((6,3,2)), m=15, a=[1, 1, 4, 9, 9, 11], S=[0, 5, 7]. -/
def code_14009 : ExampleData 6 15 3 where
  a := ![(1 : ZMod 15), (1 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]
theorem code_14009_ok : code_14009.OK := by native_decide
/-- Code #14009 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14009_qec :
    ∃ ψ, SS.IsAmplitudes code_14009 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14009 code_14009_ok (by decide) (by decide)

/-- Catalogue code #14010: ((6,3,2)), m=15, a=[1, 1, 4, 9, 9, 11], S=[0, 5, 13]. -/
def code_14010 : ExampleData 6 15 3 where
  a := ![(1 : ZMod 15), (1 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (5 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 5)]
theorem code_14010_ok : code_14010.OK := by native_decide
/-- Code #14010 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14010_qec :
    ∃ ψ, SS.IsAmplitudes code_14010 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14010 code_14010_ok (by decide) (by decide)

/-- Catalogue code #14011: ((6,3,2)), m=15, a=[1, 1, 6, 6, 11, 11], S=[0, 8, 13]. -/
def code_14011 : ExampleData 6 15 3 where
  a := ![(1 : ZMod 15), (1 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]
theorem code_14011_ok : code_14011.OK := by native_decide
/-- Code #14011 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14011_qec :
    ∃ ψ, SS.IsAmplitudes code_14011 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14011 code_14011_ok (by decide) (by decide)

/-- Catalogue code #14012: ((6,3,2)), m=15, a=[1, 1, 6, 9, 11, 11], S=[0, 2, 7]. -/
def code_14012 : ExampleData 6 15 3 where
  a := ![(1 : ZMod 15), (1 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]
theorem code_14012_ok : code_14012.OK := by native_decide
/-- Code #14012 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14012_qec :
    ∃ ψ, SS.IsAmplitudes code_14012 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14012 code_14012_ok (by decide) (by decide)

/-- Catalogue code #14013: ((6,3,2)), m=15, a=[1, 4, 4, 6, 6, 14], S=[0, 5, 7]. -/
def code_14013 : ExampleData 6 15 3 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 5)]
theorem code_14013_ok : code_14013.OK := by native_decide
/-- Code #14013 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14013_qec :
    ∃ ψ, SS.IsAmplitudes code_14013 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14013 code_14013_ok (by decide) (by decide)

/-- Catalogue code #14014: ((6,3,2)), m=15, a=[1, 4, 4, 6, 6, 14], S=[0, 5, 13]. -/
def code_14014 : ExampleData 6 15 3 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (5 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]
theorem code_14014_ok : code_14014.OK := by native_decide
/-- Code #14014 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14014_qec :
    ∃ ψ, SS.IsAmplitudes code_14014 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14014 code_14014_ok (by decide) (by decide)

/-- Catalogue code #14015: ((6,3,2)), m=15, a=[1, 4, 4, 6, 9, 14], S=[0, 5, 10]. -/
def code_14015 : ExampleData 6 15 3 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (5 : ZMod 15), (10 : ZMod 15)]
  supp := ![{![false, false, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14015_ok : code_14015.OK := by native_decide
/-- Code #14015 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14015_qec :
    ∃ ψ, SS.IsAmplitudes code_14015 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14015 code_14015_ok (by decide) (by decide)

/-- Catalogue code #14016: ((6,3,2)), m=15, a=[1, 6, 9, 11, 11, 14], S=[0, 5, 10]. -/
def code_14016 : ExampleData 6 15 3 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (5 : ZMod 15), (10 : ZMod 15)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_14016_ok : code_14016.OK := by native_decide
/-- Code #14016 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14016_qec :
    ∃ ψ, SS.IsAmplitudes code_14016 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14016 code_14016_ok (by decide) (by decide)

/-- Catalogue code #14017: ((6,3,2)), m=15, a=[1, 9, 9, 11, 11, 14], S=[0, 2, 10]. -/
def code_14017 : ExampleData 6 15 3 where
  a := ![(1 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15), (10 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]
theorem code_14017_ok : code_14017.OK := by native_decide
/-- Code #14017 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14017_qec :
    ∃ ψ, SS.IsAmplitudes code_14017 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14017 code_14017_ok (by decide) (by decide)

/-- Catalogue code #14018: ((6,3,2)), m=15, a=[1, 9, 9, 11, 11, 14], S=[0, 8, 10]. -/
def code_14018 : ExampleData 6 15 3 where
  a := ![(1 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]
theorem code_14018_ok : code_14018.OK := by native_decide
/-- Code #14018 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14018_qec :
    ∃ ψ, SS.IsAmplitudes code_14018 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14018 code_14018_ok (by decide) (by decide)

/-- Catalogue code #14019: ((6,3,2)), m=15, a=[2, 2, 3, 3, 7, 8], S=[0, 10, 11]. -/
def code_14019 : ExampleData 6 15 3 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]
theorem code_14019_ok : code_14019.OK := by native_decide
/-- Code #14019 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14019_qec :
    ∃ ψ, SS.IsAmplitudes code_14019 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14019 code_14019_ok (by decide) (by decide)

/-- Catalogue code #14020: ((6,3,2)), m=15, a=[2, 2, 3, 3, 7, 8], S=[0, 10, 14]. -/
def code_14020 : ExampleData 6 15 3 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]
theorem code_14020_ok : code_14020.OK := by native_decide
/-- Code #14020 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14020_qec :
    ∃ ψ, SS.IsAmplitudes code_14020 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14020 code_14020_ok (by decide) (by decide)

/-- Catalogue code #14021: ((6,3,2)), m=15, a=[2, 2, 3, 7, 7, 12], S=[0, 4, 14]. -/
def code_14021 : ExampleData 6 15 3 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-11 : ℚ) / 15)]
theorem code_14021_ok : code_14021.OK := by native_decide
/-- Code #14021 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14021_qec :
    ∃ ψ, SS.IsAmplitudes code_14021 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14021 code_14021_ok (by decide) (by decide)

/-- Catalogue code #14022: ((6,3,2)), m=15, a=[2, 2, 3, 8, 8, 12], S=[0, 1, 5]. -/
def code_14022 : ExampleData 6 15 3 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15), (5 : ZMod 15)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-11 : ℚ) / 15)]
theorem code_14022_ok : code_14022.OK := by native_decide
/-- Code #14022 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14022_qec :
    ∃ ψ, SS.IsAmplitudes code_14022 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14022 code_14022_ok (by decide) (by decide)

/-- Catalogue code #14023: ((6,3,2)), m=15, a=[2, 2, 3, 8, 8, 12], S=[0, 4, 5]. -/
def code_14023 : ExampleData 6 15 3 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]
theorem code_14023_ok : code_14023.OK := by native_decide
/-- Code #14023 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14023_qec :
    ∃ ψ, SS.IsAmplitudes code_14023 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14023 code_14023_ok (by decide) (by decide)

/-- Catalogue code #14024: ((6,3,2)), m=15, a=[3, 3, 8, 8, 13, 13], S=[0, 4, 14]. -/
def code_14024 : ExampleData 6 15 3 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]
theorem code_14024_ok : code_14024.OK := by native_decide
/-- Code #14024 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14024_qec :
    ∃ ψ, SS.IsAmplitudes code_14024 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14024 code_14024_ok (by decide) (by decide)

/-- Catalogue code #14025: ((6,3,2)), m=15, a=[3, 7, 7, 12, 13, 13], S=[0, 10, 11]. -/
def code_14025 : ExampleData 6 15 3 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]
theorem code_14025_ok : code_14025.OK := by native_decide
/-- Code #14025 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14025_qec :
    ∃ ψ, SS.IsAmplitudes code_14025 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14025 code_14025_ok (by decide) (by decide)

/-- Catalogue code #14026: ((6,3,2)), m=15, a=[3, 7, 7, 12, 13, 13], S=[0, 10, 14]. -/
def code_14026 : ExampleData 6 15 3 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]
theorem code_14026_ok : code_14026.OK := by native_decide
/-- Code #14026 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14026_qec :
    ∃ ψ, SS.IsAmplitudes code_14026 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14026 code_14026_ok (by decide) (by decide)

/-- Catalogue code #14027: ((6,3,2)), m=15, a=[3, 7, 8, 12, 13, 13], S=[0, 5, 10]. -/
def code_14027 : ExampleData 6 15 3 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (5 : ZMod 15), (10 : ZMod 15)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14027_ok : code_14027.OK := by native_decide
/-- Code #14027 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14027_qec :
    ∃ ψ, SS.IsAmplitudes code_14027 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14027 code_14027_ok (by decide) (by decide)

/-- Catalogue code #14028: ((6,3,2)), m=15, a=[3, 8, 8, 12, 13, 13], S=[0, 1, 11]. -/
def code_14028 : ExampleData 6 15 3 where
  a := ![(3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]
theorem code_14028_ok : code_14028.OK := by native_decide
/-- Code #14028 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14028_qec :
    ∃ ψ, SS.IsAmplitudes code_14028 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14028 code_14028_ok (by decide) (by decide)

/-- Catalogue code #14029: ((6,3,2)), m=15, a=[4, 4, 6, 9, 14, 14], S=[0, 8, 13]. -/
def code_14029 : ExampleData 6 15 3 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]
theorem code_14029_ok : code_14029.OK := by native_decide
/-- Code #14029 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14029_qec :
    ∃ ψ, SS.IsAmplitudes code_14029 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14029 code_14029_ok (by decide) (by decide)

/-- Catalogue code #14030: ((6,3,2)), m=15, a=[4, 6, 6, 11, 14, 14], S=[0, 2, 10]. -/
def code_14030 : ExampleData 6 15 3 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15), (10 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]
theorem code_14030_ok : code_14030.OK := by native_decide
/-- Code #14030 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14030_qec :
    ∃ ψ, SS.IsAmplitudes code_14030 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14030 code_14030_ok (by decide) (by decide)

/-- Catalogue code #14031: ((6,3,2)), m=15, a=[4, 6, 6, 11, 14, 14], S=[0, 8, 10]. -/
def code_14031 : ExampleData 6 15 3 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]
theorem code_14031_ok : code_14031.OK := by native_decide
/-- Code #14031 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14031_qec :
    ∃ ψ, SS.IsAmplitudes code_14031 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14031 code_14031_ok (by decide) (by decide)

/-- Catalogue code #14032: ((6,3,2)), m=15, a=[6, 9, 11, 11, 14, 14], S=[0, 5, 7]. -/
def code_14032 : ExampleData 6 15 3 where
  a := ![(6 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]
theorem code_14032_ok : code_14032.OK := by native_decide
/-- Code #14032 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14032_qec :
    ∃ ψ, SS.IsAmplitudes code_14032 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14032 code_14032_ok (by decide) (by decide)

/-- Catalogue code #14033: ((6,3,2)), m=15, a=[6, 9, 11, 11, 14, 14], S=[0, 5, 13]. -/
def code_14033 : ExampleData 6 15 3 where
  a := ![(6 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (5 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]
theorem code_14033_ok : code_14033.OK := by native_decide
/-- Code #14033 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14033_qec :
    ∃ ψ, SS.IsAmplitudes code_14033 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14033 code_14033_ok (by decide) (by decide)

/-- Catalogue code #14034: ((6,3,2)), m=15, a=[7, 8, 12, 12, 13, 13], S=[0, 1, 5]. -/
def code_14034 : ExampleData 6 15 3 where
  a := ![(7 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15), (5 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]
theorem code_14034_ok : code_14034.OK := by native_decide
/-- Code #14034 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14034_qec :
    ∃ ψ, SS.IsAmplitudes code_14034 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14034 code_14034_ok (by decide) (by decide)

/-- Catalogue code #14035: ((6,3,2)), m=16, a=[1, 1, 4, 4, 7, 7], S=[0, 2, 8]. -/
def code_14035 : ExampleData 6 16 3 where
  a := ![(1 : ZMod 16), (1 : ZMod 16), (4 : ZMod 16), (4 : ZMod 16), (7 : ZMod 16), (7 : ZMod 16)]
  S := ![(0 : ZMod 16), (2 : ZMod 16), (8 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]
theorem code_14035_ok : code_14035.OK := by native_decide
/-- Code #14035 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14035_qec :
    ∃ ψ, SS.IsAmplitudes code_14035 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14035 code_14035_ok (by decide) (by decide)

/-- Catalogue code #14036: ((6,3,2)), m=16, a=[1, 1, 7, 7, 12, 12], S=[0, 8, 14]. -/
def code_14036 : ExampleData 6 16 3 where
  a := ![(1 : ZMod 16), (1 : ZMod 16), (7 : ZMod 16), (7 : ZMod 16), (12 : ZMod 16), (12 : ZMod 16)]
  S := ![(0 : ZMod 16), (8 : ZMod 16), (14 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]
theorem code_14036_ok : code_14036.OK := by native_decide
/-- Code #14036 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14036_qec :
    ∃ ψ, SS.IsAmplitudes code_14036 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14036 code_14036_ok (by decide) (by decide)

/-- Catalogue code #14037: ((6,3,2)), m=16, a=[1, 2, 3, 5, 6, 7], S=[0, 4, 12]. -/
def code_14037 : ExampleData 6 16 3 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (3 : ZMod 16), (5 : ZMod 16), (6 : ZMod 16), (7 : ZMod 16)]
  S := ![(0 : ZMod 16), (4 : ZMod 16), (12 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_14037_ok : code_14037.OK := by native_decide
/-- Code #14037 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14037_qec :
    ∃ ψ, SS.IsAmplitudes code_14037 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14037 code_14037_ok (by decide) (by decide)

/-- Catalogue code #14038: ((6,3,2)), m=16, a=[1, 2, 4, 4, 6, 7], S=[0, 8, 11]. -/
def code_14038 : ExampleData 6 16 3 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (4 : ZMod 16), (4 : ZMod 16), (6 : ZMod 16), (7 : ZMod 16)]
  S := ![(0 : ZMod 16), (8 : ZMod 16), (11 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), (0 : ℚ)]
theorem code_14038_ok : code_14038.OK := by native_decide
/-- Code #14038 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14038_qec :
    ∃ ψ, SS.IsAmplitudes code_14038 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14038 code_14038_ok (by decide) (by decide)

/-- Catalogue code #14039: ((6,3,2)), m=16, a=[1, 2, 4, 4, 6, 7], S=[0, 8, 13]. -/
def code_14039 : ExampleData 6 16 3 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (4 : ZMod 16), (4 : ZMod 16), (6 : ZMod 16), (7 : ZMod 16)]
  S := ![(0 : ZMod 16), (8 : ZMod 16), (13 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 2), (0 : ℚ)]
theorem code_14039_ok : code_14039.OK := by native_decide
/-- Code #14039 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14039_qec :
    ∃ ψ, SS.IsAmplitudes code_14039 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14039 code_14039_ok (by decide) (by decide)

/-- Catalogue code #14040: ((6,3,2)), m=16, a=[1, 2, 4, 4, 9, 10], S=[0, 3, 11]. -/
def code_14040 : ExampleData 6 16 3 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (4 : ZMod 16), (4 : ZMod 16), (9 : ZMod 16), (10 : ZMod 16)]
  S := ![(0 : ZMod 16), (3 : ZMod 16), (11 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 16)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), ((1 : ℚ) / 2)]
theorem code_14040_ok : code_14040.OK := by native_decide
/-- Code #14040 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14040_qec :
    ∃ ψ, SS.IsAmplitudes code_14040 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14040 code_14040_ok (by decide) (by decide)

/-- Catalogue code #14041: ((6,3,2)), m=16, a=[1, 2, 4, 6, 9, 12], S=[0, 5, 13]. -/
def code_14041 : ExampleData 6 16 3 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (4 : ZMod 16), (6 : ZMod 16), (9 : ZMod 16), (12 : ZMod 16)]
  S := ![(0 : ZMod 16), (5 : ZMod 16), (13 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 4)]
theorem code_14041_ok : code_14041.OK := by native_decide
/-- Code #14041 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14041_qec :
    ∃ ψ, SS.IsAmplitudes code_14041 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14041 code_14041_ok (by decide) (by decide)

/-- Catalogue code #14042: ((6,3,2)), m=16, a=[1, 2, 6, 7, 12, 12], S=[0, 3, 8]. -/
def code_14042 : ExampleData 6 16 3 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (6 : ZMod 16), (7 : ZMod 16), (12 : ZMod 16), (12 : ZMod 16)]
  S := ![(0 : ZMod 16), (3 : ZMod 16), (8 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 16)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4)]
theorem code_14042_ok : code_14042.OK := by native_decide
/-- Code #14042 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14042_qec :
    ∃ ψ, SS.IsAmplitudes code_14042 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14042 code_14042_ok (by decide) (by decide)

/-- Catalogue code #14043: ((6,3,2)), m=16, a=[1, 4, 4, 7, 10, 14], S=[0, 3, 8]. -/
def code_14043 : ExampleData 6 16 3 where
  a := ![(1 : ZMod 16), (4 : ZMod 16), (4 : ZMod 16), (7 : ZMod 16), (10 : ZMod 16), (14 : ZMod 16)]
  S := ![(0 : ZMod 16), (3 : ZMod 16), (8 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 16)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2)]
theorem code_14043_ok : code_14043.OK := by native_decide
/-- Code #14043 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14043_qec :
    ∃ ψ, SS.IsAmplitudes code_14043 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14043 code_14043_ok (by decide) (by decide)

/-- Catalogue code #14044: ((6,3,2)), m=16, a=[1, 4, 6, 9, 12, 14], S=[0, 3, 11]. -/
def code_14044 : ExampleData 6 16 3 where
  a := ![(1 : ZMod 16), (4 : ZMod 16), (6 : ZMod 16), (9 : ZMod 16), (12 : ZMod 16), (14 : ZMod 16)]
  S := ![(0 : ZMod 16), (3 : ZMod 16), (11 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 16)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((-1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 4), ((1 : ℚ) / 2)]
theorem code_14044_ok : code_14044.OK := by native_decide
/-- Code #14044 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14044_qec :
    ∃ ψ, SS.IsAmplitudes code_14044 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14044 code_14044_ok (by decide) (by decide)

/-- Catalogue code #14045: ((6,3,2)), m=16, a=[1, 7, 10, 12, 12, 14], S=[0, 8, 11]. -/
def code_14045 : ExampleData 6 16 3 where
  a := ![(1 : ZMod 16), (7 : ZMod 16), (10 : ZMod 16), (12 : ZMod 16), (12 : ZMod 16), (14 : ZMod 16)]
  S := ![(0 : ZMod 16), (8 : ZMod 16), (11 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 2)]
theorem code_14045_ok : code_14045.OK := by native_decide
/-- Code #14045 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14045_qec :
    ∃ ψ, SS.IsAmplitudes code_14045 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14045 code_14045_ok (by decide) (by decide)

/-- Catalogue code #14046: ((6,3,2)), m=16, a=[2, 3, 4, 4, 5, 6], S=[0, 8, 9]. -/
def code_14046 : ExampleData 6 16 3 where
  a := ![(2 : ZMod 16), (3 : ZMod 16), (4 : ZMod 16), (4 : ZMod 16), (5 : ZMod 16), (6 : ZMod 16)]
  S := ![(0 : ZMod 16), (8 : ZMod 16), (9 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), ((1 : ℚ) / 2)]
theorem code_14046_ok : code_14046.OK := by native_decide
/-- Code #14046 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14046_qec :
    ∃ ψ, SS.IsAmplitudes code_14046 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14046 code_14046_ok (by decide) (by decide)

/-- Catalogue code #14047: ((6,3,2)), m=16, a=[2, 3, 4, 10, 11, 12], S=[0, 1, 9]. -/
def code_14047 : ExampleData 6 16 3 where
  a := ![(2 : ZMod 16), (3 : ZMod 16), (4 : ZMod 16), (10 : ZMod 16), (11 : ZMod 16), (12 : ZMod 16)]
  S := ![(0 : ZMod 16), (1 : ZMod 16), (9 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 4)]
theorem code_14047_ok : code_14047.OK := by native_decide
/-- Code #14047 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14047_qec :
    ∃ ψ, SS.IsAmplitudes code_14047 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14047 code_14047_ok (by decide) (by decide)

/-- Catalogue code #14048: ((6,3,2)), m=16, a=[2, 3, 5, 6, 12, 12], S=[0, 1, 8]. -/
def code_14048 : ExampleData 6 16 3 where
  a := ![(2 : ZMod 16), (3 : ZMod 16), (5 : ZMod 16), (6 : ZMod 16), (12 : ZMod 16), (12 : ZMod 16)]
  S := ![(0 : ZMod 16), (1 : ZMod 16), (8 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 16)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_14048_ok : code_14048.OK := by native_decide
/-- Code #14048 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14048_qec :
    ∃ ψ, SS.IsAmplitudes code_14048 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14048 code_14048_ok (by decide) (by decide)

/-- Catalogue code #14049: ((6,3,2)), m=16, a=[2, 4, 4, 5, 10, 13], S=[0, 7, 15]. -/
def code_14049 : ExampleData 6 16 3 where
  a := ![(2 : ZMod 16), (4 : ZMod 16), (4 : ZMod 16), (5 : ZMod 16), (10 : ZMod 16), (13 : ZMod 16)]
  S := ![(0 : ZMod 16), (7 : ZMod 16), (15 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 16)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ)]
theorem code_14049_ok : code_14049.OK := by native_decide
/-- Code #14049 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14049_qec :
    ∃ ψ, SS.IsAmplitudes code_14049 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14049 code_14049_ok (by decide) (by decide)

/-- Catalogue code #14050: ((6,3,2)), m=16, a=[2, 4, 4, 6, 9, 15], S=[0, 3, 8]. -/
def code_14050 : ExampleData 6 16 3 where
  a := ![(2 : ZMod 16), (4 : ZMod 16), (4 : ZMod 16), (6 : ZMod 16), (9 : ZMod 16), (15 : ZMod 16)]
  S := ![(0 : ZMod 16), (3 : ZMod 16), (8 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 16)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]
theorem code_14050_ok : code_14050.OK := by native_decide
/-- Code #14050 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14050_qec :
    ∃ ψ, SS.IsAmplitudes code_14050 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14050 code_14050_ok (by decide) (by decide)

/-- Catalogue code #14051: ((6,3,2)), m=16, a=[2, 4, 7, 10, 12, 15], S=[0, 5, 13]. -/
def code_14051 : ExampleData 6 16 3 where
  a := ![(2 : ZMod 16), (4 : ZMod 16), (7 : ZMod 16), (10 : ZMod 16), (12 : ZMod 16), (15 : ZMod 16)]
  S := ![(0 : ZMod 16), (5 : ZMod 16), (13 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 4), (0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 4), (0 : ℚ)]
theorem code_14051_ok : code_14051.OK := by native_decide
/-- Code #14051 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14051_qec :
    ∃ ψ, SS.IsAmplitudes code_14051 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14051 code_14051_ok (by decide) (by decide)

/-- Catalogue code #14052: ((6,3,2)), m=16, a=[2, 6, 9, 12, 12, 15], S=[0, 8, 11]. -/
def code_14052 : ExampleData 6 16 3 where
  a := ![(2 : ZMod 16), (6 : ZMod 16), (9 : ZMod 16), (12 : ZMod 16), (12 : ZMod 16), (15 : ZMod 16)]
  S := ![(0 : ZMod 16), (8 : ZMod 16), (11 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ)]
theorem code_14052_ok : code_14052.OK := by native_decide
/-- Code #14052 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14052_qec :
    ∃ ψ, SS.IsAmplitudes code_14052 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14052 code_14052_ok (by decide) (by decide)

/-- Catalogue code #14053: ((6,3,2)), m=16, a=[3, 5, 10, 12, 12, 14], S=[0, 8, 9]. -/
def code_14053 : ExampleData 6 16 3 where
  a := ![(3 : ZMod 16), (5 : ZMod 16), (10 : ZMod 16), (12 : ZMod 16), (12 : ZMod 16), (14 : ZMod 16)]
  S := ![(0 : ZMod 16), (8 : ZMod 16), (9 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 2)]
theorem code_14053_ok : code_14053.OK := by native_decide
/-- Code #14053 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14053_qec :
    ∃ ψ, SS.IsAmplitudes code_14053 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14053 code_14053_ok (by decide) (by decide)

/-- Catalogue code #14054: ((6,3,2)), m=16, a=[4, 4, 10, 11, 13, 14], S=[0, 8, 9]. -/
def code_14054 : ExampleData 6 16 3 where
  a := ![(4 : ZMod 16), (4 : ZMod 16), (10 : ZMod 16), (11 : ZMod 16), (13 : ZMod 16), (14 : ZMod 16)]
  S := ![(0 : ZMod 16), (8 : ZMod 16), (9 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2)]
theorem code_14054_ok : code_14054.OK := by native_decide
/-- Code #14054 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14054_qec :
    ∃ ψ, SS.IsAmplitudes code_14054 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14054 code_14054_ok (by decide) (by decide)

/-- Catalogue code #14055: ((6,3,2)), m=16, a=[6, 7, 12, 12, 14, 15], S=[0, 5, 13]. -/
def code_14055 : ExampleData 6 16 3 where
  a := ![(6 : ZMod 16), (7 : ZMod 16), (12 : ZMod 16), (12 : ZMod 16), (14 : ZMod 16), (15 : ZMod 16)]
  S := ![(0 : ZMod 16), (5 : ZMod 16), (13 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 2), (0 : ℚ)]
theorem code_14055_ok : code_14055.OK := by native_decide
/-- Code #14055 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14055_qec :
    ∃ ψ, SS.IsAmplitudes code_14055 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14055 code_14055_ok (by decide) (by decide)

/-- Catalogue code #14056: ((6,3,2)), m=16, a=[10, 11, 12, 12, 13, 14], S=[0, 1, 8]. -/
def code_14056 : ExampleData 6 16 3 where
  a := ![(10 : ZMod 16), (11 : ZMod 16), (12 : ZMod 16), (12 : ZMod 16), (13 : ZMod 16), (14 : ZMod 16)]
  S := ![(0 : ZMod 16), (1 : ZMod 16), (8 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 16)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), ((-1 : ℚ) / 2)]
theorem code_14056_ok : code_14056.OK := by native_decide
/-- Code #14056 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14056_qec :
    ∃ ψ, SS.IsAmplitudes code_14056 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14056 code_14056_ok (by decide) (by decide)

/-- Catalogue code #14057: ((6,3,2)), m=18, a=[1, 2, 4, 5, 7, 8], S=[0, 3, 9]. -/
def code_14057 : ExampleData 6 18 3 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (9 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_14057_ok : code_14057.OK := by native_decide
/-- Code #14057 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14057_qec :
    ∃ ψ, SS.IsAmplitudes code_14057 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14057 code_14057_ok (by decide) (by decide)

/-- Catalogue code #14058: ((6,3,2)), m=18, a=[1, 2, 4, 5, 10, 11], S=[0, 3, 12]. -/
def code_14058 : ExampleData 6 18 3 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (12 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}, {![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14058_ok : code_14058.OK := by native_decide
/-- Code #14058 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14058_qec :
    ∃ ψ, SS.IsAmplitudes code_14058 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14058 code_14058_ok (by decide) (by decide)

/-- Catalogue code #14059: ((6,3,2)), m=18, a=[1, 2, 4, 8, 11, 13], S=[0, 6, 15]. -/
def code_14059 : ExampleData 6 18 3 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (6 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14059_ok : code_14059.OK := by native_decide
/-- Code #14059 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14059_qec :
    ∃ ψ, SS.IsAmplitudes code_14059 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14059 code_14059_ok (by decide) (by decide)

/-- Catalogue code #14060: ((6,3,2)), m=18, a=[1, 2, 4, 8, 11, 13], S=[0, 12, 15]. -/
def code_14060 : ExampleData 6 18 3 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14060_ok : code_14060.OK := by native_decide
/-- Code #14060 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14060_qec :
    ∃ ψ, SS.IsAmplitudes code_14060 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14060 code_14060_ok (by decide) (by decide)

/-- Catalogue code #14061: ((6,3,2)), m=18, a=[1, 2, 5, 7, 10, 14], S=[0, 6, 15]. -/
def code_14061 : ExampleData 6 18 3 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (6 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14061_ok : code_14061.OK := by native_decide
/-- Code #14061 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14061_qec :
    ∃ ψ, SS.IsAmplitudes code_14061 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14061 code_14061_ok (by decide) (by decide)

/-- Catalogue code #14062: ((6,3,2)), m=18, a=[1, 2, 7, 8, 13, 14], S=[0, 3, 9]. -/
def code_14062 : ExampleData 6 18 3 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (9 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14062_ok : code_14062.OK := by native_decide
/-- Code #14062 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14062_qec :
    ∃ ψ, SS.IsAmplitudes code_14062 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14062 code_14062_ok (by decide) (by decide)

/-- Catalogue code #14063: ((6,3,2)), m=18, a=[1, 2, 10, 11, 13, 14], S=[0, 3, 12]. -/
def code_14063 : ExampleData 6 18 3 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (12 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14063_ok : code_14063.OK := by native_decide
/-- Code #14063 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14063_qec :
    ∃ ψ, SS.IsAmplitudes code_14063 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14063 code_14063_ok (by decide) (by decide)

/-- Catalogue code #14064: ((6,3,2)), m=18, a=[1, 4, 7, 10, 13, 16], S=[0, 3, 6]. -/
def code_14064 : ExampleData 6 18 3 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18)]
  supp := ![{![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14064_ok : code_14064.OK := by native_decide
/-- Code #14064 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14064_qec :
    ∃ ψ, SS.IsAmplitudes code_14064 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14064 code_14064_ok (by decide) (by decide)

/-- Catalogue code #14065: ((6,3,2)), m=18, a=[1, 4, 7, 10, 13, 16], S=[0, 3, 12]. -/
def code_14065 : ExampleData 6 18 3 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (12 : ZMod 18)]
  supp := ![{![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14065_ok : code_14065.OK := by native_decide
/-- Code #14065 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14065_qec :
    ∃ ψ, SS.IsAmplitudes code_14065 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14065 code_14065_ok (by decide) (by decide)

/-- Catalogue code #14066: ((6,3,2)), m=18, a=[1, 5, 7, 8, 14, 16], S=[0, 3, 12]. -/
def code_14066 : ExampleData 6 18 3 where
  a := ![(1 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (12 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_14066_ok : code_14066.OK := by native_decide
/-- Code #14066 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14066_qec :
    ∃ ψ, SS.IsAmplitudes code_14066 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14066 code_14066_ok (by decide) (by decide)

/-- Catalogue code #14067: ((6,3,2)), m=18, a=[1, 5, 10, 11, 14, 16], S=[0, 6, 15]. -/
def code_14067 : ExampleData 6 18 3 where
  a := ![(1 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (6 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14067_ok : code_14067.OK := by native_decide
/-- Code #14067 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14067_qec :
    ∃ ψ, SS.IsAmplitudes code_14067 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14067 code_14067_ok (by decide) (by decide)

/-- Catalogue code #14068: ((6,3,2)), m=18, a=[1, 8, 11, 13, 14, 16], S=[0, 3, 15]. -/
def code_14068 : ExampleData 6 18 3 where
  a := ![(1 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14068_ok : code_14068.OK := by native_decide
/-- Code #14068 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14068_qec :
    ∃ ψ, SS.IsAmplitudes code_14068 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14068 code_14068_ok (by decide) (by decide)

/-- Catalogue code #14069: ((6,3,2)), m=18, a=[2, 7, 10, 13, 14, 17], S=[0, 3, 9]. -/
def code_14069 : ExampleData 6 18 3 where
  a := ![(2 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (9 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14069_ok : code_14069.OK := by native_decide
/-- Code #14069 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14069_qec :
    ∃ ψ, SS.IsAmplitudes code_14069 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14069 code_14069_ok (by decide) (by decide)

/-- Catalogue code #14070: ((6,3,2)), m=18, a=[2, 7, 10, 13, 14, 17], S=[0, 9, 12]. -/
def code_14070 : ExampleData 6 18 3 where
  a := ![(2 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_14070_ok : code_14070.OK := by native_decide
/-- Code #14070 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14070_qec :
    ∃ ψ, SS.IsAmplitudes code_14070 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14070 code_14070_ok (by decide) (by decide)

/-- Catalogue code #14071: ((6,3,2)), m=18, a=[4, 8, 11, 13, 16, 17], S=[0, 3, 6]. -/
def code_14071 : ExampleData 6 18 3 where
  a := ![(4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14071_ok : code_14071.OK := by native_decide
/-- Code #14071 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14071_qec :
    ∃ ψ, SS.IsAmplitudes code_14071 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14071 code_14071_ok (by decide) (by decide)

/-- Catalogue code #14072: ((6,3,2)), m=18, a=[4, 8, 11, 13, 16, 17], S=[0, 3, 12]. -/
def code_14072 : ExampleData 6 18 3 where
  a := ![(4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (12 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14072_ok : code_14072.OK := by native_decide
/-- Code #14072 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14072_qec :
    ∃ ψ, SS.IsAmplitudes code_14072 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14072 code_14072_ok (by decide) (by decide)

/-- Catalogue code #14073: ((6,3,2)), m=18, a=[5, 7, 10, 14, 16, 17], S=[0, 3, 6]. -/
def code_14073 : ExampleData 6 18 3 where
  a := ![(5 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14073_ok : code_14073.OK := by native_decide
/-- Code #14073 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14073_qec :
    ∃ ψ, SS.IsAmplitudes code_14073 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14073 code_14073_ok (by decide) (by decide)

/-- Catalogue code #14074: ((6,3,2)), m=18, a=[5, 7, 10, 14, 16, 17], S=[0, 3, 12]. -/
def code_14074 : ExampleData 6 18 3 where
  a := ![(5 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (12 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14074_ok : code_14074.OK := by native_decide
/-- Code #14074 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14074_qec :
    ∃ ψ, SS.IsAmplitudes code_14074 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14074 code_14074_ok (by decide) (by decide)

/-- Catalogue code #14075: ((6,3,2)), m=18, a=[7, 8, 13, 14, 16, 17], S=[0, 6, 15]. -/
def code_14075 : ExampleData 6 18 3 where
  a := ![(7 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (6 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_14075_ok : code_14075.OK := by native_decide
/-- Code #14075 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14075_qec :
    ∃ ψ, SS.IsAmplitudes code_14075 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14075 code_14075_ok (by decide) (by decide)

/-- Catalogue code #14076: ((6,3,2)), m=18, a=[7, 8, 13, 14, 16, 17], S=[0, 12, 15]. -/
def code_14076 : ExampleData 6 18 3 where
  a := ![(7 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_14076_ok : code_14076.OK := by native_decide
/-- Code #14076 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14076_qec :
    ∃ ψ, SS.IsAmplitudes code_14076 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14076 code_14076_ok (by decide) (by decide)

/-- Catalogue code #14077: ((6,4,2)), m=8, a=[1, 1, 1, 3, 3, 3], S=[0, 2, 4, 6]. -/
def code_14077 : ExampleData 6 8 4 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_14077_ok : code_14077.OK := by native_decide
/-- Code #14077 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14077_qec :
    ∃ ψ, SS.IsAmplitudes code_14077 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14077 code_14077_ok (by decide) (by decide)

/-- Catalogue code #14078: ((6,4,2)), m=8, a=[1, 1, 5, 5, 5, 7], S=[0, 2, 4, 6]. -/
def code_14078 : ExampleData 6 8 4 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_14078_ok : code_14078.OK := by native_decide
/-- Code #14078 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14078_qec :
    ∃ ψ, SS.IsAmplitudes code_14078 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14078 code_14078_ok (by decide) (by decide)

/-- Catalogue code #14079: ((6,4,2)), m=12, a=[1, 1, 2, 4, 5, 5], S=[0, 3, 6, 9]. -/
def code_14079 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_14079_ok : code_14079.OK := by native_decide
/-- Code #14079 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14079_qec :
    ∃ ψ, SS.IsAmplitudes code_14079 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14079 code_14079_ok (by decide) (by decide)

/-- Catalogue code #14080: ((6,4,2)), m=12, a=[1, 1, 3, 3, 5, 5], S=[0, 2, 6, 10]. -/
def code_14080 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}, {![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_14080_ok : code_14080.OK := by native_decide
/-- Code #14080 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14080_qec :
    ∃ ψ, SS.IsAmplitudes code_14080 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14080 code_14080_ok (by decide) (by decide)

/-- Catalogue code #14081: ((6,4,2)), m=12, a=[1, 1, 3, 3, 5, 7], S=[0, 4, 8, 10]. -/
def code_14081 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_14081_ok : code_14081.OK := by native_decide
/-- Code #14081 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14081_qec :
    ∃ ψ, SS.IsAmplitudes code_14081 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14081 code_14081_ok (by decide) (by decide)

/-- Catalogue code #14082: ((6,4,2)), m=12, a=[1, 1, 3, 3, 7, 7], S=[0, 2, 4, 8]. -/
def code_14082 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14082_ok : code_14082.OK := by native_decide
/-- Code #14082 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14082_qec :
    ∃ ψ, SS.IsAmplitudes code_14082 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14082 code_14082_ok (by decide) (by decide)

/-- Catalogue code #14083: ((6,4,2)), m=12, a=[1, 1, 3, 5, 5, 9], S=[0, 2, 6, 10]. -/
def code_14083 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_14083_ok : code_14083.OK := by native_decide
/-- Code #14083 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14083_qec :
    ∃ ψ, SS.IsAmplitudes code_14083 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14083 code_14083_ok (by decide) (by decide)

/-- Catalogue code #14084: ((6,4,2)), m=12, a=[1, 1, 3, 5, 7, 9], S=[0, 4, 8, 10]. -/
def code_14084 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14084_ok : code_14084.OK := by native_decide
/-- Code #14084 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14084_qec :
    ∃ ψ, SS.IsAmplitudes code_14084 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14084 code_14084_ok (by decide) (by decide)

/-- Catalogue code #14085: ((6,4,2)), m=12, a=[1, 1, 3, 7, 7, 9], S=[0, 2, 4, 8]. -/
def code_14085 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_14085_ok : code_14085.OK := by native_decide
/-- Code #14085 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14085_qec :
    ∃ ψ, SS.IsAmplitudes code_14085 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14085 code_14085_ok (by decide) (by decide)

/-- Catalogue code #14086: ((6,4,2)), m=12, a=[1, 1, 5, 5, 9, 9], S=[0, 2, 6, 10]. -/
def code_14086 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14086_ok : code_14086.OK := by native_decide
/-- Code #14086 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14086_qec :
    ∃ ψ, SS.IsAmplitudes code_14086 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14086 code_14086_ok (by decide) (by decide)

/-- Catalogue code #14087: ((6,4,2)), m=12, a=[1, 1, 5, 5, 9, 9], S=[0, 4, 6, 8]. -/
def code_14087 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_14087_ok : code_14087.OK := by native_decide
/-- Code #14087 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14087_qec :
    ∃ ψ, SS.IsAmplitudes code_14087 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14087 code_14087_ok (by decide) (by decide)

/-- Catalogue code #14088: ((6,4,2)), m=12, a=[1, 1, 7, 7, 9, 9], S=[0, 2, 4, 8]. -/
def code_14088 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14088_ok : code_14088.OK := by native_decide
/-- Code #14088 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14088_qec :
    ∃ ψ, SS.IsAmplitudes code_14088 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14088 code_14088_ok (by decide) (by decide)

/-- Catalogue code #14089: ((6,4,2)), m=12, a=[1, 2, 4, 5, 8, 10], S=[0, 3, 6, 9]. -/
def code_14089 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_14089_ok : code_14089.OK := by native_decide
/-- Code #14089 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14089_qec :
    ∃ ψ, SS.IsAmplitudes code_14089 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14089 code_14089_ok (by decide) (by decide)

/-- Catalogue code #14090: ((6,4,2)), m=12, a=[1, 3, 3, 5, 5, 11], S=[0, 2, 4, 8]. -/
def code_14090 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_14090_ok : code_14090.OK := by native_decide
/-- Code #14090 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14090_qec :
    ∃ ψ, SS.IsAmplitudes code_14090 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14090 code_14090_ok (by decide) (by decide)

/-- Catalogue code #14091: ((6,4,2)), m=12, a=[1, 3, 3, 5, 7, 11], S=[0, 2, 6, 10]. -/
def code_14091 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_14091_ok : code_14091.OK := by native_decide
/-- Code #14091 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14091_qec :
    ∃ ψ, SS.IsAmplitudes code_14091 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14091 code_14091_ok (by decide) (by decide)

/-- Catalogue code #14092: ((6,4,2)), m=12, a=[1, 3, 5, 5, 9, 11], S=[0, 2, 4, 8]. -/
def code_14092 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_14092_ok : code_14092.OK := by native_decide
/-- Code #14092 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14092_qec :
    ∃ ψ, SS.IsAmplitudes code_14092 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14092 code_14092_ok (by decide) (by decide)

/-- Catalogue code #14093: ((6,4,2)), m=12, a=[1, 3, 7, 7, 9, 11], S=[0, 4, 8, 10]. -/
def code_14093 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14093_ok : code_14093.OK := by native_decide
/-- Code #14093 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14093_qec :
    ∃ ψ, SS.IsAmplitudes code_14093 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14093 code_14093_ok (by decide) (by decide)

/-- Catalogue code #14094: ((6,4,2)), m=12, a=[1, 5, 7, 9, 9, 11], S=[0, 4, 6, 8]. -/
def code_14094 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_14094_ok : code_14094.OK := by native_decide
/-- Code #14094 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14094_qec :
    ∃ ψ, SS.IsAmplitudes code_14094 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14094 code_14094_ok (by decide) (by decide)

/-- Catalogue code #14095: ((6,4,2)), m=12, a=[1, 7, 7, 9, 9, 11], S=[0, 4, 8, 10]. -/
def code_14095 : ExampleData 6 12 4 where
  a := ![(1 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]
theorem code_14095_ok : code_14095.OK := by native_decide
/-- Code #14095 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14095_qec :
    ∃ ψ, SS.IsAmplitudes code_14095 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14095 code_14095_ok (by decide) (by decide)

/-- Catalogue code #14096: ((6,4,2)), m=12, a=[3, 3, 5, 5, 11, 11], S=[0, 4, 8, 10]. -/
def code_14096 : ExampleData 6 12 4 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14096_ok : code_14096.OK := by native_decide
/-- Code #14096 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14096_qec :
    ∃ ψ, SS.IsAmplitudes code_14096 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14096 code_14096_ok (by decide) (by decide)

/-- Catalogue code #14097: ((6,4,2)), m=12, a=[3, 3, 7, 7, 11, 11], S=[0, 2, 6, 10]. -/
def code_14097 : ExampleData 6 12 4 where
  a := ![(3 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14097_ok : code_14097.OK := by native_decide
/-- Code #14097 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14097_qec :
    ∃ ψ, SS.IsAmplitudes code_14097 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14097 code_14097_ok (by decide) (by decide)

/-- Catalogue code #14098: ((6,4,2)), m=12, a=[3, 5, 5, 9, 11, 11], S=[0, 4, 8, 10]. -/
def code_14098 : ExampleData 6 12 4 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_14098_ok : code_14098.OK := by native_decide
/-- Code #14098 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14098_qec :
    ∃ ψ, SS.IsAmplitudes code_14098 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14098 code_14098_ok (by decide) (by decide)

/-- Catalogue code #14099: ((6,4,2)), m=12, a=[3, 5, 7, 9, 11, 11], S=[0, 2, 4, 8]. -/
def code_14099 : ExampleData 6 12 4 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14099_ok : code_14099.OK := by native_decide
/-- Code #14099 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14099_qec :
    ∃ ψ, SS.IsAmplitudes code_14099 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14099 code_14099_ok (by decide) (by decide)

/-- Catalogue code #14100: ((6,4,2)), m=12, a=[3, 7, 7, 9, 11, 11], S=[0, 2, 6, 10]. -/
def code_14100 : ExampleData 6 12 4 where
  a := ![(3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_14100_ok : code_14100.OK := by native_decide
/-- Code #14100 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14100_qec :
    ∃ ψ, SS.IsAmplitudes code_14100 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14100 code_14100_ok (by decide) (by decide)

/-- Catalogue code #14101: ((6,4,2)), m=12, a=[5, 7, 9, 9, 11, 11], S=[0, 2, 4, 8]. -/
def code_14101 : ExampleData 6 12 4 where
  a := ![(5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_14101_ok : code_14101.OK := by native_decide
/-- Code #14101 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14101_qec :
    ∃ ψ, SS.IsAmplitudes code_14101 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14101 code_14101_ok (by decide) (by decide)

/-- Catalogue code #14102: ((6,4,2)), m=18, a=[1, 2, 4, 5, 10, 11], S=[0, 3, 6, 12]. -/
def code_14102 : ExampleData 6 18 4 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (12 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14102_ok : code_14102.OK := by native_decide
/-- Code #14102 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14102_qec :
    ∃ ψ, SS.IsAmplitudes code_14102 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14102 code_14102_ok (by decide) (by decide)

/-- Catalogue code #14103: ((6,4,2)), m=18, a=[1, 2, 4, 8, 11, 13], S=[0, 6, 12, 15]. -/
def code_14103 : ExampleData 6 18 4 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (6 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14103_ok : code_14103.OK := by native_decide
/-- Code #14103 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14103_qec :
    ∃ ψ, SS.IsAmplitudes code_14103 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14103 code_14103_ok (by decide) (by decide)

/-- Catalogue code #14104: ((6,4,2)), m=18, a=[1, 2, 5, 7, 10, 14], S=[0, 6, 12, 15]. -/
def code_14104 : ExampleData 6 18 4 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (6 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14104_ok : code_14104.OK := by native_decide
/-- Code #14104 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14104_qec :
    ∃ ψ, SS.IsAmplitudes code_14104 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14104 code_14104_ok (by decide) (by decide)

/-- Catalogue code #14105: ((6,4,2)), m=18, a=[1, 2, 7, 8, 13, 14], S=[0, 3, 9, 15]. -/
def code_14105 : ExampleData 6 18 4 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (9 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14105_ok : code_14105.OK := by native_decide
/-- Code #14105 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14105_qec :
    ∃ ψ, SS.IsAmplitudes code_14105 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14105 code_14105_ok (by decide) (by decide)

/-- Catalogue code #14106: ((6,4,2)), m=18, a=[1, 2, 7, 8, 13, 14], S=[0, 6, 9, 12]. -/
def code_14106 : ExampleData 6 18 4 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_14106_ok : code_14106.OK := by native_decide
/-- Code #14106 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14106_qec :
    ∃ ψ, SS.IsAmplitudes code_14106 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14106 code_14106_ok (by decide) (by decide)

/-- Catalogue code #14107: ((6,4,2)), m=18, a=[1, 2, 10, 11, 13, 14], S=[0, 3, 6, 12]. -/
def code_14107 : ExampleData 6 18 4 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (12 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14107_ok : code_14107.OK := by native_decide
/-- Code #14107 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14107_qec :
    ∃ ψ, SS.IsAmplitudes code_14107 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14107 code_14107_ok (by decide) (by decide)

/-- Catalogue code #14108: ((6,4,2)), m=18, a=[1, 5, 7, 8, 14, 16], S=[0, 3, 6, 12]. -/
def code_14108 : ExampleData 6 18 4 where
  a := ![(1 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (12 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_14108_ok : code_14108.OK := by native_decide
/-- Code #14108 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14108_qec :
    ∃ ψ, SS.IsAmplitudes code_14108 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14108 code_14108_ok (by decide) (by decide)

/-- Catalogue code #14109: ((6,4,2)), m=18, a=[1, 5, 10, 11, 14, 16], S=[0, 6, 12, 15]. -/
def code_14109 : ExampleData 6 18 4 where
  a := ![(1 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (6 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14109_ok : code_14109.OK := by native_decide
/-- Code #14109 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14109_qec :
    ∃ ψ, SS.IsAmplitudes code_14109 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14109 code_14109_ok (by decide) (by decide)

/-- Catalogue code #14110: ((6,4,2)), m=18, a=[1, 8, 11, 13, 14, 16], S=[0, 3, 9, 15]. -/
def code_14110 : ExampleData 6 18 4 where
  a := ![(1 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (9 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14110_ok : code_14110.OK := by native_decide
/-- Code #14110 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14110_qec :
    ∃ ψ, SS.IsAmplitudes code_14110 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14110 code_14110_ok (by decide) (by decide)

/-- Catalogue code #14111: ((6,4,2)), m=18, a=[2, 4, 5, 7, 10, 17], S=[0, 3, 9, 15]. -/
def code_14111 : ExampleData 6 18 4 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (9 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_14111_ok : code_14111.OK := by native_decide
/-- Code #14111 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14111_qec :
    ∃ ψ, SS.IsAmplitudes code_14111 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14111 code_14111_ok (by decide) (by decide)

/-- Catalogue code #14112: ((6,4,2)), m=18, a=[2, 7, 10, 13, 14, 17], S=[0, 3, 9, 15]. -/
def code_14112 : ExampleData 6 18 4 where
  a := ![(2 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (9 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14112_ok : code_14112.OK := by native_decide
/-- Code #14112 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14112_qec :
    ∃ ψ, SS.IsAmplitudes code_14112 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14112 code_14112_ok (by decide) (by decide)

/-- Catalogue code #14113: ((6,4,2)), m=18, a=[4, 5, 7, 8, 16, 17], S=[0, 6, 12, 15]. -/
def code_14113 : ExampleData 6 18 4 where
  a := ![(4 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (6 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14113_ok : code_14113.OK := by native_decide
/-- Code #14113 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14113_qec :
    ∃ ψ, SS.IsAmplitudes code_14113 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14113 code_14113_ok (by decide) (by decide)

/-- Catalogue code #14114: ((6,4,2)), m=18, a=[4, 8, 11, 13, 16, 17], S=[0, 3, 6, 12]. -/
def code_14114 : ExampleData 6 18 4 where
  a := ![(4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (12 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_14114_ok : code_14114.OK := by native_decide
/-- Code #14114 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14114_qec :
    ∃ ψ, SS.IsAmplitudes code_14114 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14114 code_14114_ok (by decide) (by decide)

/-- Catalogue code #14115: ((6,4,2)), m=18, a=[7, 8, 13, 14, 16, 17], S=[0, 6, 12, 15]. -/
def code_14115 : ExampleData 6 18 4 where
  a := ![(7 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (6 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_14115_ok : code_14115.OK := by native_decide
/-- Code #14115 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14115_qec :
    ∃ ψ, SS.IsAmplitudes code_14115 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14115 code_14115_ok (by decide) (by decide)

end Catalogue.Chunk028
