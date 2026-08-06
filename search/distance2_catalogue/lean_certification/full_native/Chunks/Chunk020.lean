import SS

namespace Catalogue.Chunk020

open SS SS.Verify

/-- Catalogue code #10000: ((6,2,2)), m=14, a=[3, 4, 5, 5, 7, 8], S=[0, 12]. -/
def code_10000 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_10000_ok : code_10000.OK := by native_decide
/-- Code #10000 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10000_qec :
    ∃ ψ, SS.IsAmplitudes code_10000 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10000 code_10000_ok (by decide) (by decide)

/-- Catalogue code #10001: ((6,2,2)), m=14, a=[3, 4, 5, 5, 7, 11], S=[0, 1]. -/
def code_10001 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10001_ok : code_10001.OK := by native_decide
/-- Code #10001 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10001_qec :
    ∃ ψ, SS.IsAmplitudes code_10001 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10001 code_10001_ok (by decide) (by decide)

/-- Catalogue code #10002: ((6,2,2)), m=14, a=[3, 4, 5, 5, 7, 11], S=[0, 6]. -/
def code_10002 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10002_ok : code_10002.OK := by native_decide
/-- Code #10002 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10002_qec :
    ∃ ψ, SS.IsAmplitudes code_10002 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10002 code_10002_ok (by decide) (by decide)

/-- Catalogue code #10003: ((6,2,2)), m=14, a=[3, 4, 5, 5, 7, 11], S=[0, 13]. -/
def code_10003 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10003_ok : code_10003.OK := by native_decide
/-- Code #10003 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10003_qec :
    ∃ ψ, SS.IsAmplitudes code_10003 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10003 code_10003_ok (by decide) (by decide)

/-- Catalogue code #10004: ((6,2,2)), m=14, a=[3, 4, 5, 5, 7, 13], S=[0, 6]. -/
def code_10004 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10004_ok : code_10004.OK := by native_decide
/-- Code #10004 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10004_qec :
    ∃ ψ, SS.IsAmplitudes code_10004 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10004 code_10004_ok (by decide) (by decide)

/-- Catalogue code #10005: ((6,2,2)), m=14, a=[3, 4, 5, 5, 11, 13], S=[0, 6]. -/
def code_10005 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10005_ok : code_10005.OK := by native_decide
/-- Code #10005 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10005_qec :
    ∃ ψ, SS.IsAmplitudes code_10005 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10005 code_10005_ok (by decide) (by decide)

/-- Catalogue code #10006: ((6,2,2)), m=14, a=[3, 4, 5, 6, 6, 7], S=[0, 1]. -/
def code_10006 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10006_ok : code_10006.OK := by native_decide
/-- Code #10006 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10006_qec :
    ∃ ψ, SS.IsAmplitudes code_10006 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10006 code_10006_ok (by decide) (by decide)

/-- Catalogue code #10007: ((6,2,2)), m=14, a=[3, 4, 5, 6, 6, 12], S=[0, 1]. -/
def code_10007 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), (0 : ℚ), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10007_ok : code_10007.OK := by native_decide
/-- Code #10007 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10007_qec :
    ∃ ψ, SS.IsAmplitudes code_10007 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10007 code_10007_ok (by decide) (by decide)

/-- Catalogue code #10008: ((6,2,2)), m=14, a=[3, 4, 5, 6, 6, 13], S=[0, 2]. -/
def code_10008 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10008_ok : code_10008.OK := by native_decide
/-- Code #10008 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10008_qec :
    ∃ ψ, SS.IsAmplitudes code_10008 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10008 code_10008_ok (by decide) (by decide)

/-- Catalogue code #10009: ((6,2,2)), m=14, a=[3, 4, 5, 6, 7, 9], S=[0, 12]. -/
def code_10009 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10009_ok : code_10009.OK := by native_decide
/-- Code #10009 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10009_qec :
    ∃ ψ, SS.IsAmplitudes code_10009 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10009 code_10009_ok (by decide) (by decide)

/-- Catalogue code #10010: ((6,2,2)), m=14, a=[3, 4, 5, 6, 7, 11], S=[0, 13]. -/
def code_10010 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10010_ok : code_10010.OK := by native_decide
/-- Code #10010 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10010_qec :
    ∃ ψ, SS.IsAmplitudes code_10010 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10010 code_10010_ok (by decide) (by decide)

/-- Catalogue code #10011: ((6,2,2)), m=14, a=[3, 4, 5, 6, 7, 12], S=[0, 1]. -/
def code_10011 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10011_ok : code_10011.OK := by native_decide
/-- Code #10011 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10011_qec :
    ∃ ψ, SS.IsAmplitudes code_10011 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10011 code_10011_ok (by decide) (by decide)

/-- Catalogue code #10012: ((6,2,2)), m=14, a=[3, 4, 5, 6, 7, 12], S=[0, 13]. -/
def code_10012 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10012_ok : code_10012.OK := by native_decide
/-- Code #10012 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10012_qec :
    ∃ ψ, SS.IsAmplitudes code_10012 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10012 code_10012_ok (by decide) (by decide)

/-- Catalogue code #10013: ((6,2,2)), m=14, a=[3, 4, 5, 6, 7, 13], S=[0, 2]. -/
def code_10013 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10013_ok : code_10013.OK := by native_decide
/-- Code #10013 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10013_qec :
    ∃ ψ, SS.IsAmplitudes code_10013 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10013 code_10013_ok (by decide) (by decide)

/-- Catalogue code #10014: ((6,2,2)), m=14, a=[3, 4, 5, 6, 7, 13], S=[0, 12]. -/
def code_10014 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10014_ok : code_10014.OK := by native_decide
/-- Code #10014 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10014_qec :
    ∃ ψ, SS.IsAmplitudes code_10014 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10014 code_10014_ok (by decide) (by decide)

/-- Catalogue code #10015: ((6,2,2)), m=14, a=[3, 4, 5, 7, 8, 11], S=[0, 1]. -/
def code_10015 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10015_ok : code_10015.OK := by native_decide
/-- Code #10015 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10015_qec :
    ∃ ψ, SS.IsAmplitudes code_10015 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10015 code_10015_ok (by decide) (by decide)

/-- Catalogue code #10016: ((6,2,2)), m=14, a=[3, 4, 5, 7, 8, 12], S=[0, 1]. -/
def code_10016 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10016_ok : code_10016.OK := by native_decide
/-- Code #10016 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10016_qec :
    ∃ ψ, SS.IsAmplitudes code_10016 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10016 code_10016_ok (by decide) (by decide)

/-- Catalogue code #10017: ((6,2,2)), m=14, a=[3, 4, 5, 7, 9, 12], S=[0, 13]. -/
def code_10017 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10017_ok : code_10017.OK := by native_decide
/-- Code #10017 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10017_qec :
    ∃ ψ, SS.IsAmplitudes code_10017 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10017 code_10017_ok (by decide) (by decide)

/-- Catalogue code #10018: ((6,2,2)), m=14, a=[3, 4, 5, 7, 9, 13], S=[0, 12]. -/
def code_10018 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_10018_ok : code_10018.OK := by native_decide
/-- Code #10018 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10018_qec :
    ∃ ψ, SS.IsAmplitudes code_10018 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10018 code_10018_ok (by decide) (by decide)

/-- Catalogue code #10019: ((6,2,2)), m=14, a=[3, 4, 5, 7, 11, 13], S=[0, 6]. -/
def code_10019 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10019_ok : code_10019.OK := by native_decide
/-- Code #10019 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10019_qec :
    ∃ ψ, SS.IsAmplitudes code_10019 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10019 code_10019_ok (by decide) (by decide)

/-- Catalogue code #10020: ((6,2,2)), m=14, a=[3, 4, 5, 7, 12, 13], S=[0, 8]. -/
def code_10020 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10020_ok : code_10020.OK := by native_decide
/-- Code #10020 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10020_qec :
    ∃ ψ, SS.IsAmplitudes code_10020 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10020 code_10020_ok (by decide) (by decide)

/-- Catalogue code #10021: ((6,2,2)), m=14, a=[3, 4, 5, 7, 13, 13], S=[0, 12]. -/
def code_10021 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10021_ok : code_10021.OK := by native_decide
/-- Code #10021 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10021_qec :
    ∃ ψ, SS.IsAmplitudes code_10021 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10021 code_10021_ok (by decide) (by decide)

/-- Catalogue code #10022: ((6,2,2)), m=14, a=[3, 4, 5, 8, 9, 12], S=[0, 1]. -/
def code_10022 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7)]
theorem code_10022_ok : code_10022.OK := by native_decide
/-- Code #10022 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10022_qec :
    ∃ ψ, SS.IsAmplitudes code_10022 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10022 code_10022_ok (by decide) (by decide)

/-- Catalogue code #10023: ((6,2,2)), m=14, a=[3, 4, 5, 8, 9, 13], S=[0, 12]. -/
def code_10023 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10023_ok : code_10023.OK := by native_decide
/-- Code #10023 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10023_qec :
    ∃ ψ, SS.IsAmplitudes code_10023 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10023 code_10023_ok (by decide) (by decide)

/-- Catalogue code #10024: ((6,2,2)), m=14, a=[3, 4, 5, 8, 10, 11], S=[0, 1]. -/
def code_10024 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10024_ok : code_10024.OK := by native_decide
/-- Code #10024 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10024_qec :
    ∃ ψ, SS.IsAmplitudes code_10024 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10024 code_10024_ok (by decide) (by decide)

/-- Catalogue code #10025: ((6,2,2)), m=14, a=[3, 4, 5, 9, 11, 12], S=[0, 6]. -/
def code_10025 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10025_ok : code_10025.OK := by native_decide
/-- Code #10025 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10025_qec :
    ∃ ψ, SS.IsAmplitudes code_10025 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10025 code_10025_ok (by decide) (by decide)

/-- Catalogue code #10026: ((6,2,2)), m=14, a=[3, 4, 5, 9, 13, 13], S=[0, 12]. -/
def code_10026 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10026_ok : code_10026.OK := by native_decide
/-- Code #10026 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10026_qec :
    ∃ ψ, SS.IsAmplitudes code_10026 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10026 code_10026_ok (by decide) (by decide)

/-- Catalogue code #10027: ((6,2,2)), m=14, a=[3, 4, 5, 10, 11, 13], S=[0, 6]. -/
def code_10027 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10027_ok : code_10027.OK := by native_decide
/-- Code #10027 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10027_qec :
    ∃ ψ, SS.IsAmplitudes code_10027 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10027 code_10027_ok (by decide) (by decide)

/-- Catalogue code #10028: ((6,2,2)), m=14, a=[3, 4, 6, 6, 7, 12], S=[0, 1]. -/
def code_10028 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7)]
theorem code_10028_ok : code_10028.OK := by native_decide
/-- Code #10028 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10028_qec :
    ∃ ψ, SS.IsAmplitudes code_10028 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10028 code_10028_ok (by decide) (by decide)

/-- Catalogue code #10029: ((6,2,2)), m=14, a=[3, 4, 6, 6, 7, 12], S=[0, 5]. -/
def code_10029 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7)]
theorem code_10029_ok : code_10029.OK := by native_decide
/-- Code #10029 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10029_qec :
    ∃ ψ, SS.IsAmplitudes code_10029 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10029 code_10029_ok (by decide) (by decide)

/-- Catalogue code #10030: ((6,2,2)), m=14, a=[3, 4, 6, 6, 7, 12], S=[0, 9]. -/
def code_10030 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7)]
theorem code_10030_ok : code_10030.OK := by native_decide
/-- Code #10030 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10030_qec :
    ∃ ψ, SS.IsAmplitudes code_10030 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10030 code_10030_ok (by decide) (by decide)

/-- Catalogue code #10031: ((6,2,2)), m=14, a=[3, 4, 6, 6, 7, 13], S=[0, 9]. -/
def code_10031 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10031_ok : code_10031.OK := by native_decide
/-- Code #10031 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10031_qec :
    ∃ ψ, SS.IsAmplitudes code_10031 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10031 code_10031_ok (by decide) (by decide)

/-- Catalogue code #10032: ((6,2,2)), m=14, a=[3, 4, 6, 6, 9, 10], S=[0, 2]. -/
def code_10032 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10032_ok : code_10032.OK := by native_decide
/-- Code #10032 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10032_qec :
    ∃ ψ, SS.IsAmplitudes code_10032 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10032 code_10032_ok (by decide) (by decide)

/-- Catalogue code #10033: ((6,2,2)), m=14, a=[3, 4, 6, 6, 9, 10], S=[0, 12]. -/
def code_10033 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10033_ok : code_10033.OK := by native_decide
/-- Code #10033 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10033_qec :
    ∃ ψ, SS.IsAmplitudes code_10033 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10033 code_10033_ok (by decide) (by decide)

/-- Catalogue code #10034: ((6,2,2)), m=14, a=[3, 4, 6, 6, 9, 12], S=[0, 13]. -/
def code_10034 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7)]
theorem code_10034_ok : code_10034.OK := by native_decide
/-- Code #10034 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10034_qec :
    ∃ ψ, SS.IsAmplitudes code_10034 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10034 code_10034_ok (by decide) (by decide)

/-- Catalogue code #10035: ((6,2,2)), m=14, a=[3, 4, 6, 6, 9, 13], S=[0, 12]. -/
def code_10035 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10035_ok : code_10035.OK := by native_decide
/-- Code #10035 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10035_qec :
    ∃ ψ, SS.IsAmplitudes code_10035 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10035 code_10035_ok (by decide) (by decide)

/-- Catalogue code #10036: ((6,2,2)), m=14, a=[3, 4, 6, 6, 10, 13], S=[0, 2]. -/
def code_10036 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10036_ok : code_10036.OK := by native_decide
/-- Code #10036 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10036_qec :
    ∃ ψ, SS.IsAmplitudes code_10036 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10036 code_10036_ok (by decide) (by decide)

/-- Catalogue code #10037: ((6,2,2)), m=14, a=[3, 4, 6, 6, 11, 12], S=[0, 1]. -/
def code_10037 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7)]
theorem code_10037_ok : code_10037.OK := by native_decide
/-- Code #10037 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10037_qec :
    ∃ ψ, SS.IsAmplitudes code_10037 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10037 code_10037_ok (by decide) (by decide)

/-- Catalogue code #10038: ((6,2,2)), m=14, a=[3, 4, 6, 6, 12, 13], S=[0, 9]. -/
def code_10038 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ)]
theorem code_10038_ok : code_10038.OK := by native_decide
/-- Code #10038 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10038_qec :
    ∃ ψ, SS.IsAmplitudes code_10038 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10038 code_10038_ok (by decide) (by decide)

/-- Catalogue code #10039: ((6,2,2)), m=14, a=[3, 4, 6, 6, 13, 13], S=[0, 5]. -/
def code_10039 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10039_ok : code_10039.OK := by native_decide
/-- Code #10039 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10039_qec :
    ∃ ψ, SS.IsAmplitudes code_10039 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10039 code_10039_ok (by decide) (by decide)

/-- Catalogue code #10040: ((6,2,2)), m=14, a=[3, 4, 6, 6, 13, 13], S=[0, 12]. -/
def code_10040 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10040_ok : code_10040.OK := by native_decide
/-- Code #10040 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10040_qec :
    ∃ ψ, SS.IsAmplitudes code_10040 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10040 code_10040_ok (by decide) (by decide)

/-- Catalogue code #10041: ((6,2,2)), m=14, a=[3, 4, 6, 7, 8, 10], S=[0, 12]. -/
def code_10041 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10041_ok : code_10041.OK := by native_decide
/-- Code #10041 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10041_qec :
    ∃ ψ, SS.IsAmplitudes code_10041 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10041 code_10041_ok (by decide) (by decide)

/-- Catalogue code #10042: ((6,2,2)), m=14, a=[3, 4, 6, 7, 9, 9], S=[0, 2]. -/
def code_10042 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10042_ok : code_10042.OK := by native_decide
/-- Code #10042 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10042_qec :
    ∃ ψ, SS.IsAmplitudes code_10042 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10042 code_10042_ok (by decide) (by decide)

/-- Catalogue code #10043: ((6,2,2)), m=14, a=[3, 4, 6, 7, 9, 9], S=[0, 13]. -/
def code_10043 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]
theorem code_10043_ok : code_10043.OK := by native_decide
/-- Code #10043 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10043_qec :
    ∃ ψ, SS.IsAmplitudes code_10043 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10043 code_10043_ok (by decide) (by decide)

/-- Catalogue code #10044: ((6,2,2)), m=14, a=[3, 4, 6, 7, 9, 10], S=[0, 13]. -/
def code_10044 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((4 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10044_ok : code_10044.OK := by native_decide
/-- Code #10044 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10044_qec :
    ∃ ψ, SS.IsAmplitudes code_10044 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10044 code_10044_ok (by decide) (by decide)

/-- Catalogue code #10045: ((6,2,2)), m=14, a=[3, 4, 6, 7, 9, 13], S=[0, 2]. -/
def code_10045 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10045_ok : code_10045.OK := by native_decide
/-- Code #10045 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10045_qec :
    ∃ ψ, SS.IsAmplitudes code_10045 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10045 code_10045_ok (by decide) (by decide)

/-- Catalogue code #10046: ((6,2,2)), m=14, a=[3, 4, 6, 7, 12, 13], S=[0, 5]. -/
def code_10046 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10046_ok : code_10046.OK := by native_decide
/-- Code #10046 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10046_qec :
    ∃ ψ, SS.IsAmplitudes code_10046 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10046 code_10046_ok (by decide) (by decide)

/-- Catalogue code #10047: ((6,2,2)), m=14, a=[3, 4, 6, 7, 12, 13], S=[0, 9]. -/
def code_10047 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10047_ok : code_10047.OK := by native_decide
/-- Code #10047 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10047_qec :
    ∃ ψ, SS.IsAmplitudes code_10047 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10047 code_10047_ok (by decide) (by decide)

/-- Catalogue code #10048: ((6,2,2)), m=14, a=[3, 4, 6, 8, 9, 10], S=[0, 2]. -/
def code_10048 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10048_ok : code_10048.OK := by native_decide
/-- Code #10048 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10048_qec :
    ∃ ψ, SS.IsAmplitudes code_10048 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10048 code_10048_ok (by decide) (by decide)

/-- Catalogue code #10049: ((6,2,2)), m=14, a=[3, 4, 6, 8, 10, 13], S=[0, 12]. -/
def code_10049 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10049_ok : code_10049.OK := by native_decide
/-- Code #10049 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10049_qec :
    ∃ ψ, SS.IsAmplitudes code_10049 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10049 code_10049_ok (by decide) (by decide)

/-- Catalogue code #10050: ((6,2,2)), m=14, a=[3, 4, 6, 9, 9, 12], S=[0, 13]. -/
def code_10050 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_10050_ok : code_10050.OK := by native_decide
/-- Code #10050 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10050_qec :
    ∃ ψ, SS.IsAmplitudes code_10050 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10050 code_10050_ok (by decide) (by decide)

/-- Catalogue code #10051: ((6,2,2)), m=14, a=[3, 4, 6, 9, 10, 12], S=[0, 13]. -/
def code_10051 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((-4 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10051_ok : code_10051.OK := by native_decide
/-- Code #10051 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10051_qec :
    ∃ ψ, SS.IsAmplitudes code_10051 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10051 code_10051_ok (by decide) (by decide)

/-- Catalogue code #10052: ((6,2,2)), m=14, a=[3, 4, 6, 9, 11, 12], S=[0, 13]. -/
def code_10052 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10052_ok : code_10052.OK := by native_decide
/-- Code #10052 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10052_qec :
    ∃ ψ, SS.IsAmplitudes code_10052 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10052 code_10052_ok (by decide) (by decide)

/-- Catalogue code #10053: ((6,2,2)), m=14, a=[3, 4, 6, 9, 12, 12], S=[0, 13]. -/
def code_10053 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((6 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10053_ok : code_10053.OK := by native_decide
/-- Code #10053 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10053_qec :
    ∃ ψ, SS.IsAmplitudes code_10053 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10053 code_10053_ok (by decide) (by decide)

/-- Catalogue code #10054: ((6,2,2)), m=14, a=[3, 4, 6, 9, 13, 13], S=[0, 12]. -/
def code_10054 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10054_ok : code_10054.OK := by native_decide
/-- Code #10054 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10054_qec :
    ∃ ψ, SS.IsAmplitudes code_10054 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10054 code_10054_ok (by decide) (by decide)

/-- Catalogue code #10055: ((6,2,2)), m=14, a=[3, 4, 6, 10, 11, 12], S=[0, 5]. -/
def code_10055 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7)]
theorem code_10055_ok : code_10055.OK := by native_decide
/-- Code #10055 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10055_qec :
    ∃ ψ, SS.IsAmplitudes code_10055 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10055 code_10055_ok (by decide) (by decide)

/-- Catalogue code #10056: ((6,2,2)), m=14, a=[3, 4, 6, 10, 11, 12], S=[0, 13]. -/
def code_10056 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7)]
theorem code_10056_ok : code_10056.OK := by native_decide
/-- Code #10056 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10056_qec :
    ∃ ψ, SS.IsAmplitudes code_10056 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10056 code_10056_ok (by decide) (by decide)

/-- Catalogue code #10057: ((6,2,2)), m=14, a=[3, 4, 7, 8, 8, 9], S=[0, 13]. -/
def code_10057 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10057_ok : code_10057.OK := by native_decide
/-- Code #10057 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10057_qec :
    ∃ ψ, SS.IsAmplitudes code_10057 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10057 code_10057_ok (by decide) (by decide)

/-- Catalogue code #10058: ((6,2,2)), m=14, a=[3, 4, 7, 8, 8, 12], S=[0, 5]. -/
def code_10058 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10058_ok : code_10058.OK := by native_decide
/-- Code #10058 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10058_qec :
    ∃ ψ, SS.IsAmplitudes code_10058 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10058 code_10058_ok (by decide) (by decide)

/-- Catalogue code #10059: ((6,2,2)), m=14, a=[3, 4, 7, 8, 9, 9], S=[0, 1]. -/
def code_10059 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((-4 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10059_ok : code_10059.OK := by native_decide
/-- Code #10059 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10059_qec :
    ∃ ψ, SS.IsAmplitudes code_10059 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10059 code_10059_ok (by decide) (by decide)

/-- Catalogue code #10060: ((6,2,2)), m=14, a=[3, 4, 7, 8, 9, 10], S=[0, 1]. -/
def code_10060 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), ((-4 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10060_ok : code_10060.OK := by native_decide
/-- Code #10060 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10060_qec :
    ∃ ψ, SS.IsAmplitudes code_10060 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10060 code_10060_ok (by decide) (by decide)

/-- Catalogue code #10061: ((6,2,2)), m=14, a=[3, 4, 7, 8, 11, 13], S=[0, 2]. -/
def code_10061 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10061_ok : code_10061.OK := by native_decide
/-- Code #10061 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10061_qec :
    ∃ ψ, SS.IsAmplitudes code_10061 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10061 code_10061_ok (by decide) (by decide)

/-- Catalogue code #10062: ((6,2,2)), m=14, a=[3, 4, 7, 8, 11, 13], S=[0, 9]. -/
def code_10062 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10062_ok : code_10062.OK := by native_decide
/-- Code #10062 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10062_qec :
    ∃ ψ, SS.IsAmplitudes code_10062 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10062 code_10062_ok (by decide) (by decide)

/-- Catalogue code #10063: ((6,2,2)), m=14, a=[3, 4, 7, 8, 12, 12], S=[0, 5]. -/
def code_10063 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 7), (0 : ℚ), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10063_ok : code_10063.OK := by native_decide
/-- Code #10063 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10063_qec :
    ∃ ψ, SS.IsAmplitudes code_10063 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10063 code_10063_ok (by decide) (by decide)

/-- Catalogue code #10064: ((6,2,2)), m=14, a=[3, 4, 7, 9, 9, 12], S=[0, 1]. -/
def code_10064 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10064_ok : code_10064.OK := by native_decide
/-- Code #10064 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10064_qec :
    ∃ ψ, SS.IsAmplitudes code_10064 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10064 code_10064_ok (by decide) (by decide)

/-- Catalogue code #10065: ((6,2,2)), m=14, a=[3, 4, 7, 9, 9, 12], S=[0, 8]. -/
def code_10065 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10065_ok : code_10065.OK := by native_decide
/-- Code #10065 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10065_qec :
    ∃ ψ, SS.IsAmplitudes code_10065 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10065 code_10065_ok (by decide) (by decide)

/-- Catalogue code #10066: ((6,2,2)), m=14, a=[3, 4, 7, 9, 9, 13], S=[0, 2]. -/
def code_10066 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_10066_ok : code_10066.OK := by native_decide
/-- Code #10066 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10066_qec :
    ∃ ψ, SS.IsAmplitudes code_10066 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10066 code_10066_ok (by decide) (by decide)

/-- Catalogue code #10067: ((6,2,2)), m=14, a=[3, 4, 7, 9, 9, 13], S=[0, 6]. -/
def code_10067 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10067_ok : code_10067.OK := by native_decide
/-- Code #10067 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10067_qec :
    ∃ ψ, SS.IsAmplitudes code_10067 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10067 code_10067_ok (by decide) (by decide)

/-- Catalogue code #10068: ((6,2,2)), m=14, a=[3, 4, 7, 9, 10, 13], S=[0, 6]. -/
def code_10068 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10068_ok : code_10068.OK := by native_decide
/-- Code #10068 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10068_qec :
    ∃ ψ, SS.IsAmplitudes code_10068 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10068 code_10068_ok (by decide) (by decide)

/-- Catalogue code #10069: ((6,2,2)), m=14, a=[3, 4, 7, 9, 13, 13], S=[0, 12]. -/
def code_10069 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10069_ok : code_10069.OK := by native_decide
/-- Code #10069 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10069_qec :
    ∃ ψ, SS.IsAmplitudes code_10069 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10069 code_10069_ok (by decide) (by decide)

/-- Catalogue code #10070: ((6,2,2)), m=14, a=[3, 4, 7, 12, 13, 13], S=[0, 5]. -/
def code_10070 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10070_ok : code_10070.OK := by native_decide
/-- Code #10070 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10070_qec :
    ∃ ψ, SS.IsAmplitudes code_10070 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10070 code_10070_ok (by decide) (by decide)

/-- Catalogue code #10071: ((6,2,2)), m=14, a=[3, 4, 8, 8, 10, 13], S=[0, 12]. -/
def code_10071 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10071_ok : code_10071.OK := by native_decide
/-- Code #10071 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10071_qec :
    ∃ ψ, SS.IsAmplitudes code_10071 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10071 code_10071_ok (by decide) (by decide)

/-- Catalogue code #10072: ((6,2,2)), m=14, a=[3, 4, 8, 8, 12, 13], S=[0, 5]. -/
def code_10072 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]
theorem code_10072_ok : code_10072.OK := by native_decide
/-- Code #10072 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10072_qec :
    ∃ ψ, SS.IsAmplitudes code_10072 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10072 code_10072_ok (by decide) (by decide)

/-- Catalogue code #10073: ((6,2,2)), m=14, a=[3, 4, 8, 8, 13, 13], S=[0, 2]. -/
def code_10073 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10073_ok : code_10073.OK := by native_decide
/-- Code #10073 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10073_qec :
    ∃ ψ, SS.IsAmplitudes code_10073 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10073 code_10073_ok (by decide) (by decide)

/-- Catalogue code #10074: ((6,2,2)), m=14, a=[3, 4, 8, 10, 10, 13], S=[0, 12]. -/
def code_10074 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10074_ok : code_10074.OK := by native_decide
/-- Code #10074 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10074_qec :
    ∃ ψ, SS.IsAmplitudes code_10074 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10074 code_10074_ok (by decide) (by decide)

/-- Catalogue code #10075: ((6,2,2)), m=14, a=[3, 4, 8, 10, 11, 13], S=[0, 9]. -/
def code_10075 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((6 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7)]
theorem code_10075_ok : code_10075.OK := by native_decide
/-- Code #10075 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10075_qec :
    ∃ ψ, SS.IsAmplitudes code_10075 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10075 code_10075_ok (by decide) (by decide)

/-- Catalogue code #10076: ((6,2,2)), m=14, a=[3, 4, 8, 12, 13, 13], S=[0, 5]. -/
def code_10076 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10076_ok : code_10076.OK := by native_decide
/-- Code #10076 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10076_qec :
    ∃ ψ, SS.IsAmplitudes code_10076 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10076 code_10076_ok (by decide) (by decide)

/-- Catalogue code #10077: ((6,2,2)), m=14, a=[3, 4, 9, 9, 10, 12], S=[0, 8]. -/
def code_10077 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10077_ok : code_10077.OK := by native_decide
/-- Code #10077 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10077_qec :
    ∃ ψ, SS.IsAmplitudes code_10077 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10077 code_10077_ok (by decide) (by decide)

/-- Catalogue code #10078: ((6,2,2)), m=14, a=[3, 4, 9, 9, 12, 12], S=[0, 13]. -/
def code_10078 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10078_ok : code_10078.OK := by native_decide
/-- Code #10078 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10078_qec :
    ∃ ψ, SS.IsAmplitudes code_10078 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10078 code_10078_ok (by decide) (by decide)

/-- Catalogue code #10079: ((6,2,2)), m=14, a=[3, 4, 9, 10, 11, 12], S=[0, 13]. -/
def code_10079 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10079_ok : code_10079.OK := by native_decide
/-- Code #10079 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10079_qec :
    ∃ ψ, SS.IsAmplitudes code_10079 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10079 code_10079_ok (by decide) (by decide)

/-- Catalogue code #10080: ((6,2,2)), m=14, a=[3, 4, 9, 12, 13, 13], S=[0, 6]. -/
def code_10080 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10080_ok : code_10080.OK := by native_decide
/-- Code #10080 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10080_qec :
    ∃ ψ, SS.IsAmplitudes code_10080 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10080 code_10080_ok (by decide) (by decide)

/-- Catalogue code #10081: ((6,2,2)), m=14, a=[3, 4, 10, 12, 12, 13], S=[0, 6]. -/
def code_10081 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10081_ok : code_10081.OK := by native_decide
/-- Code #10081 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10081_qec :
    ∃ ψ, SS.IsAmplitudes code_10081 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10081 code_10081_ok (by decide) (by decide)

/-- Catalogue code #10082: ((6,2,2)), m=14, a=[3, 5, 5, 6, 7, 8], S=[0, 2]. -/
def code_10082 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10082_ok : code_10082.OK := by native_decide
/-- Code #10082 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10082_qec :
    ∃ ψ, SS.IsAmplitudes code_10082 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10082 code_10082_ok (by decide) (by decide)

/-- Catalogue code #10083: ((6,2,2)), m=14, a=[3, 5, 5, 6, 7, 11], S=[0, 10]. -/
def code_10083 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10083_ok : code_10083.OK := by native_decide
/-- Code #10083 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10083_qec :
    ∃ ψ, SS.IsAmplitudes code_10083 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10083 code_10083_ok (by decide) (by decide)

/-- Catalogue code #10084: ((6,2,2)), m=14, a=[3, 5, 5, 6, 7, 11], S=[0, 13]. -/
def code_10084 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10084_ok : code_10084.OK := by native_decide
/-- Code #10084 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10084_qec :
    ∃ ψ, SS.IsAmplitudes code_10084 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10084 code_10084_ok (by decide) (by decide)

/-- Catalogue code #10085: ((6,2,2)), m=14, a=[3, 5, 5, 7, 8, 10], S=[0, 2]. -/
def code_10085 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10085_ok : code_10085.OK := by native_decide
/-- Code #10085 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10085_qec :
    ∃ ψ, SS.IsAmplitudes code_10085 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10085 code_10085_ok (by decide) (by decide)

/-- Catalogue code #10086: ((6,2,2)), m=14, a=[3, 5, 5, 7, 8, 10], S=[0, 13]. -/
def code_10086 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10086_ok : code_10086.OK := by native_decide
/-- Code #10086 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10086_qec :
    ∃ ψ, SS.IsAmplitudes code_10086 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10086 code_10086_ok (by decide) (by decide)

/-- Catalogue code #10087: ((6,2,2)), m=14, a=[3, 5, 5, 7, 8, 11], S=[0, 1]. -/
def code_10087 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10087_ok : code_10087.OK := by native_decide
/-- Code #10087 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10087_qec :
    ∃ ψ, SS.IsAmplitudes code_10087 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10087 code_10087_ok (by decide) (by decide)

/-- Catalogue code #10088: ((6,2,2)), m=14, a=[3, 5, 5, 7, 8, 13], S=[0, 10]. -/
def code_10088 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10088_ok : code_10088.OK := by native_decide
/-- Code #10088 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10088_qec :
    ∃ ψ, SS.IsAmplitudes code_10088 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10088 code_10088_ok (by decide) (by decide)

/-- Catalogue code #10089: ((6,2,2)), m=14, a=[3, 5, 5, 7, 10, 12], S=[0, 1]. -/
def code_10089 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10089_ok : code_10089.OK := by native_decide
/-- Code #10089 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10089_qec :
    ∃ ψ, SS.IsAmplitudes code_10089 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10089 code_10089_ok (by decide) (by decide)

/-- Catalogue code #10090: ((6,2,2)), m=14, a=[3, 5, 5, 7, 10, 13], S=[0, 2]. -/
def code_10090 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-5 : ℚ) / 7)]
theorem code_10090_ok : code_10090.OK := by native_decide
/-- Code #10090 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10090_qec :
    ∃ ψ, SS.IsAmplitudes code_10090 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10090 code_10090_ok (by decide) (by decide)

/-- Catalogue code #10091: ((6,2,2)), m=14, a=[3, 5, 5, 7, 11, 13], S=[0, 6]. -/
def code_10091 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10091_ok : code_10091.OK := by native_decide
/-- Code #10091 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10091_qec :
    ∃ ψ, SS.IsAmplitudes code_10091 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10091 code_10091_ok (by decide) (by decide)

/-- Catalogue code #10092: ((6,2,2)), m=14, a=[3, 5, 5, 7, 11, 13], S=[0, 10]. -/
def code_10092 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10092_ok : code_10092.OK := by native_decide
/-- Code #10092 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10092_qec :
    ∃ ψ, SS.IsAmplitudes code_10092 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10092 code_10092_ok (by decide) (by decide)

/-- Catalogue code #10093: ((6,2,2)), m=14, a=[3, 5, 5, 7, 12, 13], S=[0, 4]. -/
def code_10093 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10093_ok : code_10093.OK := by native_decide
/-- Code #10093 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10093_qec :
    ∃ ψ, SS.IsAmplitudes code_10093 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10093 code_10093_ok (by decide) (by decide)

/-- Catalogue code #10094: ((6,2,2)), m=14, a=[3, 5, 5, 8, 10, 12], S=[0, 13]. -/
def code_10094 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_10094_ok : code_10094.OK := by native_decide
/-- Code #10094 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10094_qec :
    ∃ ψ, SS.IsAmplitudes code_10094 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10094 code_10094_ok (by decide) (by decide)

/-- Catalogue code #10095: ((6,2,2)), m=14, a=[3, 5, 5, 8, 11, 13], S=[0, 10]. -/
def code_10095 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10095_ok : code_10095.OK := by native_decide
/-- Code #10095 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10095_qec :
    ∃ ψ, SS.IsAmplitudes code_10095 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10095 code_10095_ok (by decide) (by decide)

/-- Catalogue code #10096: ((6,2,2)), m=14, a=[3, 5, 5, 8, 12, 12], S=[0, 4]. -/
def code_10096 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10096_ok : code_10096.OK := by native_decide
/-- Code #10096 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10096_qec :
    ∃ ψ, SS.IsAmplitudes code_10096 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10096 code_10096_ok (by decide) (by decide)

/-- Catalogue code #10097: ((6,2,2)), m=14, a=[3, 5, 5, 8, 12, 12], S=[0, 13]. -/
def code_10097 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10097_ok : code_10097.OK := by native_decide
/-- Code #10097 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10097_qec :
    ∃ ψ, SS.IsAmplitudes code_10097 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10097 code_10097_ok (by decide) (by decide)

/-- Catalogue code #10098: ((6,2,2)), m=14, a=[3, 5, 5, 10, 11, 11], S=[0, 13]. -/
def code_10098 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10098_ok : code_10098.OK := by native_decide
/-- Code #10098 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10098_qec :
    ∃ ψ, SS.IsAmplitudes code_10098 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10098 code_10098_ok (by decide) (by decide)

/-- Catalogue code #10099: ((6,2,2)), m=14, a=[3, 5, 6, 6, 7, 12], S=[0, 1]. -/
def code_10099 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10099_ok : code_10099.OK := by native_decide
/-- Code #10099 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10099_qec :
    ∃ ψ, SS.IsAmplitudes code_10099 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10099 code_10099_ok (by decide) (by decide)

/-- Catalogue code #10100: ((6,2,2)), m=14, a=[3, 5, 6, 6, 7, 13], S=[0, 2]. -/
def code_10100 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10100_ok : code_10100.OK := by native_decide
/-- Code #10100 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10100_qec :
    ∃ ψ, SS.IsAmplitudes code_10100 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10100 code_10100_ok (by decide) (by decide)

/-- Catalogue code #10101: ((6,2,2)), m=14, a=[3, 5, 6, 6, 10, 12], S=[0, 1]. -/
def code_10101 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10101_ok : code_10101.OK := by native_decide
/-- Code #10101 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10101_qec :
    ∃ ψ, SS.IsAmplitudes code_10101 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10101 code_10101_ok (by decide) (by decide)

/-- Catalogue code #10102: ((6,2,2)), m=14, a=[3, 5, 6, 6, 10, 13], S=[0, 2]. -/
def code_10102 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10102_ok : code_10102.OK := by native_decide
/-- Code #10102 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10102_qec :
    ∃ ψ, SS.IsAmplitudes code_10102 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10102 code_10102_ok (by decide) (by decide)

/-- Catalogue code #10103: ((6,2,2)), m=14, a=[3, 5, 6, 7, 8, 10], S=[0, 13]. -/
def code_10103 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10103_ok : code_10103.OK := by native_decide
/-- Code #10103 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10103_qec :
    ∃ ψ, SS.IsAmplitudes code_10103 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10103 code_10103_ok (by decide) (by decide)

/-- Catalogue code #10104: ((6,2,2)), m=14, a=[3, 5, 6, 7, 9, 10], S=[0, 1]. -/
def code_10104 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10104_ok : code_10104.OK := by native_decide
/-- Code #10104 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10104_qec :
    ∃ ψ, SS.IsAmplitudes code_10104 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10104 code_10104_ok (by decide) (by decide)

/-- Catalogue code #10105: ((6,2,2)), m=14, a=[3, 5, 6, 7, 9, 13], S=[0, 4]. -/
def code_10105 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}, {![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10105_ok : code_10105.OK := by native_decide
/-- Code #10105 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10105_qec :
    ∃ ψ, SS.IsAmplitudes code_10105 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10105 code_10105_ok (by decide) (by decide)

/-- Catalogue code #10106: ((6,2,2)), m=14, a=[3, 5, 6, 7, 10, 10], S=[0, 1]. -/
def code_10106 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10106_ok : code_10106.OK := by native_decide
/-- Code #10106 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10106_qec :
    ∃ ψ, SS.IsAmplitudes code_10106 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10106 code_10106_ok (by decide) (by decide)

/-- Catalogue code #10107: ((6,2,2)), m=14, a=[3, 5, 6, 7, 11, 12], S=[0, 1]. -/
def code_10107 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10107_ok : code_10107.OK := by native_decide
/-- Code #10107 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10107_qec :
    ∃ ψ, SS.IsAmplitudes code_10107 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10107 code_10107_ok (by decide) (by decide)

/-- Catalogue code #10108: ((6,2,2)), m=14, a=[3, 5, 6, 7, 11, 13], S=[0, 2]. -/
def code_10108 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10108_ok : code_10108.OK := by native_decide
/-- Code #10108 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10108_qec :
    ∃ ψ, SS.IsAmplitudes code_10108 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10108 code_10108_ok (by decide) (by decide)

/-- Catalogue code #10109: ((6,2,2)), m=14, a=[3, 5, 6, 7, 13, 13], S=[0, 2]. -/
def code_10109 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10109_ok : code_10109.OK := by native_decide
/-- Code #10109 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10109_qec :
    ∃ ψ, SS.IsAmplitudes code_10109 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10109 code_10109_ok (by decide) (by decide)

/-- Catalogue code #10110: ((6,2,2)), m=14, a=[3, 5, 6, 9, 10, 12], S=[0, 1]. -/
def code_10110 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_10110_ok : code_10110.OK := by native_decide
/-- Code #10110 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10110_qec :
    ∃ ψ, SS.IsAmplitudes code_10110 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10110 code_10110_ok (by decide) (by decide)

/-- Catalogue code #10111: ((6,2,2)), m=14, a=[3, 5, 6, 9, 10, 13], S=[0, 2]. -/
def code_10111 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10111_ok : code_10111.OK := by native_decide
/-- Code #10111 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10111_qec :
    ∃ ψ, SS.IsAmplitudes code_10111 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10111 code_10111_ok (by decide) (by decide)

/-- Catalogue code #10112: ((6,2,2)), m=14, a=[3, 5, 6, 9, 12, 12], S=[0, 1]. -/
def code_10112 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10112_ok : code_10112.OK := by native_decide
/-- Code #10112 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10112_qec :
    ∃ ψ, SS.IsAmplitudes code_10112 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10112 code_10112_ok (by decide) (by decide)

/-- Catalogue code #10113: ((6,2,2)), m=14, a=[3, 5, 6, 9, 12, 13], S=[0, 4]. -/
def code_10113 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10113_ok : code_10113.OK := by native_decide
/-- Code #10113 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10113_qec :
    ∃ ψ, SS.IsAmplitudes code_10113 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10113 code_10113_ok (by decide) (by decide)

/-- Catalogue code #10114: ((6,2,2)), m=14, a=[3, 5, 6, 10, 10, 12], S=[0, 1]. -/
def code_10114 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10114_ok : code_10114.OK := by native_decide
/-- Code #10114 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10114_qec :
    ∃ ψ, SS.IsAmplitudes code_10114 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10114 code_10114_ok (by decide) (by decide)

/-- Catalogue code #10115: ((6,2,2)), m=14, a=[3, 5, 6, 10, 11, 12], S=[0, 1]. -/
def code_10115 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10115_ok : code_10115.OK := by native_decide
/-- Code #10115 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10115_qec :
    ∃ ψ, SS.IsAmplitudes code_10115 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10115 code_10115_ok (by decide) (by decide)

/-- Catalogue code #10116: ((6,2,2)), m=14, a=[3, 5, 6, 10, 12, 12], S=[0, 1]. -/
def code_10116 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10116_ok : code_10116.OK := by native_decide
/-- Code #10116 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10116_qec :
    ∃ ψ, SS.IsAmplitudes code_10116 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10116 code_10116_ok (by decide) (by decide)

/-- Catalogue code #10117: ((6,2,2)), m=14, a=[3, 5, 6, 11, 12, 13], S=[0, 4]. -/
def code_10117 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10117_ok : code_10117.OK := by native_decide
/-- Code #10117 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10117_qec :
    ∃ ψ, SS.IsAmplitudes code_10117 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10117 code_10117_ok (by decide) (by decide)

/-- Catalogue code #10118: ((6,2,2)), m=14, a=[3, 5, 6, 11, 13, 13], S=[0, 2]. -/
def code_10118 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10118_ok : code_10118.OK := by native_decide
/-- Code #10118 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10118_qec :
    ∃ ψ, SS.IsAmplitudes code_10118 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10118 code_10118_ok (by decide) (by decide)

/-- Catalogue code #10119: ((6,2,2)), m=14, a=[3, 5, 6, 12, 12, 12], S=[0, 4]. -/
def code_10119 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10119_ok : code_10119.OK := by native_decide
/-- Code #10119 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10119_qec :
    ∃ ψ, SS.IsAmplitudes code_10119 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10119 code_10119_ok (by decide) (by decide)

/-- Catalogue code #10120: ((6,2,2)), m=14, a=[3, 5, 6, 12, 12, 13], S=[0, 4]. -/
def code_10120 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10120_ok : code_10120.OK := by native_decide
/-- Code #10120 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10120_qec :
    ∃ ψ, SS.IsAmplitudes code_10120 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10120 code_10120_ok (by decide) (by decide)

/-- Catalogue code #10121: ((6,2,2)), m=14, a=[3, 5, 7, 8, 8, 10], S=[0, 1]. -/
def code_10121 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10121_ok : code_10121.OK := by native_decide
/-- Code #10121 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10121_qec :
    ∃ ψ, SS.IsAmplitudes code_10121 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10121 code_10121_ok (by decide) (by decide)

/-- Catalogue code #10122: ((6,2,2)), m=14, a=[3, 5, 7, 8, 8, 13], S=[0, 12]. -/
def code_10122 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10122_ok : code_10122.OK := by native_decide
/-- Code #10122 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10122_qec :
    ∃ ψ, SS.IsAmplitudes code_10122 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10122 code_10122_ok (by decide) (by decide)

/-- Catalogue code #10123: ((6,2,2)), m=14, a=[3, 5, 7, 8, 10, 10], S=[0, 13]. -/
def code_10123 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), ((4 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10123_ok : code_10123.OK := by native_decide
/-- Code #10123 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10123_qec :
    ∃ ψ, SS.IsAmplitudes code_10123 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10123 code_10123_ok (by decide) (by decide)

/-- Catalogue code #10124: ((6,2,2)), m=14, a=[3, 5, 7, 8, 10, 12], S=[0, 13]. -/
def code_10124 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10124_ok : code_10124.OK := by native_decide
/-- Code #10124 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10124_qec :
    ∃ ψ, SS.IsAmplitudes code_10124 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10124 code_10124_ok (by decide) (by decide)

/-- Catalogue code #10125: ((6,2,2)), m=14, a=[3, 5, 7, 8, 10, 13], S=[0, 12]. -/
def code_10125 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10125_ok : code_10125.OK := by native_decide
/-- Code #10125 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10125_qec :
    ∃ ψ, SS.IsAmplitudes code_10125 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10125 code_10125_ok (by decide) (by decide)

/-- Catalogue code #10126: ((6,2,2)), m=14, a=[3, 5, 7, 8, 11, 13], S=[0, 10]. -/
def code_10126 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10126_ok : code_10126.OK := by native_decide
/-- Code #10126 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10126_qec :
    ∃ ψ, SS.IsAmplitudes code_10126 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10126 code_10126_ok (by decide) (by decide)

/-- Catalogue code #10127: ((6,2,2)), m=14, a=[3, 5, 7, 8, 12, 13], S=[0, 4]. -/
def code_10127 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10127_ok : code_10127.OK := by native_decide
/-- Code #10127 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10127_qec :
    ∃ ψ, SS.IsAmplitudes code_10127 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10127 code_10127_ok (by decide) (by decide)

/-- Catalogue code #10128: ((6,2,2)), m=14, a=[3, 5, 7, 8, 12, 13], S=[0, 10]. -/
def code_10128 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10128_ok : code_10128.OK := by native_decide
/-- Code #10128 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10128_qec :
    ∃ ψ, SS.IsAmplitudes code_10128 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10128 code_10128_ok (by decide) (by decide)

/-- Catalogue code #10129: ((6,2,2)), m=14, a=[3, 5, 7, 9, 10, 13], S=[0, 8]. -/
def code_10129 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10129_ok : code_10129.OK := by native_decide
/-- Code #10129 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10129_qec :
    ∃ ψ, SS.IsAmplitudes code_10129 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10129 code_10129_ok (by decide) (by decide)

/-- Catalogue code #10130: ((6,2,2)), m=14, a=[3, 5, 7, 9, 13, 13], S=[0, 10]. -/
def code_10130 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10130_ok : code_10130.OK := by native_decide
/-- Code #10130 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10130_qec :
    ∃ ψ, SS.IsAmplitudes code_10130 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10130 code_10130_ok (by decide) (by decide)

/-- Catalogue code #10131: ((6,2,2)), m=14, a=[3, 5, 7, 9, 13, 13], S=[0, 12]. -/
def code_10131 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10131_ok : code_10131.OK := by native_decide
/-- Code #10131 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10131_qec :
    ∃ ψ, SS.IsAmplitudes code_10131 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10131 code_10131_ok (by decide) (by decide)

/-- Catalogue code #10132: ((6,2,2)), m=14, a=[3, 5, 7, 10, 10, 12], S=[0, 13]. -/
def code_10132 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10132_ok : code_10132.OK := by native_decide
/-- Code #10132 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10132_qec :
    ∃ ψ, SS.IsAmplitudes code_10132 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10132 code_10132_ok (by decide) (by decide)

/-- Catalogue code #10133: ((6,2,2)), m=14, a=[3, 5, 7, 11, 12, 13], S=[0, 8]. -/
def code_10133 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10133_ok : code_10133.OK := by native_decide
/-- Code #10133 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10133_qec :
    ∃ ψ, SS.IsAmplitudes code_10133 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10133 code_10133_ok (by decide) (by decide)

/-- Catalogue code #10134: ((6,2,2)), m=14, a=[3, 5, 7, 11, 13, 13], S=[0, 2]. -/
def code_10134 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10134_ok : code_10134.OK := by native_decide
/-- Code #10134 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10134_qec :
    ∃ ψ, SS.IsAmplitudes code_10134 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10134 code_10134_ok (by decide) (by decide)

/-- Catalogue code #10135: ((6,2,2)), m=14, a=[3, 5, 7, 11, 13, 13], S=[0, 8]. -/
def code_10135 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10135_ok : code_10135.OK := by native_decide
/-- Code #10135 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10135_qec :
    ∃ ψ, SS.IsAmplitudes code_10135 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10135 code_10135_ok (by decide) (by decide)

/-- Catalogue code #10136: ((6,2,2)), m=14, a=[3, 5, 7, 12, 13, 13], S=[0, 8]. -/
def code_10136 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10136_ok : code_10136.OK := by native_decide
/-- Code #10136 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10136_qec :
    ∃ ψ, SS.IsAmplitudes code_10136 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10136 code_10136_ok (by decide) (by decide)

/-- Catalogue code #10137: ((6,2,2)), m=14, a=[3, 5, 8, 9, 11, 12], S=[0, 10]. -/
def code_10137 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10137_ok : code_10137.OK := by native_decide
/-- Code #10137 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10137_qec :
    ∃ ψ, SS.IsAmplitudes code_10137 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10137 code_10137_ok (by decide) (by decide)

/-- Catalogue code #10138: ((6,2,2)), m=14, a=[3, 5, 8, 9, 12, 13], S=[0, 10]. -/
def code_10138 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10138_ok : code_10138.OK := by native_decide
/-- Code #10138 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10138_qec :
    ∃ ψ, SS.IsAmplitudes code_10138 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10138 code_10138_ok (by decide) (by decide)

/-- Catalogue code #10139: ((6,2,2)), m=14, a=[3, 5, 8, 10, 10, 12], S=[0, 13]. -/
def code_10139 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_10139_ok : code_10139.OK := by native_decide
/-- Code #10139 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10139_qec :
    ∃ ψ, SS.IsAmplitudes code_10139 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10139 code_10139_ok (by decide) (by decide)

/-- Catalogue code #10140: ((6,2,2)), m=14, a=[3, 5, 8, 10, 12, 12], S=[0, 13]. -/
def code_10140 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((5 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10140_ok : code_10140.OK := by native_decide
/-- Code #10140 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10140_qec :
    ∃ ψ, SS.IsAmplitudes code_10140 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10140 code_10140_ok (by decide) (by decide)

/-- Catalogue code #10141: ((6,2,2)), m=14, a=[3, 5, 9, 10, 12, 12], S=[0, 1]. -/
def code_10141 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), ((6 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10141_ok : code_10141.OK := by native_decide
/-- Code #10141 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10141_qec :
    ∃ ψ, SS.IsAmplitudes code_10141 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10141 code_10141_ok (by decide) (by decide)

/-- Catalogue code #10142: ((6,2,2)), m=14, a=[3, 5, 9, 12, 12, 13], S=[0, 4]. -/
def code_10142 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10142_ok : code_10142.OK := by native_decide
/-- Code #10142 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10142_qec :
    ∃ ψ, SS.IsAmplitudes code_10142 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10142 code_10142_ok (by decide) (by decide)

/-- Catalogue code #10143: ((6,2,2)), m=14, a=[3, 5, 10, 10, 11, 11], S=[0, 13]. -/
def code_10143 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10143_ok : code_10143.OK := by native_decide
/-- Code #10143 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10143_qec :
    ∃ ψ, SS.IsAmplitudes code_10143 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10143 code_10143_ok (by decide) (by decide)

/-- Catalogue code #10144: ((6,2,2)), m=14, a=[3, 5, 10, 10, 11, 12], S=[0, 1]. -/
def code_10144 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10144_ok : code_10144.OK := by native_decide
/-- Code #10144 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10144_qec :
    ∃ ψ, SS.IsAmplitudes code_10144 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10144 code_10144_ok (by decide) (by decide)

/-- Catalogue code #10145: ((6,2,2)), m=14, a=[3, 5, 10, 10, 11, 12], S=[0, 8]. -/
def code_10145 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10145_ok : code_10145.OK := by native_decide
/-- Code #10145 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10145_qec :
    ∃ ψ, SS.IsAmplitudes code_10145 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10145 code_10145_ok (by decide) (by decide)

/-- Catalogue code #10146: ((6,2,2)), m=14, a=[3, 5, 10, 10, 11, 13], S=[0, 8]. -/
def code_10146 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10146_ok : code_10146.OK := by native_decide
/-- Code #10146 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10146_qec :
    ∃ ψ, SS.IsAmplitudes code_10146 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10146 code_10146_ok (by decide) (by decide)

/-- Catalogue code #10147: ((6,2,2)), m=14, a=[3, 5, 10, 11, 12, 13], S=[0, 8]. -/
def code_10147 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10147_ok : code_10147.OK := by native_decide
/-- Code #10147 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10147_qec :
    ∃ ψ, SS.IsAmplitudes code_10147 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10147 code_10147_ok (by decide) (by decide)

/-- Catalogue code #10148: ((6,2,2)), m=14, a=[3, 5, 11, 12, 13, 13], S=[0, 8]. -/
def code_10148 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10148_ok : code_10148.OK := by native_decide
/-- Code #10148 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10148_qec :
    ∃ ψ, SS.IsAmplitudes code_10148 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10148 code_10148_ok (by decide) (by decide)

/-- Catalogue code #10149: ((6,2,2)), m=14, a=[3, 5, 11, 13, 13, 13], S=[0, 8]. -/
def code_10149 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10149_ok : code_10149.OK := by native_decide
/-- Code #10149 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10149_qec :
    ∃ ψ, SS.IsAmplitudes code_10149 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10149 code_10149_ok (by decide) (by decide)

/-- Catalogue code #10150: ((6,2,2)), m=14, a=[3, 6, 6, 7, 9, 10], S=[0, 1]. -/
def code_10150 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10150_ok : code_10150.OK := by native_decide
/-- Code #10150 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10150_qec :
    ∃ ψ, SS.IsAmplitudes code_10150 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10150 code_10150_ok (by decide) (by decide)

/-- Catalogue code #10151: ((6,2,2)), m=14, a=[3, 6, 6, 7, 9, 13], S=[0, 12]. -/
def code_10151 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10151_ok : code_10151.OK := by native_decide
/-- Code #10151 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10151_qec :
    ∃ ψ, SS.IsAmplitudes code_10151 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10151 code_10151_ok (by decide) (by decide)

/-- Catalogue code #10152: ((6,2,2)), m=14, a=[3, 6, 6, 7, 12, 13], S=[0, 9]. -/
def code_10152 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ)]
theorem code_10152_ok : code_10152.OK := by native_decide
/-- Code #10152 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10152_qec :
    ∃ ψ, SS.IsAmplitudes code_10152 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10152 code_10152_ok (by decide) (by decide)

/-- Catalogue code #10153: ((6,2,2)), m=14, a=[3, 6, 6, 8, 12, 13], S=[0, 10]. -/
def code_10153 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10153_ok : code_10153.OK := by native_decide
/-- Code #10153 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10153_qec :
    ∃ ψ, SS.IsAmplitudes code_10153 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10153 code_10153_ok (by decide) (by decide)

/-- Catalogue code #10154: ((6,2,2)), m=14, a=[3, 6, 6, 10, 12, 13], S=[0, 9]. -/
def code_10154 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ)]
theorem code_10154_ok : code_10154.OK := by native_decide
/-- Code #10154 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10154_qec :
    ∃ ψ, SS.IsAmplitudes code_10154 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10154 code_10154_ok (by decide) (by decide)

/-- Catalogue code #10155: ((6,2,2)), m=14, a=[3, 6, 6, 11, 13, 13], S=[0, 9]. -/
def code_10155 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_10155_ok : code_10155.OK := by native_decide
/-- Code #10155 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10155_qec :
    ∃ ψ, SS.IsAmplitudes code_10155 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10155 code_10155_ok (by decide) (by decide)

/-- Catalogue code #10156: ((6,2,2)), m=14, a=[3, 6, 7, 8, 8, 10], S=[0, 2]. -/
def code_10156 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10156_ok : code_10156.OK := by native_decide
/-- Code #10156 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10156_qec :
    ∃ ψ, SS.IsAmplitudes code_10156 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10156 code_10156_ok (by decide) (by decide)

/-- Catalogue code #10157: ((6,2,2)), m=14, a=[3, 6, 7, 8, 8, 12], S=[0, 4]. -/
def code_10157 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10157_ok : code_10157.OK := by native_decide
/-- Code #10157 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10157_qec :
    ∃ ψ, SS.IsAmplitudes code_10157 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10157 code_10157_ok (by decide) (by decide)

/-- Catalogue code #10158: ((6,2,2)), m=14, a=[3, 6, 7, 8, 9, 10], S=[0, 13]. -/
def code_10158 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10158_ok : code_10158.OK := by native_decide
/-- Code #10158 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10158_qec :
    ∃ ψ, SS.IsAmplitudes code_10158 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10158 code_10158_ok (by decide) (by decide)

/-- Catalogue code #10159: ((6,2,2)), m=14, a=[3, 6, 7, 8, 9, 12], S=[0, 13]. -/
def code_10159 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7)]
theorem code_10159_ok : code_10159.OK := by native_decide
/-- Code #10159 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10159_qec :
    ∃ ψ, SS.IsAmplitudes code_10159 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10159 code_10159_ok (by decide) (by decide)

/-- Catalogue code #10160: ((6,2,2)), m=14, a=[3, 6, 7, 8, 10, 12], S=[0, 5]. -/
def code_10160 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7)]
theorem code_10160_ok : code_10160.OK := by native_decide
/-- Code #10160 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10160_qec :
    ∃ ψ, SS.IsAmplitudes code_10160 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10160 code_10160_ok (by decide) (by decide)

/-- Catalogue code #10161: ((6,2,2)), m=14, a=[3, 6, 7, 8, 10, 12], S=[0, 9]. -/
def code_10161 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7)]
theorem code_10161_ok : code_10161.OK := by native_decide
/-- Code #10161 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10161_qec :
    ∃ ψ, SS.IsAmplitudes code_10161 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10161 code_10161_ok (by decide) (by decide)

/-- Catalogue code #10162: ((6,2,2)), m=14, a=[3, 6, 7, 8, 10, 12], S=[0, 13]. -/
def code_10162 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7)]
theorem code_10162_ok : code_10162.OK := by native_decide
/-- Code #10162 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10162_qec :
    ∃ ψ, SS.IsAmplitudes code_10162 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10162 code_10162_ok (by decide) (by decide)

/-- Catalogue code #10163: ((6,2,2)), m=14, a=[3, 6, 7, 8, 12, 12], S=[0, 4]. -/
def code_10163 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10163_ok : code_10163.OK := by native_decide
/-- Code #10163 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10163_qec :
    ∃ ψ, SS.IsAmplitudes code_10163 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10163 code_10163_ok (by decide) (by decide)

/-- Catalogue code #10164: ((6,2,2)), m=14, a=[3, 6, 7, 8, 12, 12], S=[0, 10]. -/
def code_10164 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10164_ok : code_10164.OK := by native_decide
/-- Code #10164 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10164_qec :
    ∃ ψ, SS.IsAmplitudes code_10164 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10164 code_10164_ok (by decide) (by decide)

/-- Catalogue code #10165: ((6,2,2)), m=14, a=[3, 6, 7, 9, 9, 10], S=[0, 13]. -/
def code_10165 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7)]
theorem code_10165_ok : code_10165.OK := by native_decide
/-- Code #10165 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10165_qec :
    ∃ ψ, SS.IsAmplitudes code_10165 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10165 code_10165_ok (by decide) (by decide)

/-- Catalogue code #10166: ((6,2,2)), m=14, a=[3, 6, 7, 9, 9, 11], S=[0, 13]. -/
def code_10166 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10166_ok : code_10166.OK := by native_decide
/-- Code #10166 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10166_qec :
    ∃ ψ, SS.IsAmplitudes code_10166 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10166 code_10166_ok (by decide) (by decide)

/-- Catalogue code #10167: ((6,2,2)), m=14, a=[3, 6, 7, 9, 10, 10], S=[0, 1]. -/
def code_10167 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), ((4 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10167_ok : code_10167.OK := by native_decide
/-- Code #10167 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10167_qec :
    ∃ ψ, SS.IsAmplitudes code_10167 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10167 code_10167_ok (by decide) (by decide)

/-- Catalogue code #10168: ((6,2,2)), m=14, a=[3, 6, 7, 9, 10, 11], S=[0, 13]. -/
def code_10168 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ)]
theorem code_10168_ok : code_10168.OK := by native_decide
/-- Code #10168 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10168_qec :
    ∃ ψ, SS.IsAmplitudes code_10168 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10168 code_10168_ok (by decide) (by decide)

/-- Catalogue code #10169: ((6,2,2)), m=14, a=[3, 6, 7, 9, 10, 12], S=[0, 1]. -/
def code_10169 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10169_ok : code_10169.OK := by native_decide
/-- Code #10169 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10169_qec :
    ∃ ψ, SS.IsAmplitudes code_10169 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10169 code_10169_ok (by decide) (by decide)

/-- Catalogue code #10170: ((6,2,2)), m=14, a=[3, 6, 7, 9, 10, 12], S=[0, 13]. -/
def code_10170 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10170_ok : code_10170.OK := by native_decide
/-- Code #10170 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10170_qec :
    ∃ ψ, SS.IsAmplitudes code_10170 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10170 code_10170_ok (by decide) (by decide)

/-- Catalogue code #10171: ((6,2,2)), m=14, a=[3, 6, 7, 9, 10, 13], S=[0, 12]. -/
def code_10171 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10171_ok : code_10171.OK := by native_decide
/-- Code #10171 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10171_qec :
    ∃ ψ, SS.IsAmplitudes code_10171 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10171 code_10171_ok (by decide) (by decide)

/-- Catalogue code #10172: ((6,2,2)), m=14, a=[3, 6, 7, 9, 12, 13], S=[0, 10]. -/
def code_10172 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10172_ok : code_10172.OK := by native_decide
/-- Code #10172 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10172_qec :
    ∃ ψ, SS.IsAmplitudes code_10172 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10172 code_10172_ok (by decide) (by decide)

/-- Catalogue code #10173: ((6,2,2)), m=14, a=[3, 6, 7, 9, 13, 13], S=[0, 12]. -/
def code_10173 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10173_ok : code_10173.OK := by native_decide
/-- Code #10173 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10173_qec :
    ∃ ψ, SS.IsAmplitudes code_10173 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10173 code_10173_ok (by decide) (by decide)

/-- Catalogue code #10174: ((6,2,2)), m=14, a=[3, 6, 7, 10, 10, 12], S=[0, 1]. -/
def code_10174 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10174_ok : code_10174.OK := by native_decide
/-- Code #10174 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10174_qec :
    ∃ ψ, SS.IsAmplitudes code_10174 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10174 code_10174_ok (by decide) (by decide)

/-- Catalogue code #10175: ((6,2,2)), m=14, a=[3, 6, 7, 10, 12, 12], S=[0, 9]. -/
def code_10175 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-5 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10175_ok : code_10175.OK := by native_decide
/-- Code #10175 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10175_qec :
    ∃ ψ, SS.IsAmplitudes code_10175 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10175 code_10175_ok (by decide) (by decide)

/-- Catalogue code #10176: ((6,2,2)), m=14, a=[3, 6, 7, 11, 12, 12], S=[0, 10]. -/
def code_10176 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10176_ok : code_10176.OK := by native_decide
/-- Code #10176 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10176_qec :
    ∃ ψ, SS.IsAmplitudes code_10176 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10176 code_10176_ok (by decide) (by decide)

/-- Catalogue code #10177: ((6,2,2)), m=14, a=[3, 6, 7, 11, 12, 13], S=[0, 9]. -/
def code_10177 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_10177_ok : code_10177.OK := by native_decide
/-- Code #10177 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10177_qec :
    ∃ ψ, SS.IsAmplitudes code_10177 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10177 code_10177_ok (by decide) (by decide)

/-- Catalogue code #10178: ((6,2,2)), m=14, a=[3, 6, 7, 11, 13, 13], S=[0, 2]. -/
def code_10178 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10178_ok : code_10178.OK := by native_decide
/-- Code #10178 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10178_qec :
    ∃ ψ, SS.IsAmplitudes code_10178 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10178 code_10178_ok (by decide) (by decide)

/-- Catalogue code #10179: ((6,2,2)), m=14, a=[3, 6, 7, 11, 13, 13], S=[0, 9]. -/
def code_10179 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10179_ok : code_10179.OK := by native_decide
/-- Code #10179 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10179_qec :
    ∃ ψ, SS.IsAmplitudes code_10179 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10179 code_10179_ok (by decide) (by decide)

/-- Catalogue code #10180: ((6,2,2)), m=14, a=[3, 6, 7, 12, 13, 13], S=[0, 9]. -/
def code_10180 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]
theorem code_10180_ok : code_10180.OK := by native_decide
/-- Code #10180 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10180_qec :
    ∃ ψ, SS.IsAmplitudes code_10180 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10180 code_10180_ok (by decide) (by decide)

/-- Catalogue code #10181: ((6,2,2)), m=14, a=[3, 6, 8, 8, 9, 10], S=[0, 12]. -/
def code_10181 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10181_ok : code_10181.OK := by native_decide
/-- Code #10181 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10181_qec :
    ∃ ψ, SS.IsAmplitudes code_10181 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10181 code_10181_ok (by decide) (by decide)

/-- Catalogue code #10182: ((6,2,2)), m=14, a=[3, 6, 8, 8, 12, 13], S=[0, 4]. -/
def code_10182 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10182_ok : code_10182.OK := by native_decide
/-- Code #10182 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10182_qec :
    ∃ ψ, SS.IsAmplitudes code_10182 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10182 code_10182_ok (by decide) (by decide)

/-- Catalogue code #10183: ((6,2,2)), m=14, a=[3, 6, 8, 9, 10, 10], S=[0, 2]. -/
def code_10183 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10183_ok : code_10183.OK := by native_decide
/-- Code #10183 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10183_qec :
    ∃ ψ, SS.IsAmplitudes code_10183 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10183 code_10183_ok (by decide) (by decide)

/-- Catalogue code #10184: ((6,2,2)), m=14, a=[3, 6, 8, 9, 10, 12], S=[0, 13]. -/
def code_10184 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10184_ok : code_10184.OK := by native_decide
/-- Code #10184 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10184_qec :
    ∃ ψ, SS.IsAmplitudes code_10184 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10184 code_10184_ok (by decide) (by decide)

/-- Catalogue code #10185: ((6,2,2)), m=14, a=[3, 6, 8, 10, 10, 13], S=[0, 12]. -/
def code_10185 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10185_ok : code_10185.OK := by native_decide
/-- Code #10185 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10185_qec :
    ∃ ψ, SS.IsAmplitudes code_10185 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10185 code_10185_ok (by decide) (by decide)

/-- Catalogue code #10186: ((6,2,2)), m=14, a=[3, 6, 9, 10, 10, 12], S=[0, 1]. -/
def code_10186 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_10186_ok : code_10186.OK := by native_decide
/-- Code #10186 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10186_qec :
    ∃ ψ, SS.IsAmplitudes code_10186 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10186 code_10186_ok (by decide) (by decide)

/-- Catalogue code #10187: ((6,2,2)), m=14, a=[3, 6, 9, 10, 11, 12], S=[0, 13]. -/
def code_10187 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10187_ok : code_10187.OK := by native_decide
/-- Code #10187 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10187_qec :
    ∃ ψ, SS.IsAmplitudes code_10187 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10187 code_10187_ok (by decide) (by decide)

/-- Catalogue code #10188: ((6,2,2)), m=14, a=[3, 6, 9, 10, 12, 12], S=[0, 1]. -/
def code_10188 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10188_ok : code_10188.OK := by native_decide
/-- Code #10188 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10188_qec :
    ∃ ψ, SS.IsAmplitudes code_10188 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10188 code_10188_ok (by decide) (by decide)

/-- Catalogue code #10189: ((6,2,2)), m=14, a=[3, 6, 10, 10, 11, 12], S=[0, 1]. -/
def code_10189 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7)]
theorem code_10189_ok : code_10189.OK := by native_decide
/-- Code #10189 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10189_qec :
    ∃ ψ, SS.IsAmplitudes code_10189 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10189 code_10189_ok (by decide) (by decide)

/-- Catalogue code #10190: ((6,2,2)), m=14, a=[3, 6, 10, 10, 11, 12], S=[0, 9]. -/
def code_10190 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7)]
theorem code_10190_ok : code_10190.OK := by native_decide
/-- Code #10190 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10190_qec :
    ∃ ψ, SS.IsAmplitudes code_10190 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10190 code_10190_ok (by decide) (by decide)

/-- Catalogue code #10191: ((6,2,2)), m=14, a=[3, 6, 10, 10, 11, 13], S=[0, 9]. -/
def code_10191 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-6 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7)]
theorem code_10191_ok : code_10191.OK := by native_decide
/-- Code #10191 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10191_qec :
    ∃ ψ, SS.IsAmplitudes code_10191 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10191 code_10191_ok (by decide) (by decide)

/-- Catalogue code #10192: ((6,2,2)), m=14, a=[3, 6, 10, 10, 12, 13], S=[0, 9]. -/
def code_10192 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-5 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]
theorem code_10192_ok : code_10192.OK := by native_decide
/-- Code #10192 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10192_qec :
    ∃ ψ, SS.IsAmplitudes code_10192 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10192 code_10192_ok (by decide) (by decide)

/-- Catalogue code #10193: ((6,2,2)), m=14, a=[3, 6, 10, 12, 12, 13], S=[0, 5]. -/
def code_10193 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]
theorem code_10193_ok : code_10193.OK := by native_decide
/-- Code #10193 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10193_qec :
    ∃ ψ, SS.IsAmplitudes code_10193 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10193 code_10193_ok (by decide) (by decide)

/-- Catalogue code #10194: ((6,2,2)), m=14, a=[3, 6, 11, 12, 13, 13], S=[0, 9]. -/
def code_10194 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_10194_ok : code_10194.OK := by native_decide
/-- Code #10194 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10194_qec :
    ∃ ψ, SS.IsAmplitudes code_10194 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10194 code_10194_ok (by decide) (by decide)

/-- Catalogue code #10195: ((6,2,2)), m=14, a=[3, 6, 11, 13, 13, 13], S=[0, 9]. -/
def code_10195 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10195_ok : code_10195.OK := by native_decide
/-- Code #10195 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10195_qec :
    ∃ ψ, SS.IsAmplitudes code_10195 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10195 code_10195_ok (by decide) (by decide)

/-- Catalogue code #10196: ((6,2,2)), m=14, a=[3, 7, 8, 8, 9, 10], S=[0, 1]. -/
def code_10196 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10196_ok : code_10196.OK := by native_decide
/-- Code #10196 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10196_qec :
    ∃ ψ, SS.IsAmplitudes code_10196 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10196 code_10196_ok (by decide) (by decide)

/-- Catalogue code #10197: ((6,2,2)), m=14, a=[3, 7, 8, 8, 9, 12], S=[0, 1]. -/
def code_10197 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7)]
theorem code_10197_ok : code_10197.OK := by native_decide
/-- Code #10197 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10197_qec :
    ∃ ψ, SS.IsAmplitudes code_10197 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10197 code_10197_ok (by decide) (by decide)

/-- Catalogue code #10198: ((6,2,2)), m=14, a=[3, 7, 8, 8, 10, 10], S=[0, 2]. -/
def code_10198 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10198_ok : code_10198.OK := by native_decide
/-- Code #10198 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10198_qec :
    ∃ ψ, SS.IsAmplitudes code_10198 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10198 code_10198_ok (by decide) (by decide)

/-- Catalogue code #10199: ((6,2,2)), m=14, a=[3, 7, 8, 8, 10, 12], S=[0, 1]. -/
def code_10199 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7)]
theorem code_10199_ok : code_10199.OK := by native_decide
/-- Code #10199 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10199_qec :
    ∃ ψ, SS.IsAmplitudes code_10199 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10199 code_10199_ok (by decide) (by decide)

/-- Catalogue code #10200: ((6,2,2)), m=14, a=[3, 7, 8, 8, 10, 12], S=[0, 5]. -/
def code_10200 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-4 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7)]
theorem code_10200_ok : code_10200.OK := by native_decide
/-- Code #10200 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10200_qec :
    ∃ ψ, SS.IsAmplitudes code_10200 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10200 code_10200_ok (by decide) (by decide)

/-- Catalogue code #10201: ((6,2,2)), m=14, a=[3, 7, 8, 8, 10, 13], S=[0, 5]. -/
def code_10201 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10201_ok : code_10201.OK := by native_decide
/-- Code #10201 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10201_qec :
    ∃ ψ, SS.IsAmplitudes code_10201 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10201 code_10201_ok (by decide) (by decide)

/-- Catalogue code #10202: ((6,2,2)), m=14, a=[3, 7, 8, 8, 12, 12], S=[0, 4]. -/
def code_10202 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10202_ok : code_10202.OK := by native_decide
/-- Code #10202 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10202_qec :
    ∃ ψ, SS.IsAmplitudes code_10202 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10202 code_10202_ok (by decide) (by decide)

/-- Catalogue code #10203: ((6,2,2)), m=14, a=[3, 7, 8, 8, 12, 13], S=[0, 5]. -/
def code_10203 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ)]
theorem code_10203_ok : code_10203.OK := by native_decide
/-- Code #10203 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10203_qec :
    ∃ ψ, SS.IsAmplitudes code_10203 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10203 code_10203_ok (by decide) (by decide)

/-- Catalogue code #10204: ((6,2,2)), m=14, a=[3, 7, 8, 9, 9, 10], S=[0, 1]. -/
def code_10204 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7)]
theorem code_10204_ok : code_10204.OK := by native_decide
/-- Code #10204 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10204_qec :
    ∃ ψ, SS.IsAmplitudes code_10204 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10204 code_10204_ok (by decide) (by decide)

/-- Catalogue code #10205: ((6,2,2)), m=14, a=[3, 7, 8, 9, 9, 11], S=[0, 1]. -/
def code_10205 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10205_ok : code_10205.OK := by native_decide
/-- Code #10205 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10205_qec :
    ∃ ψ, SS.IsAmplitudes code_10205 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10205 code_10205_ok (by decide) (by decide)

/-- Catalogue code #10206: ((6,2,2)), m=14, a=[3, 7, 8, 9, 9, 11], S=[0, 4]. -/
def code_10206 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10206_ok : code_10206.OK := by native_decide
/-- Code #10206 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10206_qec :
    ∃ ψ, SS.IsAmplitudes code_10206 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10206 code_10206_ok (by decide) (by decide)

/-- Catalogue code #10207: ((6,2,2)), m=14, a=[3, 7, 8, 9, 9, 13], S=[0, 4]. -/
def code_10207 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10207_ok : code_10207.OK := by native_decide
/-- Code #10207 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10207_qec :
    ∃ ψ, SS.IsAmplitudes code_10207 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10207 code_10207_ok (by decide) (by decide)

/-- Catalogue code #10208: ((6,2,2)), m=14, a=[3, 7, 8, 9, 9, 13], S=[0, 10]. -/
def code_10208 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10208_ok : code_10208.OK := by native_decide
/-- Code #10208 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10208_qec :
    ∃ ψ, SS.IsAmplitudes code_10208 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10208 code_10208_ok (by decide) (by decide)

/-- Catalogue code #10209: ((6,2,2)), m=14, a=[3, 7, 8, 9, 10, 11], S=[0, 1]. -/
def code_10209 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ)]
theorem code_10209_ok : code_10209.OK := by native_decide
/-- Code #10209 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10209_qec :
    ∃ ψ, SS.IsAmplitudes code_10209 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10209 code_10209_ok (by decide) (by decide)

/-- Catalogue code #10210: ((6,2,2)), m=14, a=[3, 7, 8, 9, 10, 12], S=[0, 1]. -/
def code_10210 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10210_ok : code_10210.OK := by native_decide
/-- Code #10210 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10210_qec :
    ∃ ψ, SS.IsAmplitudes code_10210 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10210 code_10210_ok (by decide) (by decide)

/-- Catalogue code #10211: ((6,2,2)), m=14, a=[3, 7, 8, 9, 10, 12], S=[0, 13]. -/
def code_10211 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10211_ok : code_10211.OK := by native_decide
/-- Code #10211 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10211_qec :
    ∃ ψ, SS.IsAmplitudes code_10211 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10211 code_10211_ok (by decide) (by decide)

/-- Catalogue code #10212: ((6,2,2)), m=14, a=[3, 7, 8, 9, 10, 13], S=[0, 2]. -/
def code_10212 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10212_ok : code_10212.OK := by native_decide
/-- Code #10212 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10212_qec :
    ∃ ψ, SS.IsAmplitudes code_10212 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10212 code_10212_ok (by decide) (by decide)

/-- Catalogue code #10213: ((6,2,2)), m=14, a=[3, 7, 8, 9, 11, 13], S=[0, 4]. -/
def code_10213 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10213_ok : code_10213.OK := by native_decide
/-- Code #10213 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10213_qec :
    ∃ ψ, SS.IsAmplitudes code_10213 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10213 code_10213_ok (by decide) (by decide)

/-- Catalogue code #10214: ((6,2,2)), m=14, a=[3, 7, 8, 10, 10, 12], S=[0, 13]. -/
def code_10214 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10214_ok : code_10214.OK := by native_decide
/-- Code #10214 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10214_qec :
    ∃ ψ, SS.IsAmplitudes code_10214 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10214 code_10214_ok (by decide) (by decide)

/-- Catalogue code #10215: ((6,2,2)), m=14, a=[3, 7, 8, 10, 11, 13], S=[0, 5]. -/
def code_10215 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10215_ok : code_10215.OK := by native_decide
/-- Code #10215 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10215_qec :
    ∃ ψ, SS.IsAmplitudes code_10215 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10215 code_10215_ok (by decide) (by decide)

/-- Catalogue code #10216: ((6,2,2)), m=14, a=[3, 7, 8, 10, 11, 13], S=[0, 12]. -/
def code_10216 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10216_ok : code_10216.OK := by native_decide
/-- Code #10216 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10216_qec :
    ∃ ψ, SS.IsAmplitudes code_10216 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10216 code_10216_ok (by decide) (by decide)

/-- Catalogue code #10217: ((6,2,2)), m=14, a=[3, 7, 8, 10, 12, 12], S=[0, 9]. -/
def code_10217 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-5 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10217_ok : code_10217.OK := by native_decide
/-- Code #10217 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10217_qec :
    ∃ ψ, SS.IsAmplitudes code_10217 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10217 code_10217_ok (by decide) (by decide)

/-- Catalogue code #10218: ((6,2,2)), m=14, a=[3, 7, 8, 10, 12, 13], S=[0, 5]. -/
def code_10218 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7)]
theorem code_10218_ok : code_10218.OK := by native_decide
/-- Code #10218 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10218_qec :
    ∃ ψ, SS.IsAmplitudes code_10218 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10218 code_10218_ok (by decide) (by decide)

/-- Catalogue code #10219: ((6,2,2)), m=14, a=[3, 7, 8, 10, 12, 13], S=[0, 9]. -/
def code_10219 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10219_ok : code_10219.OK := by native_decide
/-- Code #10219 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10219_qec :
    ∃ ψ, SS.IsAmplitudes code_10219 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10219 code_10219_ok (by decide) (by decide)

/-- Catalogue code #10220: ((6,2,2)), m=14, a=[3, 7, 8, 11, 12, 13], S=[0, 10]. -/
def code_10220 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10220_ok : code_10220.OK := by native_decide
/-- Code #10220 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10220_qec :
    ∃ ψ, SS.IsAmplitudes code_10220 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10220 code_10220_ok (by decide) (by decide)

/-- Catalogue code #10221: ((6,2,2)), m=14, a=[3, 7, 8, 12, 12, 13], S=[0, 4]. -/
def code_10221 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10221_ok : code_10221.OK := by native_decide
/-- Code #10221 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10221_qec :
    ∃ ψ, SS.IsAmplitudes code_10221 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10221 code_10221_ok (by decide) (by decide)

/-- Catalogue code #10222: ((6,2,2)), m=14, a=[3, 7, 8, 12, 12, 13], S=[0, 9]. -/
def code_10222 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10222_ok : code_10222.OK := by native_decide
/-- Code #10222 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10222_qec :
    ∃ ψ, SS.IsAmplitudes code_10222 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10222 code_10222_ok (by decide) (by decide)

/-- Catalogue code #10223: ((6,2,2)), m=14, a=[3, 7, 8, 12, 12, 13], S=[0, 10]. -/
def code_10223 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10223_ok : code_10223.OK := by native_decide
/-- Code #10223 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10223_qec :
    ∃ ψ, SS.IsAmplitudes code_10223 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10223 code_10223_ok (by decide) (by decide)

/-- Catalogue code #10224: ((6,2,2)), m=14, a=[3, 7, 9, 9, 10, 11], S=[0, 1]. -/
def code_10224 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10224_ok : code_10224.OK := by native_decide
/-- Code #10224 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10224_qec :
    ∃ ψ, SS.IsAmplitudes code_10224 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10224 code_10224_ok (by decide) (by decide)

/-- Catalogue code #10225: ((6,2,2)), m=14, a=[3, 7, 9, 9, 10, 11], S=[0, 6]. -/
def code_10225 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10225_ok : code_10225.OK := by native_decide
/-- Code #10225 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10225_qec :
    ∃ ψ, SS.IsAmplitudes code_10225 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10225 code_10225_ok (by decide) (by decide)

/-- Catalogue code #10226: ((6,2,2)), m=14, a=[3, 7, 9, 9, 10, 13], S=[0, 6]. -/
def code_10226 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10226_ok : code_10226.OK := by native_decide
/-- Code #10226 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10226_qec :
    ∃ ψ, SS.IsAmplitudes code_10226 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10226 code_10226_ok (by decide) (by decide)

/-- Catalogue code #10227: ((6,2,2)), m=14, a=[3, 7, 9, 9, 11, 13], S=[0, 4]. -/
def code_10227 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10227_ok : code_10227.OK := by native_decide
/-- Code #10227 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10227_qec :
    ∃ ψ, SS.IsAmplitudes code_10227 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10227 code_10227_ok (by decide) (by decide)

/-- Catalogue code #10228: ((6,2,2)), m=14, a=[3, 7, 9, 9, 11, 13], S=[0, 6]. -/
def code_10228 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10228_ok : code_10228.OK := by native_decide
/-- Code #10228 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10228_qec :
    ∃ ψ, SS.IsAmplitudes code_10228 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10228 code_10228_ok (by decide) (by decide)

/-- Catalogue code #10229: ((6,2,2)), m=14, a=[3, 7, 9, 9, 12, 13], S=[0, 10]. -/
def code_10229 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10229_ok : code_10229.OK := by native_decide
/-- Code #10229 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10229_qec :
    ∃ ψ, SS.IsAmplitudes code_10229 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10229 code_10229_ok (by decide) (by decide)

/-- Catalogue code #10230: ((6,2,2)), m=14, a=[3, 7, 9, 9, 13, 13], S=[0, 2]. -/
def code_10230 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10230_ok : code_10230.OK := by native_decide
/-- Code #10230 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10230_qec :
    ∃ ψ, SS.IsAmplitudes code_10230 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10230 code_10230_ok (by decide) (by decide)

/-- Catalogue code #10231: ((6,2,2)), m=14, a=[3, 7, 9, 9, 13, 13], S=[0, 10]. -/
def code_10231 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10231_ok : code_10231.OK := by native_decide
/-- Code #10231 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10231_qec :
    ∃ ψ, SS.IsAmplitudes code_10231 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10231 code_10231_ok (by decide) (by decide)

/-- Catalogue code #10232: ((6,2,2)), m=14, a=[3, 7, 9, 10, 10, 12], S=[0, 1]. -/
def code_10232 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10232_ok : code_10232.OK := by native_decide
/-- Code #10232 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10232_qec :
    ∃ ψ, SS.IsAmplitudes code_10232 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10232 code_10232_ok (by decide) (by decide)

/-- Catalogue code #10233: ((6,2,2)), m=14, a=[3, 7, 9, 10, 10, 12], S=[0, 8]. -/
def code_10233 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10233_ok : code_10233.OK := by native_decide
/-- Code #10233 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10233_qec :
    ∃ ψ, SS.IsAmplitudes code_10233 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10233 code_10233_ok (by decide) (by decide)

/-- Catalogue code #10234: ((6,2,2)), m=14, a=[3, 7, 9, 10, 11, 13], S=[0, 6]. -/
def code_10234 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10234_ok : code_10234.OK := by native_decide
/-- Code #10234 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10234_qec :
    ∃ ψ, SS.IsAmplitudes code_10234 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10234 code_10234_ok (by decide) (by decide)

/-- Catalogue code #10235: ((6,2,2)), m=14, a=[3, 7, 9, 10, 12, 13], S=[0, 6]. -/
def code_10235 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10235_ok : code_10235.OK := by native_decide
/-- Code #10235 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10235_qec :
    ∃ ψ, SS.IsAmplitudes code_10235 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10235 code_10235_ok (by decide) (by decide)

/-- Catalogue code #10236: ((6,2,2)), m=14, a=[3, 7, 9, 10, 12, 13], S=[0, 8]. -/
def code_10236 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10236_ok : code_10236.OK := by native_decide
/-- Code #10236 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10236_qec :
    ∃ ψ, SS.IsAmplitudes code_10236 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10236 code_10236_ok (by decide) (by decide)

/-- Catalogue code #10237: ((6,2,2)), m=14, a=[3, 7, 9, 12, 13, 13], S=[0, 10]. -/
def code_10237 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10237_ok : code_10237.OK := by native_decide
/-- Code #10237 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10237_qec :
    ∃ ψ, SS.IsAmplitudes code_10237 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10237 code_10237_ok (by decide) (by decide)

/-- Catalogue code #10238: ((6,2,2)), m=14, a=[3, 7, 10, 12, 12, 13], S=[0, 9]. -/
def code_10238 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7)]
theorem code_10238_ok : code_10238.OK := by native_decide
/-- Code #10238 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10238_qec :
    ∃ ψ, SS.IsAmplitudes code_10238 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10238 code_10238_ok (by decide) (by decide)

/-- Catalogue code #10239: ((6,2,2)), m=14, a=[3, 7, 11, 12, 13, 13], S=[0, 8]. -/
def code_10239 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10239_ok : code_10239.OK := by native_decide
/-- Code #10239 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10239_qec :
    ∃ ψ, SS.IsAmplitudes code_10239 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10239 code_10239_ok (by decide) (by decide)

/-- Catalogue code #10240: ((6,2,2)), m=14, a=[3, 7, 11, 12, 13, 13], S=[0, 9]. -/
def code_10240 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10240_ok : code_10240.OK := by native_decide
/-- Code #10240 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10240_qec :
    ∃ ψ, SS.IsAmplitudes code_10240 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10240 code_10240_ok (by decide) (by decide)

/-- Catalogue code #10241: ((6,2,2)), m=14, a=[3, 8, 8, 8, 10, 13], S=[0, 12]. -/
def code_10241 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10241_ok : code_10241.OK := by native_decide
/-- Code #10241 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10241_qec :
    ∃ ψ, SS.IsAmplitudes code_10241 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10241 code_10241_ok (by decide) (by decide)

/-- Catalogue code #10242: ((6,2,2)), m=14, a=[3, 8, 8, 9, 10, 12], S=[0, 1]. -/
def code_10242 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10242_ok : code_10242.OK := by native_decide
/-- Code #10242 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10242_qec :
    ∃ ψ, SS.IsAmplitudes code_10242 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10242 code_10242_ok (by decide) (by decide)

/-- Catalogue code #10243: ((6,2,2)), m=14, a=[3, 8, 8, 9, 13, 13], S=[0, 2]. -/
def code_10243 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10243_ok : code_10243.OK := by native_decide
/-- Code #10243 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10243_qec :
    ∃ ψ, SS.IsAmplitudes code_10243 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10243 code_10243_ok (by decide) (by decide)

/-- Catalogue code #10244: ((6,2,2)), m=14, a=[3, 8, 8, 10, 10, 13], S=[0, 12]. -/
def code_10244 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10244_ok : code_10244.OK := by native_decide
/-- Code #10244 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10244_qec :
    ∃ ψ, SS.IsAmplitudes code_10244 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10244 code_10244_ok (by decide) (by decide)

/-- Catalogue code #10245: ((6,2,2)), m=14, a=[3, 8, 8, 10, 11, 13], S=[0, 12]. -/
def code_10245 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10245_ok : code_10245.OK := by native_decide
/-- Code #10245 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10245_qec :
    ∃ ψ, SS.IsAmplitudes code_10245 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10245 code_10245_ok (by decide) (by decide)

/-- Catalogue code #10246: ((6,2,2)), m=14, a=[3, 8, 8, 10, 12, 13], S=[0, 5]. -/
def code_10246 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ)]
theorem code_10246_ok : code_10246.OK := by native_decide
/-- Code #10246 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10246_qec :
    ∃ ψ, SS.IsAmplitudes code_10246 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10246 code_10246_ok (by decide) (by decide)

/-- Catalogue code #10247: ((6,2,2)), m=14, a=[3, 8, 9, 9, 11, 13], S=[0, 4]. -/
def code_10247 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10247_ok : code_10247.OK := by native_decide
/-- Code #10247 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10247_qec :
    ∃ ψ, SS.IsAmplitudes code_10247 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10247 code_10247_ok (by decide) (by decide)

/-- Catalogue code #10248: ((6,2,2)), m=14, a=[3, 8, 10, 12, 12, 13], S=[0, 9]. -/
def code_10248 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]
theorem code_10248_ok : code_10248.OK := by native_decide
/-- Code #10248 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10248_qec :
    ∃ ψ, SS.IsAmplitudes code_10248 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10248 code_10248_ok (by decide) (by decide)

/-- Catalogue code #10249: ((6,2,2)), m=14, a=[3, 9, 9, 10, 11, 13], S=[0, 6]. -/
def code_10249 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10249_ok : code_10249.OK := by native_decide
/-- Code #10249 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10249_qec :
    ∃ ψ, SS.IsAmplitudes code_10249 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10249 code_10249_ok (by decide) (by decide)

/-- Catalogue code #10250: ((6,2,2)), m=14, a=[3, 10, 10, 10, 12, 13], S=[0, 8]. -/
def code_10250 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10250_ok : code_10250.OK := by native_decide
/-- Code #10250 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10250_qec :
    ∃ ψ, SS.IsAmplitudes code_10250 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10250 code_10250_ok (by decide) (by decide)

/-- Catalogue code #10251: ((6,2,2)), m=14, a=[3, 10, 10, 11, 12, 13], S=[0, 8]. -/
def code_10251 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10251_ok : code_10251.OK := by native_decide
/-- Code #10251 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10251_qec :
    ∃ ψ, SS.IsAmplitudes code_10251 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10251 code_10251_ok (by decide) (by decide)

/-- Catalogue code #10252: ((6,2,2)), m=14, a=[3, 10, 10, 11, 12, 13], S=[0, 9]. -/
def code_10252 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10252_ok : code_10252.OK := by native_decide
/-- Code #10252 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10252_qec :
    ∃ ψ, SS.IsAmplitudes code_10252 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10252 code_10252_ok (by decide) (by decide)

/-- Catalogue code #10253: ((6,2,2)), m=14, a=[4, 4, 5, 5, 6, 8], S=[0, 2]. -/
def code_10253 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10253_ok : code_10253.OK := by native_decide
/-- Code #10253 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10253_qec :
    ∃ ψ, SS.IsAmplitudes code_10253 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10253 code_10253_ok (by decide) (by decide)

/-- Catalogue code #10254: ((6,2,2)), m=14, a=[4, 4, 5, 5, 6, 12], S=[0, 11]. -/
def code_10254 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10254_ok : code_10254.OK := by native_decide
/-- Code #10254 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10254_qec :
    ∃ ψ, SS.IsAmplitudes code_10254 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10254 code_10254_ok (by decide) (by decide)

/-- Catalogue code #10255: ((6,2,2)), m=14, a=[4, 4, 5, 5, 12, 12], S=[0, 6]. -/
def code_10255 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10255_ok : code_10255.OK := by native_decide
/-- Code #10255 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10255_qec :
    ∃ ψ, SS.IsAmplitudes code_10255 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10255 code_10255_ok (by decide) (by decide)

/-- Catalogue code #10256: ((6,2,2)), m=14, a=[4, 4, 5, 6, 7, 8], S=[0, 2]. -/
def code_10256 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10256_ok : code_10256.OK := by native_decide
/-- Code #10256 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10256_qec :
    ∃ ψ, SS.IsAmplitudes code_10256 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10256 code_10256_ok (by decide) (by decide)

/-- Catalogue code #10257: ((6,2,2)), m=14, a=[4, 4, 5, 6, 7, 8], S=[0, 12]. -/
def code_10257 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10257_ok : code_10257.OK := by native_decide
/-- Code #10257 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10257_qec :
    ∃ ψ, SS.IsAmplitudes code_10257 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10257 code_10257_ok (by decide) (by decide)

/-- Catalogue code #10258: ((6,2,2)), m=14, a=[4, 4, 5, 6, 7, 12], S=[0, 11]. -/
def code_10258 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]
theorem code_10258_ok : code_10258.OK := by native_decide
/-- Code #10258 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10258_qec :
    ∃ ψ, SS.IsAmplitudes code_10258 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10258 code_10258_ok (by decide) (by decide)

/-- Catalogue code #10259: ((6,2,2)), m=14, a=[4, 4, 5, 6, 7, 12], S=[0, 13]. -/
def code_10259 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]
theorem code_10259_ok : code_10259.OK := by native_decide
/-- Code #10259 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10259_qec :
    ∃ ψ, SS.IsAmplitudes code_10259 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10259 code_10259_ok (by decide) (by decide)

/-- Catalogue code #10260: ((6,2,2)), m=14, a=[4, 4, 5, 6, 8, 11], S=[0, 12]. -/
def code_10260 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10260_ok : code_10260.OK := by native_decide
/-- Code #10260 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10260_qec :
    ∃ ψ, SS.IsAmplitudes code_10260 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10260 code_10260_ok (by decide) (by decide)

/-- Catalogue code #10261: ((6,2,2)), m=14, a=[4, 4, 5, 7, 8, 11], S=[0, 13]. -/
def code_10261 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((4 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ)]
theorem code_10261_ok : code_10261.OK := by native_decide
/-- Code #10261 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10261_qec :
    ∃ ψ, SS.IsAmplitudes code_10261 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10261 code_10261_ok (by decide) (by decide)

/-- Catalogue code #10262: ((6,2,2)), m=14, a=[4, 4, 5, 7, 8, 12], S=[0, 1]. -/
def code_10262 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ)]
theorem code_10262_ok : code_10262.OK := by native_decide
/-- Code #10262 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10262_qec :
    ∃ ψ, SS.IsAmplitudes code_10262 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10262 code_10262_ok (by decide) (by decide)

/-- Catalogue code #10263: ((6,2,2)), m=14, a=[4, 4, 5, 7, 8, 12], S=[0, 11]. -/
def code_10263 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ)]
theorem code_10263_ok : code_10263.OK := by native_decide
/-- Code #10263 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10263_qec :
    ∃ ψ, SS.IsAmplitudes code_10263 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10263 code_10263_ok (by decide) (by decide)

/-- Catalogue code #10264: ((6,2,2)), m=14, a=[4, 4, 5, 7, 8, 12], S=[0, 13]. -/
def code_10264 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), (0 : ℚ)]
theorem code_10264_ok : code_10264.OK := by native_decide
/-- Code #10264 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10264_qec :
    ∃ ψ, SS.IsAmplitudes code_10264 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10264 code_10264_ok (by decide) (by decide)

/-- Catalogue code #10265: ((6,2,2)), m=14, a=[4, 4, 5, 7, 8, 13], S=[0, 11]. -/
def code_10265 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]
theorem code_10265_ok : code_10265.OK := by native_decide
/-- Code #10265 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10265_qec :
    ∃ ψ, SS.IsAmplitudes code_10265 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10265 code_10265_ok (by decide) (by decide)

/-- Catalogue code #10266: ((6,2,2)), m=14, a=[4, 4, 5, 7, 10, 12], S=[0, 8]. -/
def code_10266 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10266_ok : code_10266.OK := by native_decide
/-- Code #10266 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10266_qec :
    ∃ ψ, SS.IsAmplitudes code_10266 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10266 code_10266_ok (by decide) (by decide)

/-- Catalogue code #10267: ((6,2,2)), m=14, a=[4, 4, 5, 7, 12, 13], S=[0, 11]. -/
def code_10267 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10267_ok : code_10267.OK := by native_decide
/-- Code #10267 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10267_qec :
    ∃ ψ, SS.IsAmplitudes code_10267 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10267 code_10267_ok (by decide) (by decide)

/-- Catalogue code #10268: ((6,2,2)), m=14, a=[4, 4, 5, 7, 13, 13], S=[0, 6]. -/
def code_10268 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10268_ok : code_10268.OK := by native_decide
/-- Code #10268 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10268_qec :
    ∃ ψ, SS.IsAmplitudes code_10268 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10268 code_10268_ok (by decide) (by decide)

/-- Catalogue code #10269: ((6,2,2)), m=14, a=[4, 4, 5, 8, 9, 12], S=[0, 3]. -/
def code_10269 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7)]
theorem code_10269_ok : code_10269.OK := by native_decide
/-- Code #10269 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10269_qec :
    ∃ ψ, SS.IsAmplitudes code_10269 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10269 code_10269_ok (by decide) (by decide)

/-- Catalogue code #10270: ((6,2,2)), m=14, a=[4, 4, 5, 8, 11, 12], S=[0, 13]. -/
def code_10270 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]
theorem code_10270_ok : code_10270.OK := by native_decide
/-- Code #10270 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10270_qec :
    ∃ ψ, SS.IsAmplitudes code_10270 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10270 code_10270_ok (by decide) (by decide)

/-- Catalogue code #10271: ((6,2,2)), m=14, a=[4, 4, 5, 8, 12, 13], S=[0, 11]. -/
def code_10271 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ)]
theorem code_10271_ok : code_10271.OK := by native_decide
/-- Code #10271 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10271_qec :
    ∃ ψ, SS.IsAmplitudes code_10271 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10271 code_10271_ok (by decide) (by decide)

/-- Catalogue code #10272: ((6,2,2)), m=14, a=[4, 4, 5, 9, 11, 11], S=[0, 13]. -/
def code_10272 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_10272_ok : code_10272.OK := by native_decide
/-- Code #10272 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10272_qec :
    ∃ ψ, SS.IsAmplitudes code_10272 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10272 code_10272_ok (by decide) (by decide)

/-- Catalogue code #10273: ((6,2,2)), m=14, a=[4, 4, 5, 9, 11, 12], S=[0, 6]. -/
def code_10273 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10273_ok : code_10273.OK := by native_decide
/-- Code #10273 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10273_qec :
    ∃ ψ, SS.IsAmplitudes code_10273 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10273 code_10273_ok (by decide) (by decide)

/-- Catalogue code #10274: ((6,2,2)), m=14, a=[4, 4, 5, 10, 12, 12], S=[0, 6]. -/
def code_10274 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (1 : ℚ), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10274_ok : code_10274.OK := by native_decide
/-- Code #10274 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10274_qec :
    ∃ ψ, SS.IsAmplitudes code_10274 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10274 code_10274_ok (by decide) (by decide)

/-- Catalogue code #10275: ((6,2,2)), m=14, a=[4, 4, 5, 11, 11, 12], S=[0, 6]. -/
def code_10275 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10275_ok : code_10275.OK := by native_decide
/-- Code #10275 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10275_qec :
    ∃ ψ, SS.IsAmplitudes code_10275 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10275 code_10275_ok (by decide) (by decide)

/-- Catalogue code #10276: ((6,2,2)), m=14, a=[4, 4, 5, 11, 11, 12], S=[0, 13]. -/
def code_10276 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10276_ok : code_10276.OK := by native_decide
/-- Code #10276 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10276_qec :
    ∃ ψ, SS.IsAmplitudes code_10276 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10276 code_10276_ok (by decide) (by decide)

/-- Catalogue code #10277: ((6,2,2)), m=14, a=[4, 4, 6, 6, 13, 13], S=[0, 2]. -/
def code_10277 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10277_ok : code_10277.OK := by native_decide
/-- Code #10277 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10277_qec :
    ∃ ψ, SS.IsAmplitudes code_10277 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10277 code_10277_ok (by decide) (by decide)

/-- Catalogue code #10278: ((6,2,2)), m=14, a=[4, 4, 6, 7, 8, 9], S=[0, 12]. -/
def code_10278 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10278_ok : code_10278.OK := by native_decide
/-- Code #10278 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10278_qec :
    ∃ ψ, SS.IsAmplitudes code_10278 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10278 code_10278_ok (by decide) (by decide)

/-- Catalogue code #10279: ((6,2,2)), m=14, a=[4, 4, 6, 7, 8, 10], S=[0, 2]. -/
def code_10279 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), (1 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10279_ok : code_10279.OK := by native_decide
/-- Code #10279 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10279_qec :
    ∃ ψ, SS.IsAmplitudes code_10279 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10279 code_10279_ok (by decide) (by decide)

/-- Catalogue code #10280: ((6,2,2)), m=14, a=[4, 4, 6, 7, 8, 13], S=[0, 2]. -/
def code_10280 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, true, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10280_ok : code_10280.OK := by native_decide
/-- Code #10280 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10280_qec :
    ∃ ψ, SS.IsAmplitudes code_10280 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10280 code_10280_ok (by decide) (by decide)

/-- Catalogue code #10281: ((6,2,2)), m=14, a=[4, 4, 6, 7, 9, 11], S=[0, 1]. -/
def code_10281 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((4 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ)]
theorem code_10281_ok : code_10281.OK := by native_decide
/-- Code #10281 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10281_qec :
    ∃ ψ, SS.IsAmplitudes code_10281 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10281 code_10281_ok (by decide) (by decide)

/-- Catalogue code #10282: ((6,2,2)), m=14, a=[4, 4, 6, 7, 9, 12], S=[0, 1]. -/
def code_10282 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_10282_ok : code_10282.OK := by native_decide
/-- Code #10282 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10282_qec :
    ∃ ψ, SS.IsAmplitudes code_10282 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10282 code_10282_ok (by decide) (by decide)

/-- Catalogue code #10283: ((6,2,2)), m=14, a=[4, 4, 6, 7, 9, 13], S=[0, 3]. -/
def code_10283 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((5 : ℚ) / 7), (0 : ℚ)]
theorem code_10283_ok : code_10283.OK := by native_decide
/-- Code #10283 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10283_qec :
    ∃ ψ, SS.IsAmplitudes code_10283 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10283 code_10283_ok (by decide) (by decide)

/-- Catalogue code #10284: ((6,2,2)), m=14, a=[4, 4, 6, 8, 9, 10], S=[0, 2]. -/
def code_10284 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ), ((-1 : ℚ) / 7)]
theorem code_10284_ok : code_10284.OK := by native_decide
/-- Code #10284 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10284_qec :
    ∃ ψ, SS.IsAmplitudes code_10284 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10284 code_10284_ok (by decide) (by decide)

/-- Catalogue code #10285: ((6,2,2)), m=14, a=[4, 4, 6, 9, 10, 13], S=[0, 2]. -/
def code_10285 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10285_ok : code_10285.OK := by native_decide
/-- Code #10285 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10285_qec :
    ∃ ψ, SS.IsAmplitudes code_10285 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10285 code_10285_ok (by decide) (by decide)

/-- Catalogue code #10286: ((6,2,2)), m=14, a=[4, 4, 6, 9, 11, 11], S=[0, 1]. -/
def code_10286 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10286_ok : code_10286.OK := by native_decide
/-- Code #10286 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10286_qec :
    ∃ ψ, SS.IsAmplitudes code_10286 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10286 code_10286_ok (by decide) (by decide)

/-- Catalogue code #10287: ((6,2,2)), m=14, a=[4, 4, 6, 9, 11, 12], S=[0, 1]. -/
def code_10287 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((4 : ℚ) / 7)]
theorem code_10287_ok : code_10287.OK := by native_decide
/-- Code #10287 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10287_qec :
    ∃ ψ, SS.IsAmplitudes code_10287 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10287 code_10287_ok (by decide) (by decide)

/-- Catalogue code #10288: ((6,2,2)), m=14, a=[4, 4, 6, 9, 12, 13], S=[0, 3]. -/
def code_10288 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), (0 : ℚ)]
theorem code_10288_ok : code_10288.OK := by native_decide
/-- Code #10288 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10288_qec :
    ∃ ψ, SS.IsAmplitudes code_10288 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10288 code_10288_ok (by decide) (by decide)

/-- Catalogue code #10289: ((6,2,2)), m=14, a=[4, 4, 6, 10, 13, 13], S=[0, 2]. -/
def code_10289 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10289_ok : code_10289.OK := by native_decide
/-- Code #10289 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10289_qec :
    ∃ ψ, SS.IsAmplitudes code_10289 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10289 code_10289_ok (by decide) (by decide)

/-- Catalogue code #10290: ((6,2,2)), m=14, a=[4, 4, 6, 11, 11, 12], S=[0, 1]. -/
def code_10290 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7)]
theorem code_10290_ok : code_10290.OK := by native_decide
/-- Code #10290 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10290_qec :
    ∃ ψ, SS.IsAmplitudes code_10290 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10290 code_10290_ok (by decide) (by decide)

/-- Catalogue code #10291: ((6,2,2)), m=14, a=[4, 4, 6, 11, 11, 12], S=[0, 5]. -/
def code_10291 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7)]
theorem code_10291_ok : code_10291.OK := by native_decide
/-- Code #10291 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10291_qec :
    ∃ ψ, SS.IsAmplitudes code_10291 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10291 code_10291_ok (by decide) (by decide)

/-- Catalogue code #10292: ((6,2,2)), m=14, a=[4, 4, 6, 11, 11, 13], S=[0, 5]. -/
def code_10292 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((6 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10292_ok : code_10292.OK := by native_decide
/-- Code #10292 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10292_qec :
    ∃ ψ, SS.IsAmplitudes code_10292 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10292 code_10292_ok (by decide) (by decide)

/-- Catalogue code #10293: ((6,2,2)), m=14, a=[4, 4, 7, 8, 9, 11], S=[0, 13]. -/
def code_10293 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ)]
theorem code_10293_ok : code_10293.OK := by native_decide
/-- Code #10293 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10293_qec :
    ∃ ψ, SS.IsAmplitudes code_10293 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10293 code_10293_ok (by decide) (by decide)

/-- Catalogue code #10294: ((6,2,2)), m=14, a=[4, 4, 7, 8, 9, 12], S=[0, 1]. -/
def code_10294 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]
theorem code_10294_ok : code_10294.OK := by native_decide
/-- Code #10294 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10294_qec :
    ∃ ψ, SS.IsAmplitudes code_10294 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10294 code_10294_ok (by decide) (by decide)

/-- Catalogue code #10295: ((6,2,2)), m=14, a=[4, 4, 7, 8, 9, 12], S=[0, 3]. -/
def code_10295 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]
theorem code_10295_ok : code_10295.OK := by native_decide
/-- Code #10295 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10295_qec :
    ∃ ψ, SS.IsAmplitudes code_10295 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10295 code_10295_ok (by decide) (by decide)

/-- Catalogue code #10296: ((6,2,2)), m=14, a=[4, 4, 7, 8, 9, 12], S=[0, 13]. -/
def code_10296 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]
theorem code_10296_ok : code_10296.OK := by native_decide
/-- Code #10296 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10296_qec :
    ∃ ψ, SS.IsAmplitudes code_10296 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10296 code_10296_ok (by decide) (by decide)

/-- Catalogue code #10297: ((6,2,2)), m=14, a=[4, 4, 7, 8, 10, 13], S=[0, 2]. -/
def code_10297 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10297_ok : code_10297.OK := by native_decide
/-- Code #10297 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10297_qec :
    ∃ ψ, SS.IsAmplitudes code_10297 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10297 code_10297_ok (by decide) (by decide)

/-- Catalogue code #10298: ((6,2,2)), m=14, a=[4, 4, 7, 8, 11, 12], S=[0, 13]. -/
def code_10298 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7)]
theorem code_10298_ok : code_10298.OK := by native_decide
/-- Code #10298 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10298_qec :
    ∃ ψ, SS.IsAmplitudes code_10298 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10298 code_10298_ok (by decide) (by decide)

/-- Catalogue code #10299: ((6,2,2)), m=14, a=[4, 4, 7, 8, 12, 13], S=[0, 11]. -/
def code_10299 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((5 : ℚ) / 7), (0 : ℚ)]
theorem code_10299_ok : code_10299.OK := by native_decide
/-- Code #10299 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10299_qec :
    ∃ ψ, SS.IsAmplitudes code_10299 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10299 code_10299_ok (by decide) (by decide)

/-- Catalogue code #10300: ((6,2,2)), m=14, a=[4, 4, 7, 9, 11, 12], S=[0, 13]. -/
def code_10300 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10300_ok : code_10300.OK := by native_decide
/-- Code #10300 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10300_qec :
    ∃ ψ, SS.IsAmplitudes code_10300 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10300 code_10300_ok (by decide) (by decide)

/-- Catalogue code #10301: ((6,2,2)), m=14, a=[4, 4, 7, 9, 11, 13], S=[0, 8]. -/
def code_10301 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10301_ok : code_10301.OK := by native_decide
/-- Code #10301 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10301_qec :
    ∃ ψ, SS.IsAmplitudes code_10301 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10301 code_10301_ok (by decide) (by decide)

/-- Catalogue code #10302: ((6,2,2)), m=14, a=[4, 4, 7, 10, 12, 13], S=[0, 6]. -/
def code_10302 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10302_ok : code_10302.OK := by native_decide
/-- Code #10302 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10302_qec :
    ∃ ψ, SS.IsAmplitudes code_10302 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10302 code_10302_ok (by decide) (by decide)

/-- Catalogue code #10303: ((6,2,2)), m=14, a=[4, 4, 8, 9, 11, 12], S=[0, 13]. -/
def code_10303 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((4 : ℚ) / 7)]
theorem code_10303_ok : code_10303.OK := by native_decide
/-- Code #10303 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10303_qec :
    ∃ ψ, SS.IsAmplitudes code_10303 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10303 code_10303_ok (by decide) (by decide)

/-- Catalogue code #10304: ((6,2,2)), m=14, a=[4, 4, 8, 9, 12, 13], S=[0, 11]. -/
def code_10304 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), (0 : ℚ)]
theorem code_10304_ok : code_10304.OK := by native_decide
/-- Code #10304 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10304_qec :
    ∃ ψ, SS.IsAmplitudes code_10304 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10304 code_10304_ok (by decide) (by decide)

/-- Catalogue code #10305: ((6,2,2)), m=14, a=[4, 4, 8, 10, 13, 13], S=[0, 2]. -/
def code_10305 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10305_ok : code_10305.OK := by native_decide
/-- Code #10305 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10305_qec :
    ∃ ψ, SS.IsAmplitudes code_10305 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10305 code_10305_ok (by decide) (by decide)

/-- Catalogue code #10306: ((6,2,2)), m=14, a=[4, 4, 8, 11, 11, 12], S=[0, 13]. -/
def code_10306 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 7)]
theorem code_10306_ok : code_10306.OK := by native_decide
/-- Code #10306 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10306_qec :
    ∃ ψ, SS.IsAmplitudes code_10306 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10306 code_10306_ok (by decide) (by decide)

/-- Catalogue code #10307: ((6,2,2)), m=14, a=[4, 4, 9, 10, 11, 12], S=[0, 6]. -/
def code_10307 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10307_ok : code_10307.OK := by native_decide
/-- Code #10307 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10307_qec :
    ∃ ψ, SS.IsAmplitudes code_10307 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10307 code_10307_ok (by decide) (by decide)

/-- Catalogue code #10308: ((6,2,2)), m=14, a=[4, 4, 9, 10, 12, 13], S=[0, 8]. -/
def code_10308 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10308_ok : code_10308.OK := by native_decide
/-- Code #10308 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10308_qec :
    ∃ ψ, SS.IsAmplitudes code_10308 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10308 code_10308_ok (by decide) (by decide)

/-- Catalogue code #10309: ((6,2,2)), m=14, a=[4, 4, 9, 12, 13, 13], S=[0, 6]. -/
def code_10309 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10309_ok : code_10309.OK := by native_decide
/-- Code #10309 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10309_qec :
    ∃ ψ, SS.IsAmplitudes code_10309 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10309 code_10309_ok (by decide) (by decide)

/-- Catalogue code #10310: ((6,2,2)), m=14, a=[4, 4, 10, 11, 11, 12], S=[0, 8]. -/
def code_10310 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10310_ok : code_10310.OK := by native_decide
/-- Code #10310 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10310_qec :
    ∃ ψ, SS.IsAmplitudes code_10310 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10310 code_10310_ok (by decide) (by decide)

/-- Catalogue code #10311: ((6,2,2)), m=14, a=[4, 4, 11, 11, 12, 12], S=[0, 6]. -/
def code_10311 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10311_ok : code_10311.OK := by native_decide
/-- Code #10311 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10311_qec :
    ∃ ψ, SS.IsAmplitudes code_10311 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10311 code_10311_ok (by decide) (by decide)

/-- Catalogue code #10312: ((6,2,2)), m=14, a=[4, 4, 11, 11, 12, 12], S=[0, 8]. -/
def code_10312 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10312_ok : code_10312.OK := by native_decide
/-- Code #10312 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10312_qec :
    ∃ ψ, SS.IsAmplitudes code_10312 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10312 code_10312_ok (by decide) (by decide)

/-- Catalogue code #10313: ((6,2,2)), m=14, a=[4, 4, 11, 11, 12, 13], S=[0, 5]. -/
def code_10313 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10313_ok : code_10313.OK := by native_decide
/-- Code #10313 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10313_qec :
    ∃ ψ, SS.IsAmplitudes code_10313 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10313 code_10313_ok (by decide) (by decide)

/-- Catalogue code #10314: ((6,2,2)), m=14, a=[4, 5, 5, 6, 7, 11], S=[0, 13]. -/
def code_10314 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7)]
theorem code_10314_ok : code_10314.OK := by native_decide
/-- Code #10314 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10314_qec :
    ∃ ψ, SS.IsAmplitudes code_10314 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10314 code_10314_ok (by decide) (by decide)

/-- Catalogue code #10315: ((6,2,2)), m=14, a=[4, 5, 5, 6, 12, 12], S=[0, 1]. -/
def code_10315 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10315_ok : code_10315.OK := by native_decide
/-- Code #10315 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10315_qec :
    ∃ ψ, SS.IsAmplitudes code_10315 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10315 code_10315_ok (by decide) (by decide)

/-- Catalogue code #10316: ((6,2,2)), m=14, a=[4, 5, 5, 6, 13, 13], S=[0, 2]. -/
def code_10316 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10316_ok : code_10316.OK := by native_decide
/-- Code #10316 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10316_qec :
    ∃ ψ, SS.IsAmplitudes code_10316 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10316 code_10316_ok (by decide) (by decide)

/-- Catalogue code #10317: ((6,2,2)), m=14, a=[4, 5, 5, 7, 8, 8], S=[0, 12]. -/
def code_10317 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10317_ok : code_10317.OK := by native_decide
/-- Code #10317 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10317_qec :
    ∃ ψ, SS.IsAmplitudes code_10317 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10317 code_10317_ok (by decide) (by decide)

/-- Catalogue code #10318: ((6,2,2)), m=14, a=[4, 5, 5, 7, 8, 11], S=[0, 1]. -/
def code_10318 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7)]
theorem code_10318_ok : code_10318.OK := by native_decide
/-- Code #10318 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10318_qec :
    ∃ ψ, SS.IsAmplitudes code_10318 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10318 code_10318_ok (by decide) (by decide)

/-- Catalogue code #10319: ((6,2,2)), m=14, a=[4, 5, 5, 7, 8, 13], S=[0, 3]. -/
def code_10319 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10319_ok : code_10319.OK := by native_decide
/-- Code #10319 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10319_qec :
    ∃ ψ, SS.IsAmplitudes code_10319 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10319 code_10319_ok (by decide) (by decide)

/-- Catalogue code #10320: ((6,2,2)), m=14, a=[4, 5, 5, 7, 11, 12], S=[0, 1]. -/
def code_10320 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10320_ok : code_10320.OK := by native_decide
/-- Code #10320 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10320_qec :
    ∃ ψ, SS.IsAmplitudes code_10320 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10320 code_10320_ok (by decide) (by decide)

/-- Catalogue code #10321: ((6,2,2)), m=14, a=[4, 5, 5, 7, 11, 13], S=[0, 2]. -/
def code_10321 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_10321_ok : code_10321.OK := by native_decide
/-- Code #10321 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10321_qec :
    ∃ ψ, SS.IsAmplitudes code_10321 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10321 code_10321_ok (by decide) (by decide)

/-- Catalogue code #10322: ((6,2,2)), m=14, a=[4, 5, 5, 7, 11, 13], S=[0, 6]. -/
def code_10322 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10322_ok : code_10322.OK := by native_decide
/-- Code #10322 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10322_qec :
    ∃ ψ, SS.IsAmplitudes code_10322 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10322 code_10322_ok (by decide) (by decide)

/-- Catalogue code #10323: ((6,2,2)), m=14, a=[4, 5, 5, 7, 12, 13], S=[0, 3]. -/
def code_10323 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10323_ok : code_10323.OK := by native_decide
/-- Code #10323 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10323_qec :
    ∃ ψ, SS.IsAmplitudes code_10323 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10323 code_10323_ok (by decide) (by decide)

/-- Catalogue code #10324: ((6,2,2)), m=14, a=[4, 5, 5, 7, 13, 13], S=[0, 2]. -/
def code_10324 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10324_ok : code_10324.OK := by native_decide
/-- Code #10324 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10324_qec :
    ∃ ψ, SS.IsAmplitudes code_10324 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10324 code_10324_ok (by decide) (by decide)

/-- Catalogue code #10325: ((6,2,2)), m=14, a=[4, 5, 5, 8, 11, 13], S=[0, 2]. -/
def code_10325 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10325_ok : code_10325.OK := by native_decide
/-- Code #10325 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10325_qec :
    ∃ ψ, SS.IsAmplitudes code_10325 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10325 code_10325_ok (by decide) (by decide)

/-- Catalogue code #10326: ((6,2,2)), m=14, a=[4, 5, 5, 8, 12, 12], S=[0, 1]. -/
def code_10326 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7)]
theorem code_10326_ok : code_10326.OK := by native_decide
/-- Code #10326 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10326_qec :
    ∃ ψ, SS.IsAmplitudes code_10326 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10326 code_10326_ok (by decide) (by decide)

/-- Catalogue code #10327: ((6,2,2)), m=14, a=[4, 5, 5, 8, 12, 12], S=[0, 3]. -/
def code_10327 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10327_ok : code_10327.OK := by native_decide
/-- Code #10327 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10327_qec :
    ∃ ψ, SS.IsAmplitudes code_10327 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10327 code_10327_ok (by decide) (by decide)

/-- Catalogue code #10328: ((6,2,2)), m=14, a=[4, 5, 5, 8, 12, 13], S=[0, 3]. -/
def code_10328 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10328_ok : code_10328.OK := by native_decide
/-- Code #10328 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10328_qec :
    ∃ ψ, SS.IsAmplitudes code_10328 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10328 code_10328_ok (by decide) (by decide)

/-- Catalogue code #10329: ((6,2,2)), m=14, a=[4, 5, 5, 10, 11, 11], S=[0, 1]. -/
def code_10329 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_10329_ok : code_10329.OK := by native_decide
/-- Code #10329 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10329_qec :
    ∃ ψ, SS.IsAmplitudes code_10329 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10329 code_10329_ok (by decide) (by decide)

/-- Catalogue code #10330: ((6,2,2)), m=14, a=[4, 5, 5, 10, 11, 11], S=[0, 6]. -/
def code_10330 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10330_ok : code_10330.OK := by native_decide
/-- Code #10330 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10330_qec :
    ∃ ψ, SS.IsAmplitudes code_10330 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10330 code_10330_ok (by decide) (by decide)

/-- Catalogue code #10331: ((6,2,2)), m=14, a=[4, 5, 5, 11, 11, 11], S=[0, 1]. -/
def code_10331 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10331_ok : code_10331.OK := by native_decide
/-- Code #10331 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10331_qec :
    ∃ ψ, SS.IsAmplitudes code_10331 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10331 code_10331_ok (by decide) (by decide)

/-- Catalogue code #10332: ((6,2,2)), m=14, a=[4, 5, 5, 11, 12, 12], S=[0, 1]. -/
def code_10332 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((6 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10332_ok : code_10332.OK := by native_decide
/-- Code #10332 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10332_qec :
    ∃ ψ, SS.IsAmplitudes code_10332 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10332 code_10332_ok (by decide) (by decide)

/-- Catalogue code #10333: ((6,2,2)), m=14, a=[4, 5, 5, 11, 13, 13], S=[0, 2]. -/
def code_10333 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10333_ok : code_10333.OK := by native_decide
/-- Code #10333 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10333_qec :
    ∃ ψ, SS.IsAmplitudes code_10333 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10333 code_10333_ok (by decide) (by decide)

/-- Catalogue code #10334: ((6,2,2)), m=14, a=[4, 5, 5, 12, 12, 13], S=[0, 3]. -/
def code_10334 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10334_ok : code_10334.OK := by native_decide
/-- Code #10334 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10334_qec :
    ∃ ψ, SS.IsAmplitudes code_10334 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10334 code_10334_ok (by decide) (by decide)

/-- Catalogue code #10335: ((6,2,2)), m=14, a=[4, 5, 5, 12, 13, 13], S=[0, 3]. -/
def code_10335 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10335_ok : code_10335.OK := by native_decide
/-- Code #10335 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10335_qec :
    ∃ ψ, SS.IsAmplitudes code_10335 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10335 code_10335_ok (by decide) (by decide)

/-- Catalogue code #10336: ((6,2,2)), m=14, a=[4, 5, 6, 6, 7, 8], S=[0, 12]. -/
def code_10336 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10336_ok : code_10336.OK := by native_decide
/-- Code #10336 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10336_qec :
    ∃ ψ, SS.IsAmplitudes code_10336 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10336 code_10336_ok (by decide) (by decide)

/-- Catalogue code #10337: ((6,2,2)), m=14, a=[4, 5, 6, 6, 7, 11], S=[0, 2]. -/
def code_10337 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10337_ok : code_10337.OK := by native_decide
/-- Code #10337 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10337_qec :
    ∃ ψ, SS.IsAmplitudes code_10337 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10337 code_10337_ok (by decide) (by decide)

/-- Catalogue code #10338: ((6,2,2)), m=14, a=[4, 5, 6, 6, 7, 11], S=[0, 13]. -/
def code_10338 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10338_ok : code_10338.OK := by native_decide
/-- Code #10338 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10338_qec :
    ∃ ψ, SS.IsAmplitudes code_10338 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10338 code_10338_ok (by decide) (by decide)

/-- Catalogue code #10339: ((6,2,2)), m=14, a=[4, 5, 6, 6, 7, 12], S=[0, 1]. -/
def code_10339 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7)]
theorem code_10339_ok : code_10339.OK := by native_decide
/-- Code #10339 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10339_qec :
    ∃ ψ, SS.IsAmplitudes code_10339 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10339 code_10339_ok (by decide) (by decide)

/-- Catalogue code #10340: ((6,2,2)), m=14, a=[4, 5, 6, 6, 7, 13], S=[0, 2]. -/
def code_10340 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10340_ok : code_10340.OK := by native_decide
/-- Code #10340 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10340_qec :
    ∃ ψ, SS.IsAmplitudes code_10340 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10340 code_10340_ok (by decide) (by decide)

/-- Catalogue code #10341: ((6,2,2)), m=14, a=[4, 5, 6, 6, 11, 12], S=[0, 1]. -/
def code_10341 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7)]
theorem code_10341_ok : code_10341.OK := by native_decide
/-- Code #10341 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10341_qec :
    ∃ ψ, SS.IsAmplitudes code_10341 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10341 code_10341_ok (by decide) (by decide)

/-- Catalogue code #10342: ((6,2,2)), m=14, a=[4, 5, 6, 6, 12, 13], S=[0, 3]. -/
def code_10342 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((6 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]
theorem code_10342_ok : code_10342.OK := by native_decide
/-- Code #10342 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10342_qec :
    ∃ ψ, SS.IsAmplitudes code_10342 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10342 code_10342_ok (by decide) (by decide)

/-- Catalogue code #10343: ((6,2,2)), m=14, a=[4, 5, 6, 6, 13, 13], S=[0, 2]. -/
def code_10343 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10343_ok : code_10343.OK := by native_decide
/-- Code #10343 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10343_qec :
    ∃ ψ, SS.IsAmplitudes code_10343 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10343 code_10343_ok (by decide) (by decide)

/-- Catalogue code #10344: ((6,2,2)), m=14, a=[4, 5, 6, 6, 13, 13], S=[0, 3]. -/
def code_10344 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10344_ok : code_10344.OK := by native_decide
/-- Code #10344 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10344_qec :
    ∃ ψ, SS.IsAmplitudes code_10344 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10344 code_10344_ok (by decide) (by decide)

/-- Catalogue code #10345: ((6,2,2)), m=14, a=[4, 5, 6, 7, 8, 10], S=[0, 2]. -/
def code_10345 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10345_ok : code_10345.OK := by native_decide
/-- Code #10345 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10345_qec :
    ∃ ψ, SS.IsAmplitudes code_10345 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10345 code_10345_ok (by decide) (by decide)

/-- Catalogue code #10346: ((6,2,2)), m=14, a=[4, 5, 6, 7, 8, 11], S=[0, 1]. -/
def code_10346 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10346_ok : code_10346.OK := by native_decide
/-- Code #10346 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10346_qec :
    ∃ ψ, SS.IsAmplitudes code_10346 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10346 code_10346_ok (by decide) (by decide)

/-- Catalogue code #10347: ((6,2,2)), m=14, a=[4, 5, 6, 7, 8, 13], S=[0, 12]. -/
def code_10347 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10347_ok : code_10347.OK := by native_decide
/-- Code #10347 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10347_qec :
    ∃ ψ, SS.IsAmplitudes code_10347 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10347 code_10347_ok (by decide) (by decide)

/-- Catalogue code #10348: ((6,2,2)), m=14, a=[4, 5, 6, 7, 10, 11], S=[0, 13]. -/
def code_10348 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-4 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]
theorem code_10348_ok : code_10348.OK := by native_decide
/-- Code #10348 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10348_qec :
    ∃ ψ, SS.IsAmplitudes code_10348 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10348 code_10348_ok (by decide) (by decide)

/-- Catalogue code #10349: ((6,2,2)), m=14, a=[4, 5, 6, 7, 10, 12], S=[0, 1]. -/
def code_10349 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ)]
theorem code_10349_ok : code_10349.OK := by native_decide
/-- Code #10349 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10349_qec :
    ∃ ψ, SS.IsAmplitudes code_10349 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10349 code_10349_ok (by decide) (by decide)

/-- Catalogue code #10350: ((6,2,2)), m=14, a=[4, 5, 6, 7, 10, 12], S=[0, 3]. -/
def code_10350 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ)]
theorem code_10350_ok : code_10350.OK := by native_decide
/-- Code #10350 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10350_qec :
    ∃ ψ, SS.IsAmplitudes code_10350 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10350 code_10350_ok (by decide) (by decide)

/-- Catalogue code #10351: ((6,2,2)), m=14, a=[4, 5, 6, 7, 10, 12], S=[0, 13]. -/
def code_10351 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ)]
theorem code_10351_ok : code_10351.OK := by native_decide
/-- Code #10351 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10351_qec :
    ∃ ψ, SS.IsAmplitudes code_10351 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10351 code_10351_ok (by decide) (by decide)

/-- Catalogue code #10352: ((6,2,2)), m=14, a=[4, 5, 6, 7, 11, 12], S=[0, 13]. -/
def code_10352 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10352_ok : code_10352.OK := by native_decide
/-- Code #10352 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10352_qec :
    ∃ ψ, SS.IsAmplitudes code_10352 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10352 code_10352_ok (by decide) (by decide)

/-- Catalogue code #10353: ((6,2,2)), m=14, a=[4, 5, 6, 7, 11, 13], S=[0, 12]. -/
def code_10353 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10353_ok : code_10353.OK := by native_decide
/-- Code #10353 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10353_qec :
    ∃ ψ, SS.IsAmplitudes code_10353 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10353 code_10353_ok (by decide) (by decide)

/-- Catalogue code #10354: ((6,2,2)), m=14, a=[4, 5, 6, 7, 12, 12], S=[0, 3]. -/
def code_10354 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10354_ok : code_10354.OK := by native_decide
/-- Code #10354 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10354_qec :
    ∃ ψ, SS.IsAmplitudes code_10354 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10354 code_10354_ok (by decide) (by decide)

/-- Catalogue code #10355: ((6,2,2)), m=14, a=[4, 5, 6, 7, 12, 13], S=[0, 3]. -/
def code_10355 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10355_ok : code_10355.OK := by native_decide
/-- Code #10355 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10355_qec :
    ∃ ψ, SS.IsAmplitudes code_10355 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10355 code_10355_ok (by decide) (by decide)

/-- Catalogue code #10356: ((6,2,2)), m=14, a=[4, 5, 6, 8, 10, 10], S=[0, 12]. -/
def code_10356 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), (1 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10356_ok : code_10356.OK := by native_decide
/-- Code #10356 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10356_qec :
    ∃ ψ, SS.IsAmplitudes code_10356 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10356 code_10356_ok (by decide) (by decide)

/-- Catalogue code #10357: ((6,2,2)), m=14, a=[4, 5, 6, 8, 10, 11], S=[0, 12]. -/
def code_10357 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10357_ok : code_10357.OK := by native_decide
/-- Code #10357 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10357_qec :
    ∃ ψ, SS.IsAmplitudes code_10357 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10357 code_10357_ok (by decide) (by decide)

/-- Catalogue code #10358: ((6,2,2)), m=14, a=[4, 5, 6, 8, 10, 13], S=[0, 2]. -/
def code_10358 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10358_ok : code_10358.OK := by native_decide
/-- Code #10358 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10358_qec :
    ∃ ψ, SS.IsAmplitudes code_10358 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10358 code_10358_ok (by decide) (by decide)

/-- Catalogue code #10359: ((6,2,2)), m=14, a=[4, 5, 6, 8, 11, 13], S=[0, 12]. -/
def code_10359 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10359_ok : code_10359.OK := by native_decide
/-- Code #10359 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10359_qec :
    ∃ ψ, SS.IsAmplitudes code_10359 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10359 code_10359_ok (by decide) (by decide)

/-- Catalogue code #10360: ((6,2,2)), m=14, a=[4, 5, 6, 10, 11, 12], S=[0, 13]. -/
def code_10360 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((-4 : ℚ) / 7)]
theorem code_10360_ok : code_10360.OK := by native_decide
/-- Code #10360 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10360_qec :
    ∃ ψ, SS.IsAmplitudes code_10360 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10360 code_10360_ok (by decide) (by decide)

/-- Catalogue code #10361: ((6,2,2)), m=14, a=[4, 5, 6, 11, 13, 13], S=[0, 2]. -/
def code_10361 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10361_ok : code_10361.OK := by native_decide
/-- Code #10361 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10361_qec :
    ∃ ψ, SS.IsAmplitudes code_10361 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10361 code_10361_ok (by decide) (by decide)

/-- Catalogue code #10362: ((6,2,2)), m=14, a=[4, 5, 6, 12, 12, 13], S=[0, 3]. -/
def code_10362 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]
theorem code_10362_ok : code_10362.OK := by native_decide
/-- Code #10362 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10362_qec :
    ∃ ψ, SS.IsAmplitudes code_10362 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10362 code_10362_ok (by decide) (by decide)

/-- Catalogue code #10363: ((6,2,2)), m=14, a=[4, 5, 7, 8, 8, 11], S=[0, 13]. -/
def code_10363 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10363_ok : code_10363.OK := by native_decide
/-- Code #10363 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10363_qec :
    ∃ ψ, SS.IsAmplitudes code_10363 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10363 code_10363_ok (by decide) (by decide)

/-- Catalogue code #10364: ((6,2,2)), m=14, a=[4, 5, 7, 8, 8, 12], S=[0, 13]. -/
def code_10364 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10364_ok : code_10364.OK := by native_decide
/-- Code #10364 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10364_qec :
    ∃ ψ, SS.IsAmplitudes code_10364 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10364 code_10364_ok (by decide) (by decide)

/-- Catalogue code #10365: ((6,2,2)), m=14, a=[4, 5, 7, 8, 9, 11], S=[0, 13]. -/
def code_10365 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_10365_ok : code_10365.OK := by native_decide
/-- Code #10365 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10365_qec :
    ∃ ψ, SS.IsAmplitudes code_10365 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10365 code_10365_ok (by decide) (by decide)

/-- Catalogue code #10366: ((6,2,2)), m=14, a=[4, 5, 7, 8, 10, 11], S=[0, 1]. -/
def code_10366 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((4 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]
theorem code_10366_ok : code_10366.OK := by native_decide
/-- Code #10366 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10366_qec :
    ∃ ψ, SS.IsAmplitudes code_10366 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10366 code_10366_ok (by decide) (by decide)

/-- Catalogue code #10367: ((6,2,2)), m=14, a=[4, 5, 7, 8, 10, 12], S=[0, 1]. -/
def code_10367 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]
theorem code_10367_ok : code_10367.OK := by native_decide
/-- Code #10367 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10367_qec :
    ∃ ψ, SS.IsAmplitudes code_10367 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10367 code_10367_ok (by decide) (by decide)

/-- Catalogue code #10368: ((6,2,2)), m=14, a=[4, 5, 7, 8, 10, 12], S=[0, 3]. -/
def code_10368 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]
theorem code_10368_ok : code_10368.OK := by native_decide
/-- Code #10368 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10368_qec :
    ∃ ψ, SS.IsAmplitudes code_10368 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10368 code_10368_ok (by decide) (by decide)

/-- Catalogue code #10369: ((6,2,2)), m=14, a=[4, 5, 7, 8, 10, 13], S=[0, 3]. -/
def code_10369 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]
theorem code_10369_ok : code_10369.OK := by native_decide
/-- Code #10369 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10369_qec :
    ∃ ψ, SS.IsAmplitudes code_10369 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10369 code_10369_ok (by decide) (by decide)

/-- Catalogue code #10370: ((6,2,2)), m=14, a=[4, 5, 7, 8, 11, 11], S=[0, 13]. -/
def code_10370 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7)]
theorem code_10370_ok : code_10370.OK := by native_decide
/-- Code #10370 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10370_qec :
    ∃ ψ, SS.IsAmplitudes code_10370 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10370 code_10370_ok (by decide) (by decide)

/-- Catalogue code #10371: ((6,2,2)), m=14, a=[4, 5, 7, 8, 11, 12], S=[0, 1]. -/
def code_10371 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10371_ok : code_10371.OK := by native_decide
/-- Code #10371 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10371_qec :
    ∃ ψ, SS.IsAmplitudes code_10371 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10371 code_10371_ok (by decide) (by decide)

/-- Catalogue code #10372: ((6,2,2)), m=14, a=[4, 5, 7, 8, 11, 12], S=[0, 13]. -/
def code_10372 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10372_ok : code_10372.OK := by native_decide
/-- Code #10372 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10372_qec :
    ∃ ψ, SS.IsAmplitudes code_10372 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10372 code_10372_ok (by decide) (by decide)

/-- Catalogue code #10373: ((6,2,2)), m=14, a=[4, 5, 7, 8, 11, 13], S=[0, 12]. -/
def code_10373 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10373_ok : code_10373.OK := by native_decide
/-- Code #10373 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10373_qec :
    ∃ ψ, SS.IsAmplitudes code_10373 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10373 code_10373_ok (by decide) (by decide)

/-- Catalogue code #10374: ((6,2,2)), m=14, a=[4, 5, 7, 8, 12, 13], S=[0, 3]. -/
def code_10374 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10374_ok : code_10374.OK := by native_decide
/-- Code #10374 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10374_qec :
    ∃ ψ, SS.IsAmplitudes code_10374 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10374 code_10374_ok (by decide) (by decide)

/-- Catalogue code #10375: ((6,2,2)), m=14, a=[4, 5, 7, 8, 12, 13], S=[0, 11]. -/
def code_10375 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10375_ok : code_10375.OK := by native_decide
/-- Code #10375 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10375_qec :
    ∃ ψ, SS.IsAmplitudes code_10375 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10375 code_10375_ok (by decide) (by decide)

/-- Catalogue code #10376: ((6,2,2)), m=14, a=[4, 5, 7, 9, 11, 11], S=[0, 6]. -/
def code_10376 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10376_ok : code_10376.OK := by native_decide
/-- Code #10376 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10376_qec :
    ∃ ψ, SS.IsAmplitudes code_10376 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10376 code_10376_ok (by decide) (by decide)

/-- Catalogue code #10377: ((6,2,2)), m=14, a=[4, 5, 7, 9, 11, 11], S=[0, 13]. -/
def code_10377 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10377_ok : code_10377.OK := by native_decide
/-- Code #10377 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10377_qec :
    ∃ ψ, SS.IsAmplitudes code_10377 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10377 code_10377_ok (by decide) (by decide)

/-- Catalogue code #10378: ((6,2,2)), m=14, a=[4, 5, 7, 9, 13, 13], S=[0, 11]. -/
def code_10378 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10378_ok : code_10378.OK := by native_decide
/-- Code #10378 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10378_qec :
    ∃ ψ, SS.IsAmplitudes code_10378 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10378 code_10378_ok (by decide) (by decide)

/-- Catalogue code #10379: ((6,2,2)), m=14, a=[4, 5, 7, 9, 13, 13], S=[0, 12]. -/
def code_10379 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10379_ok : code_10379.OK := by native_decide
/-- Code #10379 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10379_qec :
    ∃ ψ, SS.IsAmplitudes code_10379 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10379 code_10379_ok (by decide) (by decide)

/-- Catalogue code #10380: ((6,2,2)), m=14, a=[4, 5, 7, 10, 11, 12], S=[0, 1]. -/
def code_10380 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10380_ok : code_10380.OK := by native_decide
/-- Code #10380 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10380_qec :
    ∃ ψ, SS.IsAmplitudes code_10380 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10380 code_10380_ok (by decide) (by decide)

/-- Catalogue code #10381: ((6,2,2)), m=14, a=[4, 5, 7, 10, 11, 13], S=[0, 6]. -/
def code_10381 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10381_ok : code_10381.OK := by native_decide
/-- Code #10381 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10381_qec :
    ∃ ψ, SS.IsAmplitudes code_10381 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10381 code_10381_ok (by decide) (by decide)

/-- Catalogue code #10382: ((6,2,2)), m=14, a=[4, 5, 7, 10, 12, 13], S=[0, 3]. -/
def code_10382 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10382_ok : code_10382.OK := by native_decide
/-- Code #10382 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10382_qec :
    ∃ ψ, SS.IsAmplitudes code_10382 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10382 code_10382_ok (by decide) (by decide)

/-- Catalogue code #10383: ((6,2,2)), m=14, a=[4, 5, 7, 10, 13, 13], S=[0, 8]. -/
def code_10383 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10383_ok : code_10383.OK := by native_decide
/-- Code #10383 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10383_qec :
    ∃ ψ, SS.IsAmplitudes code_10383 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10383 code_10383_ok (by decide) (by decide)

/-- Catalogue code #10384: ((6,2,2)), m=14, a=[4, 5, 7, 11, 12, 13], S=[0, 6]. -/
def code_10384 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10384_ok : code_10384.OK := by native_decide
/-- Code #10384 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10384_qec :
    ∃ ψ, SS.IsAmplitudes code_10384 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10384 code_10384_ok (by decide) (by decide)

/-- Catalogue code #10385: ((6,2,2)), m=14, a=[4, 5, 7, 11, 13, 13], S=[0, 2]. -/
def code_10385 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10385_ok : code_10385.OK := by native_decide
/-- Code #10385 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10385_qec :
    ∃ ψ, SS.IsAmplitudes code_10385 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10385 code_10385_ok (by decide) (by decide)

/-- Catalogue code #10386: ((6,2,2)), m=14, a=[4, 5, 7, 12, 12, 13], S=[0, 3]. -/
def code_10386 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10386_ok : code_10386.OK := by native_decide
/-- Code #10386 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10386_qec :
    ∃ ψ, SS.IsAmplitudes code_10386 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10386 code_10386_ok (by decide) (by decide)

/-- Catalogue code #10387: ((6,2,2)), m=14, a=[4, 5, 7, 12, 13, 13], S=[0, 3]. -/
def code_10387 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]
theorem code_10387_ok : code_10387.OK := by native_decide
/-- Code #10387 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10387_qec :
    ∃ ψ, SS.IsAmplitudes code_10387 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10387 code_10387_ok (by decide) (by decide)

/-- Catalogue code #10388: ((6,2,2)), m=14, a=[4, 5, 8, 8, 10, 11], S=[0, 2]. -/
def code_10388 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10388_ok : code_10388.OK := by native_decide
/-- Code #10388 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10388_qec :
    ∃ ψ, SS.IsAmplitudes code_10388 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10388 code_10388_ok (by decide) (by decide)

/-- Catalogue code #10389: ((6,2,2)), m=14, a=[4, 5, 8, 8, 10, 11], S=[0, 12]. -/
def code_10389 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10389_ok : code_10389.OK := by native_decide
/-- Code #10389 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10389_qec :
    ∃ ψ, SS.IsAmplitudes code_10389 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10389 code_10389_ok (by decide) (by decide)

/-- Catalogue code #10390: ((6,2,2)), m=14, a=[4, 5, 8, 8, 11, 12], S=[0, 13]. -/
def code_10390 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7)]
theorem code_10390_ok : code_10390.OK := by native_decide
/-- Code #10390 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10390_qec :
    ∃ ψ, SS.IsAmplitudes code_10390 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10390 code_10390_ok (by decide) (by decide)

/-- Catalogue code #10391: ((6,2,2)), m=14, a=[4, 5, 8, 9, 11, 11], S=[0, 13]. -/
def code_10391 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_10391_ok : code_10391.OK := by native_decide
/-- Code #10391 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10391_qec :
    ∃ ψ, SS.IsAmplitudes code_10391 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10391 code_10391_ok (by decide) (by decide)

/-- Catalogue code #10392: ((6,2,2)), m=14, a=[4, 5, 8, 9, 12, 13], S=[0, 11]. -/
def code_10392 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10392_ok : code_10392.OK := by native_decide
/-- Code #10392 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10392_qec :
    ∃ ψ, SS.IsAmplitudes code_10392 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10392 code_10392_ok (by decide) (by decide)

/-- Catalogue code #10393: ((6,2,2)), m=14, a=[4, 5, 8, 10, 10, 11], S=[0, 12]. -/
def code_10393 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10393_ok : code_10393.OK := by native_decide
/-- Code #10393 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10393_qec :
    ∃ ψ, SS.IsAmplitudes code_10393 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10393 code_10393_ok (by decide) (by decide)

/-- Catalogue code #10394: ((6,2,2)), m=14, a=[4, 5, 8, 10, 12, 13], S=[0, 3]. -/
def code_10394 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((4 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]
theorem code_10394_ok : code_10394.OK := by native_decide
/-- Code #10394 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10394_qec :
    ∃ ψ, SS.IsAmplitudes code_10394 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10394 code_10394_ok (by decide) (by decide)

/-- Catalogue code #10395: ((6,2,2)), m=14, a=[4, 5, 8, 11, 11, 12], S=[0, 13]. -/
def code_10395 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10395_ok : code_10395.OK := by native_decide
/-- Code #10395 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10395_qec :
    ∃ ψ, SS.IsAmplitudes code_10395 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10395 code_10395_ok (by decide) (by decide)

/-- Catalogue code #10396: ((6,2,2)), m=14, a=[4, 5, 8, 11, 12, 12], S=[0, 1]. -/
def code_10396 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10396_ok : code_10396.OK := by native_decide
/-- Code #10396 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10396_qec :
    ∃ ψ, SS.IsAmplitudes code_10396 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10396 code_10396_ok (by decide) (by decide)

/-- Catalogue code #10397: ((6,2,2)), m=14, a=[4, 5, 8, 12, 12, 13], S=[0, 3]. -/
def code_10397 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]
theorem code_10397_ok : code_10397.OK := by native_decide
/-- Code #10397 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10397_qec :
    ∃ ψ, SS.IsAmplitudes code_10397 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10397 code_10397_ok (by decide) (by decide)

/-- Catalogue code #10398: ((6,2,2)), m=14, a=[4, 5, 10, 11, 11, 11], S=[0, 1]. -/
def code_10398 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10398_ok : code_10398.OK := by native_decide
/-- Code #10398 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10398_qec :
    ∃ ψ, SS.IsAmplitudes code_10398 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10398 code_10398_ok (by decide) (by decide)

/-- Catalogue code #10399: ((6,2,2)), m=14, a=[4, 5, 10, 12, 12, 13], S=[0, 6]. -/
def code_10399 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10399_ok : code_10399.OK := by native_decide
/-- Code #10399 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10399_qec :
    ∃ ψ, SS.IsAmplitudes code_10399 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10399 code_10399_ok (by decide) (by decide)

/-- Catalogue code #10400: ((6,2,2)), m=14, a=[4, 5, 11, 12, 13, 13], S=[0, 8]. -/
def code_10400 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10400_ok : code_10400.OK := by native_decide
/-- Code #10400 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10400_qec :
    ∃ ψ, SS.IsAmplitudes code_10400 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10400 code_10400_ok (by decide) (by decide)

/-- Catalogue code #10401: ((6,2,2)), m=14, a=[4, 6, 6, 7, 8, 9], S=[0, 2]. -/
def code_10401 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10401_ok : code_10401.OK := by native_decide
/-- Code #10401 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10401_qec :
    ∃ ψ, SS.IsAmplitudes code_10401 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10401 code_10401_ok (by decide) (by decide)

/-- Catalogue code #10402: ((6,2,2)), m=14, a=[4, 6, 6, 7, 8, 11], S=[0, 2]. -/
def code_10402 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10402_ok : code_10402.OK := by native_decide
/-- Code #10402 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10402_qec :
    ∃ ψ, SS.IsAmplitudes code_10402 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10402 code_10402_ok (by decide) (by decide)

/-- Catalogue code #10403: ((6,2,2)), m=14, a=[4, 6, 6, 7, 9, 9], S=[0, 2]. -/
def code_10403 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10403_ok : code_10403.OK := by native_decide
/-- Code #10403 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10403_qec :
    ∃ ψ, SS.IsAmplitudes code_10403 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10403 code_10403_ok (by decide) (by decide)

/-- Catalogue code #10404: ((6,2,2)), m=14, a=[4, 6, 6, 7, 9, 11], S=[0, 2]. -/
def code_10404 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10404_ok : code_10404.OK := by native_decide
/-- Code #10404 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10404_qec :
    ∃ ψ, SS.IsAmplitudes code_10404 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10404 code_10404_ok (by decide) (by decide)

/-- Catalogue code #10405: ((6,2,2)), m=14, a=[4, 6, 6, 7, 9, 11], S=[0, 13]. -/
def code_10405 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10405_ok : code_10405.OK := by native_decide
/-- Code #10405 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10405_qec :
    ∃ ψ, SS.IsAmplitudes code_10405 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10405 code_10405_ok (by decide) (by decide)

/-- Catalogue code #10406: ((6,2,2)), m=14, a=[4, 6, 6, 7, 9, 12], S=[0, 13]. -/
def code_10406 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 7)]
theorem code_10406_ok : code_10406.OK := by native_decide
/-- Code #10406 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10406_qec :
    ∃ ψ, SS.IsAmplitudes code_10406 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10406 code_10406_ok (by decide) (by decide)

/-- Catalogue code #10407: ((6,2,2)), m=14, a=[4, 6, 6, 7, 11, 12], S=[0, 5]. -/
def code_10407 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-4 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7)]
theorem code_10407_ok : code_10407.OK := by native_decide
/-- Code #10407 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10407_qec :
    ∃ ψ, SS.IsAmplitudes code_10407 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10407 code_10407_ok (by decide) (by decide)

/-- Catalogue code #10408: ((6,2,2)), m=14, a=[4, 6, 6, 7, 11, 12], S=[0, 9]. -/
def code_10408 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7)]
theorem code_10408_ok : code_10408.OK := by native_decide
/-- Code #10408 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10408_qec :
    ∃ ψ, SS.IsAmplitudes code_10408 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10408 code_10408_ok (by decide) (by decide)

/-- Catalogue code #10409: ((6,2,2)), m=14, a=[4, 6, 6, 7, 11, 12], S=[0, 13]. -/
def code_10409 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7)]
theorem code_10409_ok : code_10409.OK := by native_decide
/-- Code #10409 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10409_qec :
    ∃ ψ, SS.IsAmplitudes code_10409 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10409 code_10409_ok (by decide) (by decide)

/-- Catalogue code #10410: ((6,2,2)), m=14, a=[4, 6, 6, 9, 11, 12], S=[0, 13]. -/
def code_10410 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7)]
theorem code_10410_ok : code_10410.OK := by native_decide
/-- Code #10410 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10410_qec :
    ∃ ψ, SS.IsAmplitudes code_10410 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10410 code_10410_ok (by decide) (by decide)

/-- Catalogue code #10411: ((6,2,2)), m=14, a=[4, 6, 6, 9, 13, 13], S=[0, 11]. -/
def code_10411 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7)]
theorem code_10411_ok : code_10411.OK := by native_decide
/-- Code #10411 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10411_qec :
    ∃ ψ, SS.IsAmplitudes code_10411 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10411 code_10411_ok (by decide) (by decide)

/-- Catalogue code #10412: ((6,2,2)), m=14, a=[4, 6, 6, 9, 13, 13], S=[0, 12]. -/
def code_10412 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10412_ok : code_10412.OK := by native_decide
/-- Code #10412 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10412_qec :
    ∃ ψ, SS.IsAmplitudes code_10412 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10412 code_10412_ok (by decide) (by decide)

/-- Catalogue code #10413: ((6,2,2)), m=14, a=[4, 6, 6, 10, 13, 13], S=[0, 2]. -/
def code_10413 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10413_ok : code_10413.OK := by native_decide
/-- Code #10413 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10413_qec :
    ∃ ψ, SS.IsAmplitudes code_10413 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10413 code_10413_ok (by decide) (by decide)

/-- Catalogue code #10414: ((6,2,2)), m=14, a=[4, 6, 6, 10, 13, 13], S=[0, 12]. -/
def code_10414 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10414_ok : code_10414.OK := by native_decide
/-- Code #10414 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10414_qec :
    ∃ ψ, SS.IsAmplitudes code_10414 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10414 code_10414_ok (by decide) (by decide)

/-- Catalogue code #10415: ((6,2,2)), m=14, a=[4, 6, 6, 11, 12, 13], S=[0, 9]. -/
def code_10415 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ)]
theorem code_10415_ok : code_10415.OK := by native_decide
/-- Code #10415 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10415_qec :
    ∃ ψ, SS.IsAmplitudes code_10415 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10415 code_10415_ok (by decide) (by decide)

/-- Catalogue code #10416: ((6,2,2)), m=14, a=[4, 6, 6, 11, 13, 13], S=[0, 9]. -/
def code_10416 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10416_ok : code_10416.OK := by native_decide
/-- Code #10416 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10416_qec :
    ∃ ψ, SS.IsAmplitudes code_10416 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10416 code_10416_ok (by decide) (by decide)

/-- Catalogue code #10417: ((6,2,2)), m=14, a=[4, 6, 6, 12, 13, 13], S=[0, 3]. -/
def code_10417 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]
theorem code_10417_ok : code_10417.OK := by native_decide
/-- Code #10417 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10417_qec :
    ∃ ψ, SS.IsAmplitudes code_10417 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10417 code_10417_ok (by decide) (by decide)

/-- Catalogue code #10418: ((6,2,2)), m=14, a=[4, 6, 6, 12, 13, 13], S=[0, 9]. -/
def code_10418 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]
theorem code_10418_ok : code_10418.OK := by native_decide
/-- Code #10418 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10418_qec :
    ∃ ψ, SS.IsAmplitudes code_10418 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10418 code_10418_ok (by decide) (by decide)

/-- Catalogue code #10419: ((6,2,2)), m=14, a=[4, 6, 7, 8, 9, 10], S=[0, 12]. -/
def code_10419 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10419_ok : code_10419.OK := by native_decide
/-- Code #10419 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10419_qec :
    ∃ ψ, SS.IsAmplitudes code_10419 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10419 code_10419_ok (by decide) (by decide)

/-- Catalogue code #10420: ((6,2,2)), m=14, a=[4, 6, 7, 8, 9, 11], S=[0, 1]. -/
def code_10420 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10420_ok : code_10420.OK := by native_decide
/-- Code #10420 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10420_qec :
    ∃ ψ, SS.IsAmplitudes code_10420 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10420 code_10420_ok (by decide) (by decide)

/-- Catalogue code #10421: ((6,2,2)), m=14, a=[4, 6, 7, 8, 9, 11], S=[0, 2]. -/
def code_10421 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10421_ok : code_10421.OK := by native_decide
/-- Code #10421 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10421_qec :
    ∃ ψ, SS.IsAmplitudes code_10421 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10421 code_10421_ok (by decide) (by decide)

/-- Catalogue code #10422: ((6,2,2)), m=14, a=[4, 6, 7, 8, 9, 11], S=[0, 12]. -/
def code_10422 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10422_ok : code_10422.OK := by native_decide
/-- Code #10422 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10422_qec :
    ∃ ψ, SS.IsAmplitudes code_10422 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10422 code_10422_ok (by decide) (by decide)

/-- Catalogue code #10423: ((6,2,2)), m=14, a=[4, 6, 7, 8, 9, 12], S=[0, 1]. -/
def code_10423 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7)]
theorem code_10423_ok : code_10423.OK := by native_decide
/-- Code #10423 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10423_qec :
    ∃ ψ, SS.IsAmplitudes code_10423 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10423 code_10423_ok (by decide) (by decide)

/-- Catalogue code #10424: ((6,2,2)), m=14, a=[4, 6, 7, 8, 9, 13], S=[0, 2]. -/
def code_10424 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10424_ok : code_10424.OK := by native_decide
/-- Code #10424 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10424_qec :
    ∃ ψ, SS.IsAmplitudes code_10424 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10424 code_10424_ok (by decide) (by decide)

/-- Catalogue code #10425: ((6,2,2)), m=14, a=[4, 6, 7, 8, 10, 11], S=[0, 2]. -/
def code_10425 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10425_ok : code_10425.OK := by native_decide
/-- Code #10425 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10425_qec :
    ∃ ψ, SS.IsAmplitudes code_10425 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10425 code_10425_ok (by decide) (by decide)

/-- Catalogue code #10426: ((6,2,2)), m=14, a=[4, 6, 7, 8, 11, 12], S=[0, 1]. -/
def code_10426 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7)]
theorem code_10426_ok : code_10426.OK := by native_decide
/-- Code #10426 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10426_qec :
    ∃ ψ, SS.IsAmplitudes code_10426 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10426 code_10426_ok (by decide) (by decide)

/-- Catalogue code #10427: ((6,2,2)), m=14, a=[4, 6, 7, 8, 11, 12], S=[0, 5]. -/
def code_10427 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((4 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7)]
theorem code_10427_ok : code_10427.OK := by native_decide
/-- Code #10427 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10427_qec :
    ∃ ψ, SS.IsAmplitudes code_10427 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10427 code_10427_ok (by decide) (by decide)

/-- Catalogue code #10428: ((6,2,2)), m=14, a=[4, 6, 7, 8, 11, 13], S=[0, 2]. -/
def code_10428 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10428_ok : code_10428.OK := by native_decide
/-- Code #10428 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10428_qec :
    ∃ ψ, SS.IsAmplitudes code_10428 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10428 code_10428_ok (by decide) (by decide)

/-- Catalogue code #10429: ((6,2,2)), m=14, a=[4, 6, 7, 8, 11, 13], S=[0, 5]. -/
def code_10429 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10429_ok : code_10429.OK := by native_decide
/-- Code #10429 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10429_qec :
    ∃ ψ, SS.IsAmplitudes code_10429 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10429 code_10429_ok (by decide) (by decide)

/-- Catalogue code #10430: ((6,2,2)), m=14, a=[4, 6, 7, 8, 12, 13], S=[0, 5]. -/
def code_10430 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ)]
theorem code_10430_ok : code_10430.OK := by native_decide
/-- Code #10430 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10430_qec :
    ∃ ψ, SS.IsAmplitudes code_10430 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10430 code_10430_ok (by decide) (by decide)

/-- Catalogue code #10431: ((6,2,2)), m=14, a=[4, 6, 7, 9, 9, 11], S=[0, 1]. -/
def code_10431 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_10431_ok : code_10431.OK := by native_decide
/-- Code #10431 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10431_qec :
    ∃ ψ, SS.IsAmplitudes code_10431 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10431 code_10431_ok (by decide) (by decide)

/-- Catalogue code #10432: ((6,2,2)), m=14, a=[4, 6, 7, 9, 9, 11], S=[0, 12]. -/
def code_10432 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10432_ok : code_10432.OK := by native_decide
/-- Code #10432 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10432_qec :
    ∃ ψ, SS.IsAmplitudes code_10432 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10432 code_10432_ok (by decide) (by decide)

/-- Catalogue code #10433: ((6,2,2)), m=14, a=[4, 6, 7, 9, 9, 13], S=[0, 3]. -/
def code_10433 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10433_ok : code_10433.OK := by native_decide
/-- Code #10433 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10433_qec :
    ∃ ψ, SS.IsAmplitudes code_10433 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10433 code_10433_ok (by decide) (by decide)

/-- Catalogue code #10434: ((6,2,2)), m=14, a=[4, 6, 7, 9, 11, 11], S=[0, 1]. -/
def code_10434 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7)]
theorem code_10434_ok : code_10434.OK := by native_decide
/-- Code #10434 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10434_qec :
    ∃ ψ, SS.IsAmplitudes code_10434 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10434 code_10434_ok (by decide) (by decide)

/-- Catalogue code #10435: ((6,2,2)), m=14, a=[4, 6, 7, 9, 11, 12], S=[0, 1]. -/
def code_10435 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10435_ok : code_10435.OK := by native_decide
/-- Code #10435 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10435_qec :
    ∃ ψ, SS.IsAmplitudes code_10435 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10435 code_10435_ok (by decide) (by decide)

/-- Catalogue code #10436: ((6,2,2)), m=14, a=[4, 6, 7, 9, 11, 12], S=[0, 13]. -/
def code_10436 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10436_ok : code_10436.OK := by native_decide
/-- Code #10436 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10436_qec :
    ∃ ψ, SS.IsAmplitudes code_10436 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10436 code_10436_ok (by decide) (by decide)

/-- Catalogue code #10437: ((6,2,2)), m=14, a=[4, 6, 7, 9, 11, 13], S=[0, 2]. -/
def code_10437 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10437_ok : code_10437.OK := by native_decide
/-- Code #10437 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10437_qec :
    ∃ ψ, SS.IsAmplitudes code_10437 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10437 code_10437_ok (by decide) (by decide)

/-- Catalogue code #10438: ((6,2,2)), m=14, a=[4, 6, 7, 9, 12, 13], S=[0, 11]. -/
def code_10438 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10438_ok : code_10438.OK := by native_decide
/-- Code #10438 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10438_qec :
    ∃ ψ, SS.IsAmplitudes code_10438 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10438 code_10438_ok (by decide) (by decide)

/-- Catalogue code #10439: ((6,2,2)), m=14, a=[4, 6, 7, 10, 11, 12], S=[0, 13]. -/
def code_10439 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7)]
theorem code_10439_ok : code_10439.OK := by native_decide
/-- Code #10439 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10439_qec :
    ∃ ψ, SS.IsAmplitudes code_10439 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10439 code_10439_ok (by decide) (by decide)

/-- Catalogue code #10440: ((6,2,2)), m=14, a=[4, 6, 7, 11, 12, 12], S=[0, 9]. -/
def code_10440 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((5 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10440_ok : code_10440.OK := by native_decide
/-- Code #10440 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10440_qec :
    ∃ ψ, SS.IsAmplitudes code_10440 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10440 code_10440_ok (by decide) (by decide)

/-- Catalogue code #10441: ((6,2,2)), m=14, a=[4, 6, 7, 11, 12, 13], S=[0, 5]. -/
def code_10441 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10441_ok : code_10441.OK := by native_decide
/-- Code #10441 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10441_qec :
    ∃ ψ, SS.IsAmplitudes code_10441 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10441 code_10441_ok (by decide) (by decide)

/-- Catalogue code #10442: ((6,2,2)), m=14, a=[4, 6, 7, 11, 12, 13], S=[0, 9]. -/
def code_10442 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10442_ok : code_10442.OK := by native_decide
/-- Code #10442 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10442_qec :
    ∃ ψ, SS.IsAmplitudes code_10442 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10442 code_10442_ok (by decide) (by decide)

/-- Catalogue code #10443: ((6,2,2)), m=14, a=[4, 6, 7, 12, 12, 13], S=[0, 3]. -/
def code_10443 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ)]
theorem code_10443_ok : code_10443.OK := by native_decide
/-- Code #10443 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10443_qec :
    ∃ ψ, SS.IsAmplitudes code_10443 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10443 code_10443_ok (by decide) (by decide)

/-- Catalogue code #10444: ((6,2,2)), m=14, a=[4, 6, 7, 12, 12, 13], S=[0, 9]. -/
def code_10444 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ)]
theorem code_10444_ok : code_10444.OK := by native_decide
/-- Code #10444 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10444_qec :
    ∃ ψ, SS.IsAmplitudes code_10444 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10444 code_10444_ok (by decide) (by decide)

/-- Catalogue code #10445: ((6,2,2)), m=14, a=[4, 6, 8, 9, 9, 10], S=[0, 2]. -/
def code_10445 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10445_ok : code_10445.OK := by native_decide
/-- Code #10445 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10445_qec :
    ∃ ψ, SS.IsAmplitudes code_10445 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10445 code_10445_ok (by decide) (by decide)

/-- Catalogue code #10446: ((6,2,2)), m=14, a=[4, 6, 8, 9, 11, 12], S=[0, 1]. -/
def code_10446 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 7)]
theorem code_10446_ok : code_10446.OK := by native_decide
/-- Code #10446 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10446_qec :
    ∃ ψ, SS.IsAmplitudes code_10446 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10446 code_10446_ok (by decide) (by decide)

/-- Catalogue code #10447: ((6,2,2)), m=14, a=[4, 6, 8, 10, 11, 13], S=[0, 12]. -/
def code_10447 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10447_ok : code_10447.OK := by native_decide
/-- Code #10447 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10447_qec :
    ∃ ψ, SS.IsAmplitudes code_10447 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10447 code_10447_ok (by decide) (by decide)

/-- Catalogue code #10448: ((6,2,2)), m=14, a=[4, 6, 8, 10, 13, 13], S=[0, 2]. -/
def code_10448 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10448_ok : code_10448.OK := by native_decide
/-- Code #10448 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10448_qec :
    ∃ ψ, SS.IsAmplitudes code_10448 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10448 code_10448_ok (by decide) (by decide)

/-- Catalogue code #10449: ((6,2,2)), m=14, a=[4, 6, 8, 11, 12, 13], S=[0, 5]. -/
def code_10449 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ)]
theorem code_10449_ok : code_10449.OK := by native_decide
/-- Code #10449 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10449_qec :
    ∃ ψ, SS.IsAmplitudes code_10449 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10449 code_10449_ok (by decide) (by decide)

/-- Catalogue code #10450: ((6,2,2)), m=14, a=[4, 6, 9, 9, 10, 12], S=[0, 11]. -/
def code_10450 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10450_ok : code_10450.OK := by native_decide
/-- Code #10450 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10450_qec :
    ∃ ψ, SS.IsAmplitudes code_10450 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10450 code_10450_ok (by decide) (by decide)

/-- Catalogue code #10451: ((6,2,2)), m=14, a=[4, 6, 9, 9, 11, 11], S=[0, 1]. -/
def code_10451 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_10451_ok : code_10451.OK := by native_decide
/-- Code #10451 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10451_qec :
    ∃ ψ, SS.IsAmplitudes code_10451 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10451 code_10451_ok (by decide) (by decide)

/-- Catalogue code #10452: ((6,2,2)), m=14, a=[4, 6, 9, 9, 11, 13], S=[0, 12]. -/
def code_10452 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10452_ok : code_10452.OK := by native_decide
/-- Code #10452 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10452_qec :
    ∃ ψ, SS.IsAmplitudes code_10452 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10452 code_10452_ok (by decide) (by decide)

/-- Catalogue code #10453: ((6,2,2)), m=14, a=[4, 6, 9, 9, 12, 12], S=[0, 11]. -/
def code_10453 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10453_ok : code_10453.OK := by native_decide
/-- Code #10453 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10453_qec :
    ∃ ψ, SS.IsAmplitudes code_10453 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10453 code_10453_ok (by decide) (by decide)

/-- Catalogue code #10454: ((6,2,2)), m=14, a=[4, 6, 9, 10, 10, 13], S=[0, 12]. -/
def code_10454 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10454_ok : code_10454.OK := by native_decide
/-- Code #10454 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10454_qec :
    ∃ ψ, SS.IsAmplitudes code_10454 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10454 code_10454_ok (by decide) (by decide)

/-- Catalogue code #10455: ((6,2,2)), m=14, a=[4, 6, 9, 10, 11, 12], S=[0, 13]. -/
def code_10455 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]
theorem code_10455_ok : code_10455.OK := by native_decide
/-- Code #10455 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10455_qec :
    ∃ ψ, SS.IsAmplitudes code_10455 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10455 code_10455_ok (by decide) (by decide)

/-- Catalogue code #10456: ((6,2,2)), m=14, a=[4, 6, 9, 11, 11, 12], S=[0, 1]. -/
def code_10456 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10456_ok : code_10456.OK := by native_decide
/-- Code #10456 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10456_qec :
    ∃ ψ, SS.IsAmplitudes code_10456 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10456 code_10456_ok (by decide) (by decide)

/-- Catalogue code #10457: ((6,2,2)), m=14, a=[4, 6, 11, 11, 12, 13], S=[0, 5]. -/
def code_10457 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7)]
theorem code_10457_ok : code_10457.OK := by native_decide
/-- Code #10457 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10457_qec :
    ∃ ψ, SS.IsAmplitudes code_10457 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10457 code_10457_ok (by decide) (by decide)

/-- Catalogue code #10458: ((6,2,2)), m=14, a=[4, 6, 11, 12, 13, 13], S=[0, 9]. -/
def code_10458 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10458_ok : code_10458.OK := by native_decide
/-- Code #10458 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10458_qec :
    ∃ ψ, SS.IsAmplitudes code_10458 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10458 code_10458_ok (by decide) (by decide)

/-- Catalogue code #10459: ((6,2,2)), m=14, a=[4, 7, 8, 8, 11, 12], S=[0, 9]. -/
def code_10459 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7)]
theorem code_10459_ok : code_10459.OK := by native_decide
/-- Code #10459 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10459_qec :
    ∃ ψ, SS.IsAmplitudes code_10459 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10459 code_10459_ok (by decide) (by decide)

/-- Catalogue code #10460: ((6,2,2)), m=14, a=[4, 7, 8, 8, 11, 12], S=[0, 13]. -/
def code_10460 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7)]
theorem code_10460_ok : code_10460.OK := by native_decide
/-- Code #10460 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10460_qec :
    ∃ ψ, SS.IsAmplitudes code_10460 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10460 code_10460_ok (by decide) (by decide)

/-- Catalogue code #10461: ((6,2,2)), m=14, a=[4, 7, 8, 9, 9, 11], S=[0, 12]. -/
def code_10461 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10461_ok : code_10461.OK := by native_decide
/-- Code #10461 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10461_qec :
    ∃ ψ, SS.IsAmplitudes code_10461 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10461 code_10461_ok (by decide) (by decide)

/-- Catalogue code #10462: ((6,2,2)), m=14, a=[4, 7, 8, 9, 9, 13], S=[0, 11]. -/
def code_10462 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10462_ok : code_10462.OK := by native_decide
/-- Code #10462 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10462_qec :
    ∃ ψ, SS.IsAmplitudes code_10462 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10462 code_10462_ok (by decide) (by decide)

/-- Catalogue code #10463: ((6,2,2)), m=14, a=[4, 7, 8, 9, 10, 13], S=[0, 11]. -/
def code_10463 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]
theorem code_10463_ok : code_10463.OK := by native_decide
/-- Code #10463 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10463_qec :
    ∃ ψ, SS.IsAmplitudes code_10463 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10463 code_10463_ok (by decide) (by decide)

/-- Catalogue code #10464: ((6,2,2)), m=14, a=[4, 7, 8, 9, 11, 11], S=[0, 13]. -/
def code_10464 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]
theorem code_10464_ok : code_10464.OK := by native_decide
/-- Code #10464 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10464_qec :
    ∃ ψ, SS.IsAmplitudes code_10464 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10464 code_10464_ok (by decide) (by decide)

/-- Catalogue code #10465: ((6,2,2)), m=14, a=[4, 7, 8, 9, 11, 12], S=[0, 1]. -/
def code_10465 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10465_ok : code_10465.OK := by native_decide
/-- Code #10465 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10465_qec :
    ∃ ψ, SS.IsAmplitudes code_10465 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10465 code_10465_ok (by decide) (by decide)

/-- Catalogue code #10466: ((6,2,2)), m=14, a=[4, 7, 8, 9, 11, 12], S=[0, 13]. -/
def code_10466 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10466_ok : code_10466.OK := by native_decide
/-- Code #10466 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10466_qec :
    ∃ ψ, SS.IsAmplitudes code_10466 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10466 code_10466_ok (by decide) (by decide)

/-- Catalogue code #10467: ((6,2,2)), m=14, a=[4, 7, 8, 9, 11, 13], S=[0, 2]. -/
def code_10467 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10467_ok : code_10467.OK := by native_decide
/-- Code #10467 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10467_qec :
    ∃ ψ, SS.IsAmplitudes code_10467 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10467 code_10467_ok (by decide) (by decide)

/-- Catalogue code #10468: ((6,2,2)), m=14, a=[4, 7, 8, 9, 12, 12], S=[0, 11]. -/
def code_10468 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_10468_ok : code_10468.OK := by native_decide
/-- Code #10468 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10468_qec :
    ∃ ψ, SS.IsAmplitudes code_10468 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10468 code_10468_ok (by decide) (by decide)

/-- Catalogue code #10469: ((6,2,2)), m=14, a=[4, 7, 8, 10, 10, 13], S=[0, 12]. -/
def code_10469 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10469_ok : code_10469.OK := by native_decide
/-- Code #10469 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10469_qec :
    ∃ ψ, SS.IsAmplitudes code_10469 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10469 code_10469_ok (by decide) (by decide)

/-- Catalogue code #10470: ((6,2,2)), m=14, a=[4, 7, 8, 10, 11, 12], S=[0, 1]. -/
def code_10470 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7)]
theorem code_10470_ok : code_10470.OK := by native_decide
/-- Code #10470 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10470_qec :
    ∃ ψ, SS.IsAmplitudes code_10470 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10470 code_10470_ok (by decide) (by decide)

/-- Catalogue code #10471: ((6,2,2)), m=14, a=[4, 7, 8, 10, 12, 13], S=[0, 3]. -/
def code_10471 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), (0 : ℚ)]
theorem code_10471_ok : code_10471.OK := by native_decide
/-- Code #10471 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10471_qec :
    ∃ ψ, SS.IsAmplitudes code_10471 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10471 code_10471_ok (by decide) (by decide)

/-- Catalogue code #10472: ((6,2,2)), m=14, a=[4, 7, 8, 11, 12, 13], S=[0, 5]. -/
def code_10472 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_10472_ok : code_10472.OK := by native_decide
/-- Code #10472 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10472_qec :
    ∃ ψ, SS.IsAmplitudes code_10472 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10472 code_10472_ok (by decide) (by decide)

/-- Catalogue code #10473: ((6,2,2)), m=14, a=[4, 7, 8, 12, 12, 13], S=[0, 3]. -/
def code_10473 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]
theorem code_10473_ok : code_10473.OK := by native_decide
/-- Code #10473 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10473_qec :
    ∃ ψ, SS.IsAmplitudes code_10473 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10473 code_10473_ok (by decide) (by decide)

/-- Catalogue code #10474: ((6,2,2)), m=14, a=[4, 7, 9, 9, 11, 11], S=[0, 1]. -/
def code_10474 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10474_ok : code_10474.OK := by native_decide
/-- Code #10474 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10474_qec :
    ∃ ψ, SS.IsAmplitudes code_10474 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10474 code_10474_ok (by decide) (by decide)

/-- Catalogue code #10475: ((6,2,2)), m=14, a=[4, 7, 9, 9, 11, 11], S=[0, 8]. -/
def code_10475 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10475_ok : code_10475.OK := by native_decide
/-- Code #10475 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10475_qec :
    ∃ ψ, SS.IsAmplitudes code_10475 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10475 code_10475_ok (by decide) (by decide)

/-- Catalogue code #10476: ((6,2,2)), m=14, a=[4, 7, 9, 9, 11, 13], S=[0, 8]. -/
def code_10476 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10476_ok : code_10476.OK := by native_decide
/-- Code #10476 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10476_qec :
    ∃ ψ, SS.IsAmplitudes code_10476 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10476 code_10476_ok (by decide) (by decide)

/-- Catalogue code #10477: ((6,2,2)), m=14, a=[4, 7, 9, 9, 11, 13], S=[0, 12]. -/
def code_10477 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7)]
theorem code_10477_ok : code_10477.OK := by native_decide
/-- Code #10477 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10477_qec :
    ∃ ψ, SS.IsAmplitudes code_10477 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10477 code_10477_ok (by decide) (by decide)

/-- Catalogue code #10478: ((6,2,2)), m=14, a=[4, 7, 9, 9, 12, 13], S=[0, 11]. -/
def code_10478 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10478_ok : code_10478.OK := by native_decide
/-- Code #10478 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10478_qec :
    ∃ ψ, SS.IsAmplitudes code_10478 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10478 code_10478_ok (by decide) (by decide)

/-- Catalogue code #10479: ((6,2,2)), m=14, a=[4, 7, 9, 9, 13, 13], S=[0, 2]. -/
def code_10479 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10479_ok : code_10479.OK := by native_decide
/-- Code #10479 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10479_qec :
    ∃ ψ, SS.IsAmplitudes code_10479 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10479 code_10479_ok (by decide) (by decide)

/-- Catalogue code #10480: ((6,2,2)), m=14, a=[4, 7, 9, 9, 13, 13], S=[0, 11]. -/
def code_10480 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10480_ok : code_10480.OK := by native_decide
/-- Code #10480 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10480_qec :
    ∃ ψ, SS.IsAmplitudes code_10480 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10480 code_10480_ok (by decide) (by decide)

/-- Catalogue code #10481: ((6,2,2)), m=14, a=[4, 7, 9, 10, 12, 12], S=[0, 6]. -/
def code_10481 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10481_ok : code_10481.OK := by native_decide
/-- Code #10481 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10481_qec :
    ∃ ψ, SS.IsAmplitudes code_10481 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10481 code_10481_ok (by decide) (by decide)

/-- Catalogue code #10482: ((6,2,2)), m=14, a=[4, 7, 9, 11, 11, 13], S=[0, 8]. -/
def code_10482 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_10482_ok : code_10482.OK := by native_decide
/-- Code #10482 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10482_qec :
    ∃ ψ, SS.IsAmplitudes code_10482 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10482 code_10482_ok (by decide) (by decide)

/-- Catalogue code #10483: ((6,2,2)), m=14, a=[4, 7, 9, 11, 12, 13], S=[0, 6]. -/
def code_10483 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10483_ok : code_10483.OK := by native_decide
/-- Code #10483 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10483_qec :
    ∃ ψ, SS.IsAmplitudes code_10483 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10483 code_10483_ok (by decide) (by decide)

/-- Catalogue code #10484: ((6,2,2)), m=14, a=[4, 7, 10, 11, 12, 12], S=[0, 6]. -/
def code_10484 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10484_ok : code_10484.OK := by native_decide
/-- Code #10484 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10484_qec :
    ∃ ψ, SS.IsAmplitudes code_10484 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10484 code_10484_ok (by decide) (by decide)

/-- Catalogue code #10485: ((6,2,2)), m=14, a=[4, 7, 10, 11, 12, 13], S=[0, 6]. -/
def code_10485 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10485_ok : code_10485.OK := by native_decide
/-- Code #10485 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10485_qec :
    ∃ ψ, SS.IsAmplitudes code_10485 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10485 code_10485_ok (by decide) (by decide)

/-- Catalogue code #10486: ((6,2,2)), m=14, a=[4, 7, 10, 12, 12, 13], S=[0, 6]. -/
def code_10486 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10486_ok : code_10486.OK := by native_decide
/-- Code #10486 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10486_qec :
    ∃ ψ, SS.IsAmplitudes code_10486 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10486 code_10486_ok (by decide) (by decide)

/-- Catalogue code #10487: ((6,2,2)), m=14, a=[4, 7, 10, 12, 12, 13], S=[0, 8]. -/
def code_10487 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10487_ok : code_10487.OK := by native_decide
/-- Code #10487 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10487_qec :
    ∃ ψ, SS.IsAmplitudes code_10487 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10487 code_10487_ok (by decide) (by decide)

/-- Catalogue code #10488: ((6,2,2)), m=14, a=[4, 7, 11, 12, 12, 12], S=[0, 8]. -/
def code_10488 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10488_ok : code_10488.OK := by native_decide
/-- Code #10488 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10488_qec :
    ∃ ψ, SS.IsAmplitudes code_10488 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10488 code_10488_ok (by decide) (by decide)

/-- Catalogue code #10489: ((6,2,2)), m=14, a=[4, 7, 11, 12, 12, 13], S=[0, 9]. -/
def code_10489 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_10489_ok : code_10489.OK := by native_decide
/-- Code #10489 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10489_qec :
    ∃ ψ, SS.IsAmplitudes code_10489 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10489 code_10489_ok (by decide) (by decide)

/-- Catalogue code #10490: ((6,2,2)), m=14, a=[4, 7, 11, 12, 13, 13], S=[0, 9]. -/
def code_10490 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10490_ok : code_10490.OK := by native_decide
/-- Code #10490 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10490_qec :
    ∃ ψ, SS.IsAmplitudes code_10490 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10490 code_10490_ok (by decide) (by decide)

/-- Catalogue code #10491: ((6,2,2)), m=14, a=[4, 8, 8, 9, 11, 13], S=[0, 12]. -/
def code_10491 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_10491_ok : code_10491.OK := by native_decide
/-- Code #10491 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10491_qec :
    ∃ ψ, SS.IsAmplitudes code_10491 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10491 code_10491_ok (by decide) (by decide)

/-- Catalogue code #10492: ((6,2,2)), m=14, a=[4, 8, 8, 9, 12, 13], S=[0, 11]. -/
def code_10492 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((5 : ℚ) / 7), (0 : ℚ)]
theorem code_10492_ok : code_10492.OK := by native_decide
/-- Code #10492 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10492_qec :
    ∃ ψ, SS.IsAmplitudes code_10492 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10492 code_10492_ok (by decide) (by decide)

/-- Catalogue code #10493: ((6,2,2)), m=14, a=[4, 8, 8, 9, 13, 13], S=[0, 11]. -/
def code_10493 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_10493_ok : code_10493.OK := by native_decide
/-- Code #10493 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10493_qec :
    ∃ ψ, SS.IsAmplitudes code_10493 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10493 code_10493_ok (by decide) (by decide)

/-- Catalogue code #10494: ((6,2,2)), m=14, a=[4, 8, 8, 10, 11, 11], S=[0, 12]. -/
def code_10494 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10494_ok : code_10494.OK := by native_decide
/-- Code #10494 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10494_qec :
    ∃ ψ, SS.IsAmplitudes code_10494 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10494 code_10494_ok (by decide) (by decide)

/-- Catalogue code #10495: ((6,2,2)), m=14, a=[4, 8, 8, 10, 13, 13], S=[0, 2]. -/
def code_10495 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_10495_ok : code_10495.OK := by native_decide
/-- Code #10495 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10495_qec :
    ∃ ψ, SS.IsAmplitudes code_10495 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10495 code_10495_ok (by decide) (by decide)

/-- Catalogue code #10496: ((6,2,2)), m=14, a=[4, 8, 8, 11, 11, 12], S=[0, 13]. -/
def code_10496 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 7)]
theorem code_10496_ok : code_10496.OK := by native_decide
/-- Code #10496 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10496_qec :
    ∃ ψ, SS.IsAmplitudes code_10496 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10496 code_10496_ok (by decide) (by decide)

/-- Catalogue code #10497: ((6,2,2)), m=14, a=[4, 8, 8, 12, 13, 13], S=[0, 5]. -/
def code_10497 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]
theorem code_10497_ok : code_10497.OK := by native_decide
/-- Code #10497 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10497_qec :
    ∃ ψ, SS.IsAmplitudes code_10497 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10497 code_10497_ok (by decide) (by decide)

/-- Catalogue code #10498: ((6,2,2)), m=14, a=[4, 8, 8, 12, 13, 13], S=[0, 11]. -/
def code_10498 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]
theorem code_10498_ok : code_10498.OK := by native_decide
/-- Code #10498 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10498_qec :
    ∃ ψ, SS.IsAmplitudes code_10498 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10498 code_10498_ok (by decide) (by decide)

/-- Catalogue code #10499: ((6,2,2)), m=14, a=[4, 8, 9, 9, 12, 12], S=[0, 13]. -/
def code_10499 : ExampleData 6 14 2 where
  a := ![(4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10499_ok : code_10499.OK := by native_decide
/-- Code #10499 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10499_qec :
    ∃ ψ, SS.IsAmplitudes code_10499 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10499 code_10499_ok (by decide) (by decide)

end Catalogue.Chunk020
