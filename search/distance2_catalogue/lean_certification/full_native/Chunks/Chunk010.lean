import SS

namespace Catalogue.Chunk010

open SS SS.Verify

/-- Catalogue code #5000: ((6,2,2)), m=12, a=[3, 4, 5, 5, 11, 11], S=[0, 10]. -/
def code_5000 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5000_ok : code_5000.OK := by native_decide
/-- Code #5000 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5000_qec :
    ∃ ψ, SS.IsAmplitudes code_5000 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5000 code_5000_ok (by decide) (by decide)

/-- Catalogue code #5001: ((6,2,2)), m=12, a=[3, 4, 5, 6, 7, 8], S=[0, 11]. -/
def code_5001 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_5001_ok : code_5001.OK := by native_decide
/-- Code #5001 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5001_qec :
    ∃ ψ, SS.IsAmplitudes code_5001 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5001 code_5001_ok (by decide) (by decide)

/-- Catalogue code #5002: ((6,2,2)), m=12, a=[3, 4, 5, 6, 7, 9], S=[0, 2]. -/
def code_5002 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_5002_ok : code_5002.OK := by native_decide
/-- Code #5002 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5002_qec :
    ∃ ψ, SS.IsAmplitudes code_5002 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5002 code_5002_ok (by decide) (by decide)

/-- Catalogue code #5003: ((6,2,2)), m=12, a=[3, 4, 5, 6, 7, 10], S=[0, 1]. -/
def code_5003 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 2)]
theorem code_5003_ok : code_5003.OK := by native_decide
/-- Code #5003 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5003_qec :
    ∃ ψ, SS.IsAmplitudes code_5003 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5003 code_5003_ok (by decide) (by decide)

/-- Catalogue code #5004: ((6,2,2)), m=12, a=[3, 4, 5, 6, 7, 11], S=[0, 2]. -/
def code_5004 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, true, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]
theorem code_5004_ok : code_5004.OK := by native_decide
/-- Code #5004 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5004_qec :
    ∃ ψ, SS.IsAmplitudes code_5004 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5004 code_5004_ok (by decide) (by decide)

/-- Catalogue code #5005: ((6,2,2)), m=12, a=[3, 4, 5, 6, 7, 11], S=[0, 10]. -/
def code_5005 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_5005_ok : code_5005.OK := by native_decide
/-- Code #5005 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5005_qec :
    ∃ ψ, SS.IsAmplitudes code_5005 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5005 code_5005_ok (by decide) (by decide)

/-- Catalogue code #5006: ((6,2,2)), m=12, a=[3, 4, 5, 6, 8, 10], S=[0, 1]. -/
def code_5006 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6)]
theorem code_5006_ok : code_5006.OK := by native_decide
/-- Code #5006 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5006_qec :
    ∃ ψ, SS.IsAmplitudes code_5006 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5006 code_5006_ok (by decide) (by decide)

/-- Catalogue code #5007: ((6,2,2)), m=12, a=[3, 4, 5, 6, 8, 10], S=[0, 11]. -/
def code_5007 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5007_ok : code_5007.OK := by native_decide
/-- Code #5007 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5007_qec :
    ∃ ψ, SS.IsAmplitudes code_5007 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5007 code_5007_ok (by decide) (by decide)

/-- Catalogue code #5008: ((6,2,2)), m=12, a=[3, 4, 5, 6, 8, 11], S=[0, 2]. -/
def code_5008 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-2 : ℚ) / 3)]
theorem code_5008_ok : code_5008.OK := by native_decide
/-- Code #5008 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5008_qec :
    ∃ ψ, SS.IsAmplitudes code_5008 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5008 code_5008_ok (by decide) (by decide)

/-- Catalogue code #5009: ((6,2,2)), m=12, a=[3, 4, 5, 7, 9, 10], S=[0, 1]. -/
def code_5009 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5009_ok : code_5009.OK := by native_decide
/-- Code #5009 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5009_qec :
    ∃ ψ, SS.IsAmplitudes code_5009 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5009 code_5009_ok (by decide) (by decide)

/-- Catalogue code #5010: ((6,2,2)), m=12, a=[3, 4, 5, 7, 11, 11], S=[0, 10]. -/
def code_5010 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5010_ok : code_5010.OK := by native_decide
/-- Code #5010 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5010_qec :
    ∃ ψ, SS.IsAmplitudes code_5010 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5010 code_5010_ok (by decide) (by decide)

/-- Catalogue code #5011: ((6,2,2)), m=12, a=[3, 4, 5, 8, 9, 10], S=[0, 1]. -/
def code_5011 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 2)]
theorem code_5011_ok : code_5011.OK := by native_decide
/-- Code #5011 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5011_qec :
    ∃ ψ, SS.IsAmplitudes code_5011 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5011 code_5011_ok (by decide) (by decide)

/-- Catalogue code #5012: ((6,2,2)), m=12, a=[3, 4, 5, 8, 9, 11], S=[0, 2]. -/
def code_5012 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5012_ok : code_5012.OK := by native_decide
/-- Code #5012 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5012_qec :
    ∃ ψ, SS.IsAmplitudes code_5012 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5012 code_5012_ok (by decide) (by decide)

/-- Catalogue code #5013: ((6,2,2)), m=12, a=[3, 4, 5, 9, 10, 10], S=[0, 1]. -/
def code_5013 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-2 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5013_ok : code_5013.OK := by native_decide
/-- Code #5013 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5013_qec :
    ∃ ψ, SS.IsAmplitudes code_5013 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5013 code_5013_ok (by decide) (by decide)

/-- Catalogue code #5014: ((6,2,2)), m=12, a=[3, 4, 5, 11, 11, 11], S=[0, 2]. -/
def code_5014 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((2 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_5014_ok : code_5014.OK := by native_decide
/-- Code #5014 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5014_qec :
    ∃ ψ, SS.IsAmplitudes code_5014 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5014 code_5014_ok (by decide) (by decide)

/-- Catalogue code #5015: ((6,2,2)), m=12, a=[3, 4, 6, 6, 8, 11], S=[0, 10]. -/
def code_5015 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5015_ok : code_5015.OK := by native_decide
/-- Code #5015 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5015_qec :
    ∃ ψ, SS.IsAmplitudes code_5015 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5015 code_5015_ok (by decide) (by decide)

/-- Catalogue code #5016: ((6,2,2)), m=12, a=[3, 4, 6, 7, 7, 11], S=[0, 10]. -/
def code_5016 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5016_ok : code_5016.OK := by native_decide
/-- Code #5016 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5016_qec :
    ∃ ψ, SS.IsAmplitudes code_5016 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5016 code_5016_ok (by decide) (by decide)

/-- Catalogue code #5017: ((6,2,2)), m=12, a=[3, 4, 6, 7, 8, 9], S=[0, 11]. -/
def code_5017 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 2)]
theorem code_5017_ok : code_5017.OK := by native_decide
/-- Code #5017 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5017_qec :
    ∃ ψ, SS.IsAmplitudes code_5017 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5017 code_5017_ok (by decide) (by decide)

/-- Catalogue code #5018: ((6,2,2)), m=12, a=[3, 4, 6, 7, 8, 10], S=[0, 1]. -/
def code_5018 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5018_ok : code_5018.OK := by native_decide
/-- Code #5018 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5018_qec :
    ∃ ψ, SS.IsAmplitudes code_5018 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5018 code_5018_ok (by decide) (by decide)

/-- Catalogue code #5019: ((6,2,2)), m=12, a=[3, 4, 6, 7, 8, 10], S=[0, 11]. -/
def code_5019 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 6)]
theorem code_5019_ok : code_5019.OK := by native_decide
/-- Code #5019 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5019_qec :
    ∃ ψ, SS.IsAmplitudes code_5019 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5019 code_5019_ok (by decide) (by decide)

/-- Catalogue code #5020: ((6,2,2)), m=12, a=[3, 4, 6, 7, 9, 10], S=[0, 11]. -/
def code_5020 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3)]
theorem code_5020_ok : code_5020.OK := by native_decide
/-- Code #5020 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5020_qec :
    ∃ ψ, SS.IsAmplitudes code_5020 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5020 code_5020_ok (by decide) (by decide)

/-- Catalogue code #5021: ((6,2,2)), m=12, a=[3, 4, 6, 7, 10, 10], S=[0, 11]. -/
def code_5021 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 6)]
theorem code_5021_ok : code_5021.OK := by native_decide
/-- Code #5021 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5021_qec :
    ∃ ψ, SS.IsAmplitudes code_5021 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5021 code_5021_ok (by decide) (by decide)

/-- Catalogue code #5022: ((6,2,2)), m=12, a=[3, 4, 6, 7, 11, 11], S=[0, 2]. -/
def code_5022 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]
theorem code_5022_ok : code_5022.OK := by native_decide
/-- Code #5022 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5022_qec :
    ∃ ψ, SS.IsAmplitudes code_5022 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5022 code_5022_ok (by decide) (by decide)

/-- Catalogue code #5023: ((6,2,2)), m=12, a=[3, 4, 6, 8, 8, 11], S=[0, 10]. -/
def code_5023 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5023_ok : code_5023.OK := by native_decide
/-- Code #5023 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5023_qec :
    ∃ ψ, SS.IsAmplitudes code_5023 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5023 code_5023_ok (by decide) (by decide)

/-- Catalogue code #5024: ((6,2,2)), m=12, a=[3, 4, 6, 8, 9, 10], S=[0, 5]. -/
def code_5024 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_5024_ok : code_5024.OK := by native_decide
/-- Code #5024 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5024_qec :
    ∃ ψ, SS.IsAmplitudes code_5024 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5024 code_5024_ok (by decide) (by decide)

/-- Catalogue code #5025: ((6,2,2)), m=12, a=[3, 4, 6, 8, 9, 10], S=[0, 11]. -/
def code_5025 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_5025_ok : code_5025.OK := by native_decide
/-- Code #5025 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5025_qec :
    ∃ ψ, SS.IsAmplitudes code_5025 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5025 code_5025_ok (by decide) (by decide)

/-- Catalogue code #5026: ((6,2,2)), m=12, a=[3, 4, 6, 8, 9, 11], S=[0, 7]. -/
def code_5026 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 3)]
theorem code_5026_ok : code_5026.OK := by native_decide
/-- Code #5026 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5026_qec :
    ∃ ψ, SS.IsAmplitudes code_5026 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5026 code_5026_ok (by decide) (by decide)

/-- Catalogue code #5027: ((6,2,2)), m=12, a=[3, 4, 6, 10, 11, 11], S=[0, 5]. -/
def code_5027 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), (0 : ℚ)]
theorem code_5027_ok : code_5027.OK := by native_decide
/-- Code #5027 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5027_qec :
    ∃ ψ, SS.IsAmplitudes code_5027 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5027 code_5027_ok (by decide) (by decide)

/-- Catalogue code #5028: ((6,2,2)), m=12, a=[3, 4, 6, 10, 11, 11], S=[0, 7]. -/
def code_5028 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6)]
theorem code_5028_ok : code_5028.OK := by native_decide
/-- Code #5028 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5028_qec :
    ∃ ψ, SS.IsAmplitudes code_5028 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5028 code_5028_ok (by decide) (by decide)

/-- Catalogue code #5029: ((6,2,2)), m=12, a=[3, 4, 7, 7, 7, 11], S=[0, 2]. -/
def code_5029 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3)]
theorem code_5029_ok : code_5029.OK := by native_decide
/-- Code #5029 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5029_qec :
    ∃ ψ, SS.IsAmplitudes code_5029 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5029 code_5029_ok (by decide) (by decide)

/-- Catalogue code #5030: ((6,2,2)), m=12, a=[3, 4, 7, 7, 10, 10], S=[0, 11]. -/
def code_5030 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((5 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5030_ok : code_5030.OK := by native_decide
/-- Code #5030 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5030_qec :
    ∃ ψ, SS.IsAmplitudes code_5030 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5030 code_5030_ok (by decide) (by decide)

/-- Catalogue code #5031: ((6,2,2)), m=12, a=[3, 4, 7, 8, 9, 10], S=[0, 11]. -/
def code_5031 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]
theorem code_5031_ok : code_5031.OK := by native_decide
/-- Code #5031 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5031_qec :
    ∃ ψ, SS.IsAmplitudes code_5031 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5031 code_5031_ok (by decide) (by decide)

/-- Catalogue code #5032: ((6,2,2)), m=12, a=[3, 4, 7, 9, 10, 10], S=[0, 11]. -/
def code_5032 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((5 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5032_ok : code_5032.OK := by native_decide
/-- Code #5032 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5032_qec :
    ∃ ψ, SS.IsAmplitudes code_5032 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5032 code_5032_ok (by decide) (by decide)

/-- Catalogue code #5033: ((6,2,2)), m=12, a=[3, 4, 7, 9, 11, 11], S=[0, 2]. -/
def code_5033 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5033_ok : code_5033.OK := by native_decide
/-- Code #5033 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5033_qec :
    ∃ ψ, SS.IsAmplitudes code_5033 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5033 code_5033_ok (by decide) (by decide)

/-- Catalogue code #5034: ((6,2,2)), m=12, a=[3, 4, 8, 9, 10, 10], S=[0, 7]. -/
def code_5034 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-5 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5034_ok : code_5034.OK := by native_decide
/-- Code #5034 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5034_qec :
    ∃ ψ, SS.IsAmplitudes code_5034 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5034 code_5034_ok (by decide) (by decide)

/-- Catalogue code #5035: ((6,2,2)), m=12, a=[3, 4, 8, 9, 10, 11], S=[0, 7]. -/
def code_5035 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((1 : ℚ) / 3)]
theorem code_5035_ok : code_5035.OK := by native_decide
/-- Code #5035 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5035_qec :
    ∃ ψ, SS.IsAmplitudes code_5035 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5035 code_5035_ok (by decide) (by decide)

/-- Catalogue code #5036: ((6,2,2)), m=12, a=[3, 4, 8, 10, 10, 11], S=[0, 7]. -/
def code_5036 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-5 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ)]
theorem code_5036_ok : code_5036.OK := by native_decide
/-- Code #5036 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5036_qec :
    ∃ ψ, SS.IsAmplitudes code_5036 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5036 code_5036_ok (by decide) (by decide)

/-- Catalogue code #5037: ((6,2,2)), m=12, a=[3, 4, 9, 10, 10, 11], S=[0, 7]. -/
def code_5037 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 6)]
theorem code_5037_ok : code_5037.OK := by native_decide
/-- Code #5037 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5037_qec :
    ∃ ψ, SS.IsAmplitudes code_5037 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5037 code_5037_ok (by decide) (by decide)

/-- Catalogue code #5038: ((6,2,2)), m=12, a=[3, 4, 9, 10, 11, 11], S=[0, 5]. -/
def code_5038 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_5038_ok : code_5038.OK := by native_decide
/-- Code #5038 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5038_qec :
    ∃ ψ, SS.IsAmplitudes code_5038 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5038 code_5038_ok (by decide) (by decide)

/-- Catalogue code #5039: ((6,2,2)), m=12, a=[3, 4, 9, 11, 11, 11], S=[0, 7]. -/
def code_5039 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6)]
theorem code_5039_ok : code_5039.OK := by native_decide
/-- Code #5039 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5039_qec :
    ∃ ψ, SS.IsAmplitudes code_5039 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5039 code_5039_ok (by decide) (by decide)

/-- Catalogue code #5040: ((6,2,2)), m=12, a=[3, 4, 10, 10, 11, 11], S=[0, 7]. -/
def code_5040 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((5 : ℚ) / 6), (0 : ℚ)]
theorem code_5040_ok : code_5040.OK := by native_decide
/-- Code #5040 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5040_qec :
    ∃ ψ, SS.IsAmplitudes code_5040 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5040 code_5040_ok (by decide) (by decide)

/-- Catalogue code #5041: ((6,2,2)), m=12, a=[3, 4, 10, 11, 11, 11], S=[0, 7]. -/
def code_5041 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5041_ok : code_5041.OK := by native_decide
/-- Code #5041 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5041_qec :
    ∃ ψ, SS.IsAmplitudes code_5041 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5041 code_5041_ok (by decide) (by decide)

/-- Catalogue code #5042: ((6,2,2)), m=12, a=[3, 5, 5, 5, 6, 9], S=[0, 1]. -/
def code_5042 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5042_ok : code_5042.OK := by native_decide
/-- Code #5042 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5042_qec :
    ∃ ψ, SS.IsAmplitudes code_5042 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5042 code_5042_ok (by decide) (by decide)

/-- Catalogue code #5043: ((6,2,2)), m=12, a=[3, 5, 5, 5, 8, 10], S=[0, 1]. -/
def code_5043 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5043_ok : code_5043.OK := by native_decide
/-- Code #5043 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5043_qec :
    ∃ ψ, SS.IsAmplitudes code_5043 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5043 code_5043_ok (by decide) (by decide)

/-- Catalogue code #5044: ((6,2,2)), m=12, a=[3, 5, 5, 5, 8, 11], S=[0, 2]. -/
def code_5044 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((-2 : ℚ) / 3)]
theorem code_5044_ok : code_5044.OK := by native_decide
/-- Code #5044 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5044_qec :
    ∃ ψ, SS.IsAmplitudes code_5044 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5044 code_5044_ok (by decide) (by decide)

/-- Catalogue code #5045: ((6,2,2)), m=12, a=[3, 5, 5, 6, 7, 8], S=[0, 1]. -/
def code_5045 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5045_ok : code_5045.OK := by native_decide
/-- Code #5045 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5045_qec :
    ∃ ψ, SS.IsAmplitudes code_5045 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5045 code_5045_ok (by decide) (by decide)

/-- Catalogue code #5046: ((6,2,2)), m=12, a=[3, 5, 5, 6, 8, 8], S=[0, 1]. -/
def code_5046 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]
theorem code_5046_ok : code_5046.OK := by native_decide
/-- Code #5046 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5046_qec :
    ∃ ψ, SS.IsAmplitudes code_5046 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5046 code_5046_ok (by decide) (by decide)

/-- Catalogue code #5047: ((6,2,2)), m=12, a=[3, 5, 5, 6, 9, 10], S=[0, 1]. -/
def code_5047 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]
theorem code_5047_ok : code_5047.OK := by native_decide
/-- Code #5047 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5047_qec :
    ∃ ψ, SS.IsAmplitudes code_5047 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5047 code_5047_ok (by decide) (by decide)

/-- Catalogue code #5048: ((6,2,2)), m=12, a=[3, 5, 5, 6, 9, 11], S=[0, 2]. -/
def code_5048 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_5048_ok : code_5048.OK := by native_decide
/-- Code #5048 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5048_qec :
    ∃ ψ, SS.IsAmplitudes code_5048 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5048 code_5048_ok (by decide) (by decide)

/-- Catalogue code #5049: ((6,2,2)), m=12, a=[3, 5, 5, 6, 11, 11], S=[0, 2]. -/
def code_5049 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]
theorem code_5049_ok : code_5049.OK := by native_decide
/-- Code #5049 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5049_qec :
    ∃ ψ, SS.IsAmplitudes code_5049 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5049 code_5049_ok (by decide) (by decide)

/-- Catalogue code #5050: ((6,2,2)), m=12, a=[3, 5, 5, 7, 11, 11], S=[0, 10]. -/
def code_5050 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), ((2 : ℚ) / 3)]
theorem code_5050_ok : code_5050.OK := by native_decide
/-- Code #5050 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5050_qec :
    ∃ ψ, SS.IsAmplitudes code_5050 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5050 code_5050_ok (by decide) (by decide)

/-- Catalogue code #5051: ((6,2,2)), m=12, a=[3, 5, 5, 8, 10, 10], S=[0, 11]. -/
def code_5051 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((5 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5051_ok : code_5051.OK := by native_decide
/-- Code #5051 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5051_qec :
    ∃ ψ, SS.IsAmplitudes code_5051 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5051 code_5051_ok (by decide) (by decide)

/-- Catalogue code #5052: ((6,2,2)), m=12, a=[3, 5, 5, 9, 11, 11], S=[0, 2]. -/
def code_5052 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5052_ok : code_5052.OK := by native_decide
/-- Code #5052 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5052_qec :
    ∃ ψ, SS.IsAmplitudes code_5052 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5052 code_5052_ok (by decide) (by decide)

/-- Catalogue code #5053: ((6,2,2)), m=12, a=[3, 5, 5, 9, 11, 11], S=[0, 10]. -/
def code_5053 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5053_ok : code_5053.OK := by native_decide
/-- Code #5053 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5053_qec :
    ∃ ψ, SS.IsAmplitudes code_5053 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5053 code_5053_ok (by decide) (by decide)

/-- Catalogue code #5054: ((6,2,2)), m=12, a=[3, 5, 5, 11, 11, 11], S=[0, 2]. -/
def code_5054 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((2 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ)]
theorem code_5054_ok : code_5054.OK := by native_decide
/-- Code #5054 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5054_qec :
    ∃ ψ, SS.IsAmplitudes code_5054 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5054 code_5054_ok (by decide) (by decide)

/-- Catalogue code #5055: ((6,2,2)), m=12, a=[3, 5, 6, 7, 8, 10], S=[0, 11]. -/
def code_5055 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5055_ok : code_5055.OK := by native_decide
/-- Code #5055 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5055_qec :
    ∃ ψ, SS.IsAmplitudes code_5055 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5055 code_5055_ok (by decide) (by decide)

/-- Catalogue code #5056: ((6,2,2)), m=12, a=[3, 5, 6, 7, 8, 11], S=[0, 2]. -/
def code_5056 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]
theorem code_5056_ok : code_5056.OK := by native_decide
/-- Code #5056 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5056_qec :
    ∃ ψ, SS.IsAmplitudes code_5056 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5056 code_5056_ok (by decide) (by decide)

/-- Catalogue code #5057: ((6,2,2)), m=12, a=[3, 5, 6, 7, 11, 11], S=[0, 10]. -/
def code_5057 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]
theorem code_5057_ok : code_5057.OK := by native_decide
/-- Code #5057 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5057_qec :
    ∃ ψ, SS.IsAmplitudes code_5057 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5057 code_5057_ok (by decide) (by decide)

/-- Catalogue code #5058: ((6,2,2)), m=12, a=[3, 5, 6, 8, 8, 9], S=[0, 1]. -/
def code_5058 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 6)]
theorem code_5058_ok : code_5058.OK := by native_decide
/-- Code #5058 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5058_qec :
    ∃ ψ, SS.IsAmplitudes code_5058 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5058 code_5058_ok (by decide) (by decide)

/-- Catalogue code #5059: ((6,2,2)), m=12, a=[3, 5, 6, 8, 8, 9], S=[0, 10]. -/
def code_5059 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3)]
theorem code_5059_ok : code_5059.OK := by native_decide
/-- Code #5059 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5059_qec :
    ∃ ψ, SS.IsAmplitudes code_5059 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5059 code_5059_ok (by decide) (by decide)

/-- Catalogue code #5060: ((6,2,2)), m=12, a=[3, 5, 6, 8, 8, 11], S=[0, 10]. -/
def code_5060 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]
theorem code_5060_ok : code_5060.OK := by native_decide
/-- Code #5060 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5060_qec :
    ∃ ψ, SS.IsAmplitudes code_5060 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5060 code_5060_ok (by decide) (by decide)

/-- Catalogue code #5061: ((6,2,2)), m=12, a=[3, 5, 6, 8, 9, 10], S=[0, 1]. -/
def code_5061 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]
theorem code_5061_ok : code_5061.OK := by native_decide
/-- Code #5061 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5061_qec :
    ∃ ψ, SS.IsAmplitudes code_5061 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5061 code_5061_ok (by decide) (by decide)

/-- Catalogue code #5062: ((6,2,2)), m=12, a=[3, 5, 6, 8, 10, 10], S=[0, 1]. -/
def code_5062 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]
theorem code_5062_ok : code_5062.OK := by native_decide
/-- Code #5062 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5062_qec :
    ∃ ψ, SS.IsAmplitudes code_5062 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5062 code_5062_ok (by decide) (by decide)

/-- Catalogue code #5063: ((6,2,2)), m=12, a=[3, 5, 7, 8, 8, 10], S=[0, 11]. -/
def code_5063 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2)]
theorem code_5063_ok : code_5063.OK := by native_decide
/-- Code #5063 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5063_qec :
    ∃ ψ, SS.IsAmplitudes code_5063 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5063 code_5063_ok (by decide) (by decide)

/-- Catalogue code #5064: ((6,2,2)), m=12, a=[3, 5, 8, 8, 9, 10], S=[0, 1]. -/
def code_5064 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2)]
theorem code_5064_ok : code_5064.OK := by native_decide
/-- Code #5064 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5064_qec :
    ∃ ψ, SS.IsAmplitudes code_5064 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5064 code_5064_ok (by decide) (by decide)

/-- Catalogue code #5065: ((6,2,2)), m=12, a=[3, 5, 8, 8, 10, 10], S=[0, 11]. -/
def code_5065 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5065_ok : code_5065.OK := by native_decide
/-- Code #5065 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5065_qec :
    ∃ ψ, SS.IsAmplitudes code_5065 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5065 code_5065_ok (by decide) (by decide)

/-- Catalogue code #5066: ((6,2,2)), m=12, a=[3, 5, 8, 9, 10, 10], S=[0, 1]. -/
def code_5066 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6)]
theorem code_5066_ok : code_5066.OK := by native_decide
/-- Code #5066 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5066_qec :
    ∃ ψ, SS.IsAmplitudes code_5066 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5066 code_5066_ok (by decide) (by decide)

/-- Catalogue code #5067: ((6,2,2)), m=12, a=[3, 6, 6, 7, 8, 8], S=[0, 10]. -/
def code_5067 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5067_ok : code_5067.OK := by native_decide
/-- Code #5067 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5067_qec :
    ∃ ψ, SS.IsAmplitudes code_5067 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5067 code_5067_ok (by decide) (by decide)

/-- Catalogue code #5068: ((6,2,2)), m=12, a=[3, 6, 7, 7, 7, 9], S=[0, 11]. -/
def code_5068 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6)]
theorem code_5068_ok : code_5068.OK := by native_decide
/-- Code #5068 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5068_qec :
    ∃ ψ, SS.IsAmplitudes code_5068 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5068 code_5068_ok (by decide) (by decide)

/-- Catalogue code #5069: ((6,2,2)), m=12, a=[3, 6, 7, 7, 8, 8], S=[0, 1]. -/
def code_5069 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6)]
theorem code_5069_ok : code_5069.OK := by native_decide
/-- Code #5069 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5069_qec :
    ∃ ψ, SS.IsAmplitudes code_5069 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5069 code_5069_ok (by decide) (by decide)

/-- Catalogue code #5070: ((6,2,2)), m=12, a=[3, 6, 7, 7, 8, 9], S=[0, 11]. -/
def code_5070 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6)]
theorem code_5070_ok : code_5070.OK := by native_decide
/-- Code #5070 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5070_qec :
    ∃ ψ, SS.IsAmplitudes code_5070 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5070 code_5070_ok (by decide) (by decide)

/-- Catalogue code #5071: ((6,2,2)), m=12, a=[3, 6, 7, 7, 8, 10], S=[0, 1]. -/
def code_5071 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3)]
theorem code_5071_ok : code_5071.OK := by native_decide
/-- Code #5071 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5071_qec :
    ∃ ψ, SS.IsAmplitudes code_5071 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5071 code_5071_ok (by decide) (by decide)

/-- Catalogue code #5072: ((6,2,2)), m=12, a=[3, 6, 7, 7, 8, 11], S=[0, 2]. -/
def code_5072 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]
theorem code_5072_ok : code_5072.OK := by native_decide
/-- Code #5072 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5072_qec :
    ∃ ψ, SS.IsAmplitudes code_5072 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5072 code_5072_ok (by decide) (by decide)

/-- Catalogue code #5073: ((6,2,2)), m=12, a=[3, 6, 7, 8, 8, 8], S=[0, 10]. -/
def code_5073 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 3)]
theorem code_5073_ok : code_5073.OK := by native_decide
/-- Code #5073 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5073_qec :
    ∃ ψ, SS.IsAmplitudes code_5073 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5073 code_5073_ok (by decide) (by decide)

/-- Catalogue code #5074: ((6,2,2)), m=12, a=[3, 6, 7, 8, 8, 9], S=[0, 10]. -/
def code_5074 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 3)]
theorem code_5074_ok : code_5074.OK := by native_decide
/-- Code #5074 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5074_qec :
    ∃ ψ, SS.IsAmplitudes code_5074 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5074 code_5074_ok (by decide) (by decide)

/-- Catalogue code #5075: ((6,2,2)), m=12, a=[3, 6, 7, 8, 8, 10], S=[0, 1]. -/
def code_5075 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 2)]
theorem code_5075_ok : code_5075.OK := by native_decide
/-- Code #5075 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5075_qec :
    ∃ ψ, SS.IsAmplitudes code_5075 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5075 code_5075_ok (by decide) (by decide)

/-- Catalogue code #5076: ((6,2,2)), m=12, a=[3, 6, 7, 8, 8, 10], S=[0, 11]. -/
def code_5076 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 6)]
theorem code_5076_ok : code_5076.OK := by native_decide
/-- Code #5076 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5076_qec :
    ∃ ψ, SS.IsAmplitudes code_5076 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5076 code_5076_ok (by decide) (by decide)

/-- Catalogue code #5077: ((6,2,2)), m=12, a=[3, 6, 7, 8, 9, 10], S=[0, 11]. -/
def code_5077 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 3)]
theorem code_5077_ok : code_5077.OK := by native_decide
/-- Code #5077 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5077_qec :
    ∃ ψ, SS.IsAmplitudes code_5077 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5077 code_5077_ok (by decide) (by decide)

/-- Catalogue code #5078: ((6,2,2)), m=12, a=[3, 6, 7, 8, 11, 11], S=[0, 2]. -/
def code_5078 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5078_ok : code_5078.OK := by native_decide
/-- Code #5078 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5078_qec :
    ∃ ψ, SS.IsAmplitudes code_5078 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5078 code_5078_ok (by decide) (by decide)

/-- Catalogue code #5079: ((6,2,2)), m=12, a=[3, 6, 8, 8, 9, 11], S=[0, 7]. -/
def code_5079 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3)]
theorem code_5079_ok : code_5079.OK := by native_decide
/-- Code #5079 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5079_qec :
    ∃ ψ, SS.IsAmplitudes code_5079 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5079 code_5079_ok (by decide) (by decide)

/-- Catalogue code #5080: ((6,2,2)), m=12, a=[3, 6, 8, 8, 10, 11], S=[0, 5]. -/
def code_5080 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6), (0 : ℚ)]
theorem code_5080_ok : code_5080.OK := by native_decide
/-- Code #5080 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5080_qec :
    ∃ ψ, SS.IsAmplitudes code_5080 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5080 code_5080_ok (by decide) (by decide)

/-- Catalogue code #5081: ((6,2,2)), m=12, a=[3, 6, 8, 9, 10, 11], S=[0, 7]. -/
def code_5081 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5081_ok : code_5081.OK := by native_decide
/-- Code #5081 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5081_qec :
    ∃ ψ, SS.IsAmplitudes code_5081 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5081 code_5081_ok (by decide) (by decide)

/-- Catalogue code #5082: ((6,2,2)), m=12, a=[3, 6, 8, 10, 10, 11], S=[0, 5]. -/
def code_5082 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), (0 : ℚ)]
theorem code_5082_ok : code_5082.OK := by native_decide
/-- Code #5082 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5082_qec :
    ∃ ψ, SS.IsAmplitudes code_5082 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5082 code_5082_ok (by decide) (by decide)

/-- Catalogue code #5083: ((6,2,2)), m=12, a=[3, 6, 8, 10, 11, 11], S=[0, 5]. -/
def code_5083 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5083_ok : code_5083.OK := by native_decide
/-- Code #5083 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5083_qec :
    ∃ ψ, SS.IsAmplitudes code_5083 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5083 code_5083_ok (by decide) (by decide)

/-- Catalogue code #5084: ((6,2,2)), m=12, a=[3, 6, 9, 10, 11, 11], S=[0, 7]. -/
def code_5084 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5084_ok : code_5084.OK := by native_decide
/-- Code #5084 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5084_qec :
    ∃ ψ, SS.IsAmplitudes code_5084 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5084 code_5084_ok (by decide) (by decide)

/-- Catalogue code #5085: ((6,2,2)), m=12, a=[3, 6, 9, 11, 11, 11], S=[0, 7]. -/
def code_5085 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_5085_ok : code_5085.OK := by native_decide
/-- Code #5085 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5085_qec :
    ∃ ψ, SS.IsAmplitudes code_5085 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5085 code_5085_ok (by decide) (by decide)

/-- Catalogue code #5086: ((6,2,2)), m=12, a=[3, 7, 7, 7, 8, 9], S=[0, 11]. -/
def code_5086 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5086_ok : code_5086.OK := by native_decide
/-- Code #5086 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5086_qec :
    ∃ ψ, SS.IsAmplitudes code_5086 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5086 code_5086_ok (by decide) (by decide)

/-- Catalogue code #5087: ((6,2,2)), m=12, a=[3, 7, 7, 7, 11, 11], S=[0, 2]. -/
def code_5087 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3), ((2 : ℚ) / 3)]
theorem code_5087_ok : code_5087.OK := by native_decide
/-- Code #5087 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5087_qec :
    ∃ ψ, SS.IsAmplitudes code_5087 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5087 code_5087_ok (by decide) (by decide)

/-- Catalogue code #5088: ((6,2,2)), m=12, a=[3, 7, 7, 8, 8, 10], S=[0, 1]. -/
def code_5088 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2)]
theorem code_5088_ok : code_5088.OK := by native_decide
/-- Code #5088 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5088_qec :
    ∃ ψ, SS.IsAmplitudes code_5088 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5088 code_5088_ok (by decide) (by decide)

/-- Catalogue code #5089: ((6,2,2)), m=12, a=[3, 7, 7, 8, 9, 11], S=[0, 10]. -/
def code_5089 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), (0 : ℚ)]
theorem code_5089_ok : code_5089.OK := by native_decide
/-- Code #5089 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5089_qec :
    ∃ ψ, SS.IsAmplitudes code_5089 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5089 code_5089_ok (by decide) (by decide)

/-- Catalogue code #5090: ((6,2,2)), m=12, a=[3, 7, 7, 8, 11, 11], S=[0, 10]. -/
def code_5090 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3)]
theorem code_5090_ok : code_5090.OK := by native_decide
/-- Code #5090 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5090_qec :
    ∃ ψ, SS.IsAmplitudes code_5090 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5090 code_5090_ok (by decide) (by decide)

/-- Catalogue code #5091: ((6,2,2)), m=12, a=[3, 7, 7, 9, 10, 10], S=[0, 11]. -/
def code_5091 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5091_ok : code_5091.OK := by native_decide
/-- Code #5091 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5091_qec :
    ∃ ψ, SS.IsAmplitudes code_5091 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5091 code_5091_ok (by decide) (by decide)

/-- Catalogue code #5092: ((6,2,2)), m=12, a=[3, 7, 7, 11, 11, 11], S=[0, 10]. -/
def code_5092 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((2 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_5092_ok : code_5092.OK := by native_decide
/-- Code #5092 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5092_qec :
    ∃ ψ, SS.IsAmplitudes code_5092 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5092 code_5092_ok (by decide) (by decide)

/-- Catalogue code #5093: ((6,2,2)), m=12, a=[3, 7, 8, 11, 11, 11], S=[0, 10]. -/
def code_5093 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((2 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_5093_ok : code_5093.OK := by native_decide
/-- Code #5093 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5093_qec :
    ∃ ψ, SS.IsAmplitudes code_5093 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5093 code_5093_ok (by decide) (by decide)

/-- Catalogue code #5094: ((6,2,2)), m=12, a=[3, 8, 8, 9, 10, 11], S=[0, 7]. -/
def code_5094 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 2), ((-1 : ℚ) / 3)]
theorem code_5094_ok : code_5094.OK := by native_decide
/-- Code #5094 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5094_qec :
    ∃ ψ, SS.IsAmplitudes code_5094 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5094 code_5094_ok (by decide) (by decide)

/-- Catalogue code #5095: ((6,2,2)), m=12, a=[3, 8, 8, 10, 10, 11], S=[0, 7]. -/
def code_5095 : ExampleData 6 12 2 where
  a := ![(3 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]
theorem code_5095_ok : code_5095.OK := by native_decide
/-- Code #5095 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5095_qec :
    ∃ ψ, SS.IsAmplitudes code_5095 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5095 code_5095_ok (by decide) (by decide)

/-- Catalogue code #5096: ((6,2,2)), m=12, a=[4, 4, 4, 5, 5, 6], S=[0, 2]. -/
def code_5096 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_5096_ok : code_5096.OK := by native_decide
/-- Code #5096 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5096_qec :
    ∃ ψ, SS.IsAmplitudes code_5096 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5096 code_5096_ok (by decide) (by decide)

/-- Catalogue code #5097: ((6,2,2)), m=12, a=[4, 4, 4, 5, 6, 6], S=[0, 2]. -/
def code_5097 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, true, true], ![true, true, true, false, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (1 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_5097_ok : code_5097.OK := by native_decide
/-- Code #5097 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5097_qec :
    ∃ ψ, SS.IsAmplitudes code_5097 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5097 code_5097_ok (by decide) (by decide)

/-- Catalogue code #5098: ((6,2,2)), m=12, a=[4, 4, 4, 5, 6, 6], S=[0, 10]. -/
def code_5098 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (1 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_5098_ok : code_5098.OK := by native_decide
/-- Code #5098 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5098_qec :
    ∃ ψ, SS.IsAmplitudes code_5098 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5098 code_5098_ok (by decide) (by decide)

/-- Catalogue code #5099: ((6,2,2)), m=12, a=[4, 4, 4, 6, 6, 7], S=[0, 2]. -/
def code_5099 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (1 : ℚ)]
theorem code_5099_ok : code_5099.OK := by native_decide
/-- Code #5099 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5099_qec :
    ∃ ψ, SS.IsAmplitudes code_5099 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5099 code_5099_ok (by decide) (by decide)

/-- Catalogue code #5100: ((6,2,2)), m=12, a=[4, 4, 4, 6, 6, 7], S=[0, 10]. -/
def code_5100 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (1 : ℚ)]
theorem code_5100_ok : code_5100.OK := by native_decide
/-- Code #5100 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5100_qec :
    ∃ ψ, SS.IsAmplitudes code_5100 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5100 code_5100_ok (by decide) (by decide)

/-- Catalogue code #5101: ((6,2,2)), m=12, a=[4, 4, 4, 6, 7, 7], S=[0, 2]. -/
def code_5101 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_5101_ok : code_5101.OK := by native_decide
/-- Code #5101 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5101_qec :
    ∃ ψ, SS.IsAmplitudes code_5101 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5101 code_5101_ok (by decide) (by decide)

/-- Catalogue code #5102: ((6,2,2)), m=12, a=[4, 4, 4, 6, 7, 11], S=[0, 2]. -/
def code_5102 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, true, true, true], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_5102_ok : code_5102.OK := by native_decide
/-- Code #5102 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5102_qec :
    ∃ ψ, SS.IsAmplitudes code_5102 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5102 code_5102_ok (by decide) (by decide)

/-- Catalogue code #5103: ((6,2,2)), m=12, a=[4, 4, 4, 6, 11, 11], S=[0, 10]. -/
def code_5103 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_5103_ok : code_5103.OK := by native_decide
/-- Code #5103 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5103_qec :
    ∃ ψ, SS.IsAmplitudes code_5103 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5103 code_5103_ok (by decide) (by decide)

/-- Catalogue code #5104: ((6,2,2)), m=12, a=[4, 4, 5, 5, 6, 8], S=[0, 2]. -/
def code_5104 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_5104_ok : code_5104.OK := by native_decide
/-- Code #5104 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5104_qec :
    ∃ ψ, SS.IsAmplitudes code_5104 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5104 code_5104_ok (by decide) (by decide)

/-- Catalogue code #5105: ((6,2,2)), m=12, a=[4, 4, 5, 5, 6, 8], S=[0, 10]. -/
def code_5105 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3)]
theorem code_5105_ok : code_5105.OK := by native_decide
/-- Code #5105 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5105_qec :
    ∃ ψ, SS.IsAmplitudes code_5105 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5105 code_5105_ok (by decide) (by decide)

/-- Catalogue code #5106: ((6,2,2)), m=12, a=[4, 4, 5, 5, 6, 9], S=[0, 11]. -/
def code_5106 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 6)]
theorem code_5106_ok : code_5106.OK := by native_decide
/-- Code #5106 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5106_qec :
    ∃ ψ, SS.IsAmplitudes code_5106 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5106 code_5106_ok (by decide) (by decide)

/-- Catalogue code #5107: ((6,2,2)), m=12, a=[4, 4, 5, 5, 6, 10], S=[0, 1]. -/
def code_5107 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5107_ok : code_5107.OK := by native_decide
/-- Code #5107 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5107_qec :
    ∃ ψ, SS.IsAmplitudes code_5107 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5107 code_5107_ok (by decide) (by decide)

/-- Catalogue code #5108: ((6,2,2)), m=12, a=[4, 4, 5, 5, 11, 11], S=[0, 2]. -/
def code_5108 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_5108_ok : code_5108.OK := by native_decide
/-- Code #5108 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5108_qec :
    ∃ ψ, SS.IsAmplitudes code_5108 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5108 code_5108_ok (by decide) (by decide)

/-- Catalogue code #5109: ((6,2,2)), m=12, a=[4, 4, 5, 6, 6, 9], S=[0, 2]. -/
def code_5109 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_5109_ok : code_5109.OK := by native_decide
/-- Code #5109 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5109_qec :
    ∃ ψ, SS.IsAmplitudes code_5109 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5109 code_5109_ok (by decide) (by decide)

/-- Catalogue code #5110: ((6,2,2)), m=12, a=[4, 4, 5, 6, 6, 11], S=[0, 2]. -/
def code_5110 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]
theorem code_5110_ok : code_5110.OK := by native_decide
/-- Code #5110 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5110_qec :
    ∃ ψ, SS.IsAmplitudes code_5110 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5110 code_5110_ok (by decide) (by decide)

/-- Catalogue code #5111: ((6,2,2)), m=12, a=[4, 4, 5, 6, 9, 9], S=[0, 11]. -/
def code_5111 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2), ((1 : ℚ) / 2), ((-1 : ℚ) / 6)]
theorem code_5111_ok : code_5111.OK := by native_decide
/-- Code #5111 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5111_qec :
    ∃ ψ, SS.IsAmplitudes code_5111 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5111 code_5111_ok (by decide) (by decide)

/-- Catalogue code #5112: ((6,2,2)), m=12, a=[4, 4, 5, 6, 9, 10], S=[0, 1]. -/
def code_5112 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6)]
theorem code_5112_ok : code_5112.OK := by native_decide
/-- Code #5112 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5112_qec :
    ∃ ψ, SS.IsAmplitudes code_5112 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5112 code_5112_ok (by decide) (by decide)

/-- Catalogue code #5113: ((6,2,2)), m=12, a=[4, 4, 5, 6, 9, 10], S=[0, 11]. -/
def code_5113 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6)]
theorem code_5113_ok : code_5113.OK := by native_decide
/-- Code #5113 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5113_qec :
    ∃ ψ, SS.IsAmplitudes code_5113 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5113 code_5113_ok (by decide) (by decide)

/-- Catalogue code #5114: ((6,2,2)), m=12, a=[4, 4, 5, 7, 9, 11], S=[0, 10]. -/
def code_5114 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_5114_ok : code_5114.OK := by native_decide
/-- Code #5114 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5114_qec :
    ∃ ψ, SS.IsAmplitudes code_5114 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5114 code_5114_ok (by decide) (by decide)

/-- Catalogue code #5115: ((6,2,2)), m=12, a=[4, 4, 5, 9, 9, 10], S=[0, 11]. -/
def code_5115 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2)]
theorem code_5115_ok : code_5115.OK := by native_decide
/-- Code #5115 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5115_qec :
    ∃ ψ, SS.IsAmplitudes code_5115 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5115 code_5115_ok (by decide) (by decide)

/-- Catalogue code #5116: ((6,2,2)), m=12, a=[4, 4, 6, 6, 7, 7], S=[0, 2]. -/
def code_5116 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_5116_ok : code_5116.OK := by native_decide
/-- Code #5116 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5116_qec :
    ∃ ψ, SS.IsAmplitudes code_5116 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5116 code_5116_ok (by decide) (by decide)

/-- Catalogue code #5117: ((6,2,2)), m=12, a=[4, 4, 6, 6, 7, 9], S=[0, 2]. -/
def code_5117 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_5117_ok : code_5117.OK := by native_decide
/-- Code #5117 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5117_qec :
    ∃ ψ, SS.IsAmplitudes code_5117 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5117 code_5117_ok (by decide) (by decide)

/-- Catalogue code #5118: ((6,2,2)), m=12, a=[4, 4, 6, 7, 7, 10], S=[0, 11]. -/
def code_5118 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((2 : ℚ) / 3), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6)]
theorem code_5118_ok : code_5118.OK := by native_decide
/-- Code #5118 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5118_qec :
    ∃ ψ, SS.IsAmplitudes code_5118 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5118 code_5118_ok (by decide) (by decide)

/-- Catalogue code #5119: ((6,2,2)), m=12, a=[4, 4, 6, 7, 9, 9], S=[0, 1]. -/
def code_5119 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5119_ok : code_5119.OK := by native_decide
/-- Code #5119 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5119_qec :
    ∃ ψ, SS.IsAmplitudes code_5119 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5119 code_5119_ok (by decide) (by decide)

/-- Catalogue code #5120: ((6,2,2)), m=12, a=[4, 4, 6, 7, 9, 9], S=[0, 10]. -/
def code_5120 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 3)]
theorem code_5120_ok : code_5120.OK := by native_decide
/-- Code #5120 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5120_qec :
    ∃ ψ, SS.IsAmplitudes code_5120 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5120 code_5120_ok (by decide) (by decide)

/-- Catalogue code #5121: ((6,2,2)), m=12, a=[4, 4, 6, 7, 9, 10], S=[0, 11]. -/
def code_5121 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_5121_ok : code_5121.OK := by native_decide
/-- Code #5121 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5121_qec :
    ∃ ψ, SS.IsAmplitudes code_5121 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5121 code_5121_ok (by decide) (by decide)

/-- Catalogue code #5122: ((6,2,2)), m=12, a=[4, 4, 6, 8, 11, 11], S=[0, 2]. -/
def code_5122 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5122_ok : code_5122.OK := by native_decide
/-- Code #5122 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5122_qec :
    ∃ ψ, SS.IsAmplitudes code_5122 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5122 code_5122_ok (by decide) (by decide)

/-- Catalogue code #5123: ((6,2,2)), m=12, a=[4, 4, 6, 8, 11, 11], S=[0, 10]. -/
def code_5123 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_5123_ok : code_5123.OK := by native_decide
/-- Code #5123 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5123_qec :
    ∃ ψ, SS.IsAmplitudes code_5123 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5123 code_5123_ok (by decide) (by decide)

/-- Catalogue code #5124: ((6,2,2)), m=12, a=[4, 4, 6, 9, 9, 10], S=[0, 5]. -/
def code_5124 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]
theorem code_5124_ok : code_5124.OK := by native_decide
/-- Code #5124 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5124_qec :
    ∃ ψ, SS.IsAmplitudes code_5124 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5124 code_5124_ok (by decide) (by decide)

/-- Catalogue code #5125: ((6,2,2)), m=12, a=[4, 4, 6, 9, 9, 11], S=[0, 5]. -/
def code_5125 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3)]
theorem code_5125_ok : code_5125.OK := by native_decide
/-- Code #5125 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5125_qec :
    ∃ ψ, SS.IsAmplitudes code_5125 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5125 code_5125_ok (by decide) (by decide)

/-- Catalogue code #5126: ((6,2,2)), m=12, a=[4, 4, 6, 9, 10, 11], S=[0, 5]. -/
def code_5126 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ)]
theorem code_5126_ok : code_5126.OK := by native_decide
/-- Code #5126 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5126_qec :
    ∃ ψ, SS.IsAmplitudes code_5126 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5126 code_5126_ok (by decide) (by decide)

/-- Catalogue code #5127: ((6,2,2)), m=12, a=[4, 4, 6, 10, 11, 11], S=[0, 7]. -/
def code_5127 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]
theorem code_5127_ok : code_5127.OK := by native_decide
/-- Code #5127 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5127_qec :
    ∃ ψ, SS.IsAmplitudes code_5127 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5127 code_5127_ok (by decide) (by decide)

/-- Catalogue code #5128: ((6,2,2)), m=12, a=[4, 4, 7, 7, 9, 10], S=[0, 11]. -/
def code_5128 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2)]
theorem code_5128_ok : code_5128.OK := by native_decide
/-- Code #5128 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5128_qec :
    ∃ ψ, SS.IsAmplitudes code_5128 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5128 code_5128_ok (by decide) (by decide)

/-- Catalogue code #5129: ((6,2,2)), m=12, a=[4, 4, 7, 9, 9, 10], S=[0, 1]. -/
def code_5129 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]
theorem code_5129_ok : code_5129.OK := by native_decide
/-- Code #5129 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5129_qec :
    ∃ ψ, SS.IsAmplitudes code_5129 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5129 code_5129_ok (by decide) (by decide)

/-- Catalogue code #5130: ((6,2,2)), m=12, a=[4, 4, 7, 9, 10, 10], S=[0, 11]. -/
def code_5130 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5130_ok : code_5130.OK := by native_decide
/-- Code #5130 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5130_qec :
    ∃ ψ, SS.IsAmplitudes code_5130 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5130 code_5130_ok (by decide) (by decide)

/-- Catalogue code #5131: ((6,2,2)), m=12, a=[4, 4, 9, 9, 10, 11], S=[0, 5]. -/
def code_5131 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 2), ((-1 : ℚ) / 3)]
theorem code_5131_ok : code_5131.OK := by native_decide
/-- Code #5131 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5131_qec :
    ∃ ψ, SS.IsAmplitudes code_5131 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5131 code_5131_ok (by decide) (by decide)

/-- Catalogue code #5132: ((6,2,2)), m=12, a=[4, 4, 9, 10, 10, 11], S=[0, 5]. -/
def code_5132 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]
theorem code_5132_ok : code_5132.OK := by native_decide
/-- Code #5132 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5132_qec :
    ∃ ψ, SS.IsAmplitudes code_5132 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5132 code_5132_ok (by decide) (by decide)

/-- Catalogue code #5133: ((6,2,2)), m=12, a=[4, 4, 9, 10, 11, 11], S=[0, 7]. -/
def code_5133 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 2), ((1 : ℚ) / 3)]
theorem code_5133_ok : code_5133.OK := by native_decide
/-- Code #5133 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5133_qec :
    ∃ ψ, SS.IsAmplitudes code_5133 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5133 code_5133_ok (by decide) (by decide)

/-- Catalogue code #5134: ((6,2,2)), m=12, a=[4, 5, 5, 5, 9, 10], S=[0, 1]. -/
def code_5134 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5134_ok : code_5134.OK := by native_decide
/-- Code #5134 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5134_qec :
    ∃ ψ, SS.IsAmplitudes code_5134 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5134 code_5134_ok (by decide) (by decide)

/-- Catalogue code #5135: ((6,2,2)), m=12, a=[4, 5, 5, 5, 11, 11], S=[0, 2]. -/
def code_5135 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_5135_ok : code_5135.OK := by native_decide
/-- Code #5135 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5135_qec :
    ∃ ψ, SS.IsAmplitudes code_5135 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5135 code_5135_ok (by decide) (by decide)

/-- Catalogue code #5136: ((6,2,2)), m=12, a=[4, 5, 5, 6, 6, 8], S=[0, 2]. -/
def code_5136 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_5136_ok : code_5136.OK := by native_decide
/-- Code #5136 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5136_qec :
    ∃ ψ, SS.IsAmplitudes code_5136 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5136 code_5136_ok (by decide) (by decide)

/-- Catalogue code #5137: ((6,2,2)), m=12, a=[4, 5, 5, 6, 8, 8], S=[0, 2]. -/
def code_5137 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]
theorem code_5137_ok : code_5137.OK := by native_decide
/-- Code #5137 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5137_qec :
    ∃ ψ, SS.IsAmplitudes code_5137 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5137 code_5137_ok (by decide) (by decide)

/-- Catalogue code #5138: ((6,2,2)), m=12, a=[4, 5, 5, 6, 8, 10], S=[0, 11]. -/
def code_5138 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((-2 : ℚ) / 3), ((1 : ℚ) / 6)]
theorem code_5138_ok : code_5138.OK := by native_decide
/-- Code #5138 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5138_qec :
    ∃ ψ, SS.IsAmplitudes code_5138 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5138 code_5138_ok (by decide) (by decide)

/-- Catalogue code #5139: ((6,2,2)), m=12, a=[4, 5, 5, 6, 9, 10], S=[0, 11]. -/
def code_5139 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]
theorem code_5139_ok : code_5139.OK := by native_decide
/-- Code #5139 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5139_qec :
    ∃ ψ, SS.IsAmplitudes code_5139 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5139 code_5139_ok (by decide) (by decide)

/-- Catalogue code #5140: ((6,2,2)), m=12, a=[4, 5, 5, 6, 10, 10], S=[0, 1]. -/
def code_5140 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((-2 : ℚ) / 3), ((-1 : ℚ) / 2)]
theorem code_5140_ok : code_5140.OK := by native_decide
/-- Code #5140 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5140_qec :
    ∃ ψ, SS.IsAmplitudes code_5140 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5140 code_5140_ok (by decide) (by decide)

/-- Catalogue code #5141: ((6,2,2)), m=12, a=[4, 5, 5, 8, 9, 9], S=[0, 10]. -/
def code_5141 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5141_ok : code_5141.OK := by native_decide
/-- Code #5141 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5141_qec :
    ∃ ψ, SS.IsAmplitudes code_5141 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5141 code_5141_ok (by decide) (by decide)

/-- Catalogue code #5142: ((6,2,2)), m=12, a=[4, 5, 5, 8, 9, 10], S=[0, 11]. -/
def code_5142 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2)]
theorem code_5142_ok : code_5142.OK := by native_decide
/-- Code #5142 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5142_qec :
    ∃ ψ, SS.IsAmplitudes code_5142 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5142 code_5142_ok (by decide) (by decide)

/-- Catalogue code #5143: ((6,2,2)), m=12, a=[4, 5, 5, 8, 11, 11], S=[0, 10]. -/
def code_5143 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5143_ok : code_5143.OK := by native_decide
/-- Code #5143 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5143_qec :
    ∃ ψ, SS.IsAmplitudes code_5143 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5143 code_5143_ok (by decide) (by decide)

/-- Catalogue code #5144: ((6,2,2)), m=12, a=[4, 5, 5, 9, 10, 10], S=[0, 1]. -/
def code_5144 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((5 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5144_ok : code_5144.OK := by native_decide
/-- Code #5144 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5144_qec :
    ∃ ψ, SS.IsAmplitudes code_5144 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5144 code_5144_ok (by decide) (by decide)

/-- Catalogue code #5145: ((6,2,2)), m=12, a=[4, 5, 5, 9, 11, 11], S=[0, 2]. -/
def code_5145 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_5145_ok : code_5145.OK := by native_decide
/-- Code #5145 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5145_qec :
    ∃ ψ, SS.IsAmplitudes code_5145 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5145 code_5145_ok (by decide) (by decide)

/-- Catalogue code #5146: ((6,2,2)), m=12, a=[4, 5, 5, 11, 11, 11], S=[0, 2]. -/
def code_5146 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]
theorem code_5146_ok : code_5146.OK := by native_decide
/-- Code #5146 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5146_qec :
    ∃ ψ, SS.IsAmplitudes code_5146 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5146 code_5146_ok (by decide) (by decide)

/-- Catalogue code #5147: ((6,2,2)), m=12, a=[4, 5, 6, 6, 8, 9], S=[0, 10]. -/
def code_5147 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5147_ok : code_5147.OK := by native_decide
/-- Code #5147 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5147_qec :
    ∃ ψ, SS.IsAmplitudes code_5147 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5147 code_5147_ok (by decide) (by decide)

/-- Catalogue code #5148: ((6,2,2)), m=12, a=[4, 5, 6, 7, 8, 10], S=[0, 1]. -/
def code_5148 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5148_ok : code_5148.OK := by native_decide
/-- Code #5148 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5148_qec :
    ∃ ψ, SS.IsAmplitudes code_5148 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5148 code_5148_ok (by decide) (by decide)

/-- Catalogue code #5149: ((6,2,2)), m=12, a=[4, 5, 6, 7, 9, 9], S=[0, 11]. -/
def code_5149 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]
theorem code_5149_ok : code_5149.OK := by native_decide
/-- Code #5149 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5149_qec :
    ∃ ψ, SS.IsAmplitudes code_5149 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5149 code_5149_ok (by decide) (by decide)

/-- Catalogue code #5150: ((6,2,2)), m=12, a=[4, 5, 6, 7, 9, 10], S=[0, 1]. -/
def code_5150 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((-2 : ℚ) / 3), ((-1 : ℚ) / 6)]
theorem code_5150_ok : code_5150.OK := by native_decide
/-- Code #5150 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5150_qec :
    ∃ ψ, SS.IsAmplitudes code_5150 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5150 code_5150_ok (by decide) (by decide)

/-- Catalogue code #5151: ((6,2,2)), m=12, a=[4, 5, 6, 7, 9, 11], S=[0, 2]. -/
def code_5151 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5151_ok : code_5151.OK := by native_decide
/-- Code #5151 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5151_qec :
    ∃ ψ, SS.IsAmplitudes code_5151 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5151 code_5151_ok (by decide) (by decide)

/-- Catalogue code #5152: ((6,2,2)), m=12, a=[4, 5, 6, 8, 9, 9], S=[0, 10]. -/
def code_5152 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ)]
theorem code_5152_ok : code_5152.OK := by native_decide
/-- Code #5152 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5152_qec :
    ∃ ψ, SS.IsAmplitudes code_5152 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5152 code_5152_ok (by decide) (by decide)

/-- Catalogue code #5153: ((6,2,2)), m=12, a=[4, 5, 6, 8, 9, 10], S=[0, 1]. -/
def code_5153 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 2)]
theorem code_5153_ok : code_5153.OK := by native_decide
/-- Code #5153 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5153_qec :
    ∃ ψ, SS.IsAmplitudes code_5153 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5153 code_5153_ok (by decide) (by decide)

/-- Catalogue code #5154: ((6,2,2)), m=12, a=[4, 5, 6, 8, 9, 11], S=[0, 2]. -/
def code_5154 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]
theorem code_5154_ok : code_5154.OK := by native_decide
/-- Code #5154 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5154_qec :
    ∃ ψ, SS.IsAmplitudes code_5154 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5154 code_5154_ok (by decide) (by decide)

/-- Catalogue code #5155: ((6,2,2)), m=12, a=[4, 5, 6, 9, 9, 10], S=[0, 11]. -/
def code_5155 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]
theorem code_5155_ok : code_5155.OK := by native_decide
/-- Code #5155 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5155_qec :
    ∃ ψ, SS.IsAmplitudes code_5155 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5155 code_5155_ok (by decide) (by decide)

/-- Catalogue code #5156: ((6,2,2)), m=12, a=[4, 5, 6, 9, 11, 11], S=[0, 2]. -/
def code_5156 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5156_ok : code_5156.OK := by native_decide
/-- Code #5156 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5156_qec :
    ∃ ψ, SS.IsAmplitudes code_5156 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5156 code_5156_ok (by decide) (by decide)

/-- Catalogue code #5157: ((6,2,2)), m=12, a=[4, 5, 7, 7, 9, 9], S=[0, 11]. -/
def code_5157 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5157_ok : code_5157.OK := by native_decide
/-- Code #5157 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5157_qec :
    ∃ ψ, SS.IsAmplitudes code_5157 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5157 code_5157_ok (by decide) (by decide)

/-- Catalogue code #5158: ((6,2,2)), m=12, a=[4, 5, 7, 8, 9, 10], S=[0, 1]. -/
def code_5158 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2)]
theorem code_5158_ok : code_5158.OK := by native_decide
/-- Code #5158 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5158_qec :
    ∃ ψ, SS.IsAmplitudes code_5158 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5158 code_5158_ok (by decide) (by decide)

/-- Catalogue code #5159: ((6,2,2)), m=12, a=[4, 5, 8, 9, 9, 10], S=[0, 11]. -/
def code_5159 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2)]
theorem code_5159_ok : code_5159.OK := by native_decide
/-- Code #5159 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5159_qec :
    ∃ ψ, SS.IsAmplitudes code_5159 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5159 code_5159_ok (by decide) (by decide)

/-- Catalogue code #5160: ((6,2,2)), m=12, a=[4, 6, 6, 7, 8, 9], S=[0, 2]. -/
def code_5160 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5160_ok : code_5160.OK := by native_decide
/-- Code #5160 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5160_qec :
    ∃ ψ, SS.IsAmplitudes code_5160 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5160 code_5160_ok (by decide) (by decide)

/-- Catalogue code #5161: ((6,2,2)), m=12, a=[4, 6, 7, 7, 9, 9], S=[0, 2]. -/
def code_5161 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5161_ok : code_5161.OK := by native_decide
/-- Code #5161 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5161_qec :
    ∃ ψ, SS.IsAmplitudes code_5161 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5161 code_5161_ok (by decide) (by decide)

/-- Catalogue code #5162: ((6,2,2)), m=12, a=[4, 6, 7, 7, 9, 10], S=[0, 11]. -/
def code_5162 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 6)]
theorem code_5162_ok : code_5162.OK := by native_decide
/-- Code #5162 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5162_qec :
    ∃ ψ, SS.IsAmplitudes code_5162 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5162 code_5162_ok (by decide) (by decide)

/-- Catalogue code #5163: ((6,2,2)), m=12, a=[4, 6, 7, 7, 10, 10], S=[0, 11]. -/
def code_5163 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((2 : ℚ) / 3)]
theorem code_5163_ok : code_5163.OK := by native_decide
/-- Code #5163 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5163_qec :
    ∃ ψ, SS.IsAmplitudes code_5163 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5163 code_5163_ok (by decide) (by decide)

/-- Catalogue code #5164: ((6,2,2)), m=12, a=[4, 6, 7, 8, 11, 11], S=[0, 2]. -/
def code_5164 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_5164_ok : code_5164.OK := by native_decide
/-- Code #5164 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5164_qec :
    ∃ ψ, SS.IsAmplitudes code_5164 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5164 code_5164_ok (by decide) (by decide)

/-- Catalogue code #5165: ((6,2,2)), m=12, a=[4, 6, 7, 9, 9, 10], S=[0, 1]. -/
def code_5165 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3)]
theorem code_5165_ok : code_5165.OK := by native_decide
/-- Code #5165 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5165_qec :
    ∃ ψ, SS.IsAmplitudes code_5165 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5165 code_5165_ok (by decide) (by decide)

/-- Catalogue code #5166: ((6,2,2)), m=12, a=[4, 6, 7, 9, 10, 10], S=[0, 11]. -/
def code_5166 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ)]
theorem code_5166_ok : code_5166.OK := by native_decide
/-- Code #5166 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5166_qec :
    ∃ ψ, SS.IsAmplitudes code_5166 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5166 code_5166_ok (by decide) (by decide)

/-- Catalogue code #5167: ((6,2,2)), m=12, a=[4, 6, 7, 9, 11, 11], S=[0, 2]. -/
def code_5167 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]
theorem code_5167_ok : code_5167.OK := by native_decide
/-- Code #5167 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5167_qec :
    ∃ ψ, SS.IsAmplitudes code_5167 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5167 code_5167_ok (by decide) (by decide)

/-- Catalogue code #5168: ((6,2,2)), m=12, a=[4, 6, 8, 9, 9, 10], S=[0, 5]. -/
def code_5168 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_5168_ok : code_5168.OK := by native_decide
/-- Code #5168 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5168_qec :
    ∃ ψ, SS.IsAmplitudes code_5168 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5168 code_5168_ok (by decide) (by decide)

/-- Catalogue code #5169: ((6,2,2)), m=12, a=[4, 6, 8, 9, 10, 11], S=[0, 7]. -/
def code_5169 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ)]
theorem code_5169_ok : code_5169.OK := by native_decide
/-- Code #5169 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5169_qec :
    ∃ ψ, SS.IsAmplitudes code_5169 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5169 code_5169_ok (by decide) (by decide)

/-- Catalogue code #5170: ((6,2,2)), m=12, a=[4, 6, 8, 10, 11, 11], S=[0, 5]. -/
def code_5170 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]
theorem code_5170_ok : code_5170.OK := by native_decide
/-- Code #5170 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5170_qec :
    ∃ ψ, SS.IsAmplitudes code_5170 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5170 code_5170_ok (by decide) (by decide)

/-- Catalogue code #5171: ((6,2,2)), m=12, a=[4, 6, 9, 9, 10, 11], S=[0, 5]. -/
def code_5171 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_5171_ok : code_5171.OK := by native_decide
/-- Code #5171 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5171_qec :
    ∃ ψ, SS.IsAmplitudes code_5171 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5171 code_5171_ok (by decide) (by decide)

/-- Catalogue code #5172: ((6,2,2)), m=12, a=[4, 6, 9, 9, 11, 11], S=[0, 10]. -/
def code_5172 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5172_ok : code_5172.OK := by native_decide
/-- Code #5172 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5172_qec :
    ∃ ψ, SS.IsAmplitudes code_5172 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5172 code_5172_ok (by decide) (by decide)

/-- Catalogue code #5173: ((6,2,2)), m=12, a=[4, 6, 9, 10, 10, 11], S=[0, 7]. -/
def code_5173 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), (0 : ℚ)]
theorem code_5173_ok : code_5173.OK := by native_decide
/-- Code #5173 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5173_qec :
    ∃ ψ, SS.IsAmplitudes code_5173 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5173 code_5173_ok (by decide) (by decide)

/-- Catalogue code #5174: ((6,2,2)), m=12, a=[4, 6, 9, 10, 11, 11], S=[0, 5]. -/
def code_5174 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 6)]
theorem code_5174_ok : code_5174.OK := by native_decide
/-- Code #5174 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5174_qec :
    ∃ ψ, SS.IsAmplitudes code_5174 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5174 code_5174_ok (by decide) (by decide)

/-- Catalogue code #5175: ((6,2,2)), m=12, a=[4, 6, 9, 10, 11, 11], S=[0, 7]. -/
def code_5175 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-2 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5175_ok : code_5175.OK := by native_decide
/-- Code #5175 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5175_qec :
    ∃ ψ, SS.IsAmplitudes code_5175 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5175 code_5175_ok (by decide) (by decide)

/-- Catalogue code #5176: ((6,2,2)), m=12, a=[4, 6, 10, 10, 11, 11], S=[0, 7]. -/
def code_5176 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5176_ok : code_5176.OK := by native_decide
/-- Code #5176 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5176_qec :
    ∃ ψ, SS.IsAmplitudes code_5176 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5176 code_5176_ok (by decide) (by decide)

/-- Catalogue code #5177: ((6,2,2)), m=12, a=[4, 7, 7, 7, 9, 9], S=[0, 1]. -/
def code_5177 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5177_ok : code_5177.OK := by native_decide
/-- Code #5177 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5177_qec :
    ∃ ψ, SS.IsAmplitudes code_5177 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5177 code_5177_ok (by decide) (by decide)

/-- Catalogue code #5178: ((6,2,2)), m=12, a=[4, 7, 7, 9, 9, 11], S=[0, 10]. -/
def code_5178 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5178_ok : code_5178.OK := by native_decide
/-- Code #5178 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5178_qec :
    ∃ ψ, SS.IsAmplitudes code_5178 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5178 code_5178_ok (by decide) (by decide)

/-- Catalogue code #5179: ((6,2,2)), m=12, a=[4, 7, 7, 9, 11, 11], S=[0, 10]. -/
def code_5179 : ExampleData 6 12 2 where
  a := ![(4 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_5179_ok : code_5179.OK := by native_decide
/-- Code #5179 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5179_qec :
    ∃ ψ, SS.IsAmplitudes code_5179 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5179 code_5179_ok (by decide) (by decide)

/-- Catalogue code #5180: ((6,2,2)), m=12, a=[5, 5, 5, 9, 11, 11], S=[0, 2]. -/
def code_5180 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((2 : ℚ) / 3), ((2 : ℚ) / 3)]
theorem code_5180_ok : code_5180.OK := by native_decide
/-- Code #5180 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5180_qec :
    ∃ ψ, SS.IsAmplitudes code_5180 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5180 code_5180_ok (by decide) (by decide)

/-- Catalogue code #5181: ((6,2,2)), m=12, a=[5, 5, 6, 7, 9, 9], S=[0, 1]. -/
def code_5181 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5181_ok : code_5181.OK := by native_decide
/-- Code #5181 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5181_qec :
    ∃ ψ, SS.IsAmplitudes code_5181 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5181 code_5181_ok (by decide) (by decide)

/-- Catalogue code #5182: ((6,2,2)), m=12, a=[5, 5, 6, 8, 8, 8], S=[0, 2]. -/
def code_5182 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]
theorem code_5182_ok : code_5182.OK := by native_decide
/-- Code #5182 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5182_qec :
    ∃ ψ, SS.IsAmplitudes code_5182 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5182 code_5182_ok (by decide) (by decide)

/-- Catalogue code #5183: ((6,2,2)), m=12, a=[5, 5, 6, 8, 9, 9], S=[0, 1]. -/
def code_5183 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, true, false, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5183_ok : code_5183.OK := by native_decide
/-- Code #5183 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5183_qec :
    ∃ ψ, SS.IsAmplitudes code_5183 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5183 code_5183_ok (by decide) (by decide)

/-- Catalogue code #5184: ((6,2,2)), m=12, a=[5, 5, 6, 8, 9, 9], S=[0, 2]. -/
def code_5184 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5184_ok : code_5184.OK := by native_decide
/-- Code #5184 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5184_qec :
    ∃ ψ, SS.IsAmplitudes code_5184 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5184 code_5184_ok (by decide) (by decide)

/-- Catalogue code #5185: ((6,2,2)), m=12, a=[5, 5, 6, 8, 9, 10], S=[0, 11]. -/
def code_5185 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((2 : ℚ) / 3), ((1 : ℚ) / 6)]
theorem code_5185_ok : code_5185.OK := by native_decide
/-- Code #5185 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5185_qec :
    ∃ ψ, SS.IsAmplitudes code_5185 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5185 code_5185_ok (by decide) (by decide)

/-- Catalogue code #5186: ((6,2,2)), m=12, a=[5, 5, 6, 8, 9, 11], S=[0, 10]. -/
def code_5186 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]
theorem code_5186_ok : code_5186.OK := by native_decide
/-- Code #5186 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5186_qec :
    ∃ ψ, SS.IsAmplitudes code_5186 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5186 code_5186_ok (by decide) (by decide)

/-- Catalogue code #5187: ((6,2,2)), m=12, a=[5, 5, 6, 8, 10, 10], S=[0, 11]. -/
def code_5187 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2), ((2 : ℚ) / 3)]
theorem code_5187_ok : code_5187.OK := by native_decide
/-- Code #5187 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5187_qec :
    ∃ ψ, SS.IsAmplitudes code_5187 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5187 code_5187_ok (by decide) (by decide)

/-- Catalogue code #5188: ((6,2,2)), m=12, a=[5, 5, 6, 9, 9, 11], S=[0, 10]. -/
def code_5188 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_5188_ok : code_5188.OK := by native_decide
/-- Code #5188 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5188_qec :
    ∃ ψ, SS.IsAmplitudes code_5188 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5188 code_5188_ok (by decide) (by decide)

/-- Catalogue code #5189: ((6,2,2)), m=12, a=[5, 5, 6, 9, 10, 10], S=[0, 1]. -/
def code_5189 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6)]
theorem code_5189_ok : code_5189.OK := by native_decide
/-- Code #5189 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5189_qec :
    ∃ ψ, SS.IsAmplitudes code_5189 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5189 code_5189_ok (by decide) (by decide)

/-- Catalogue code #5190: ((6,2,2)), m=12, a=[5, 5, 7, 8, 9, 9], S=[0, 1]. -/
def code_5190 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5190_ok : code_5190.OK := by native_decide
/-- Code #5190 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5190_qec :
    ∃ ψ, SS.IsAmplitudes code_5190 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5190 code_5190_ok (by decide) (by decide)

/-- Catalogue code #5191: ((6,2,2)), m=12, a=[5, 5, 8, 9, 11, 11], S=[0, 10]. -/
def code_5191 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5191_ok : code_5191.OK := by native_decide
/-- Code #5191 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5191_qec :
    ∃ ψ, SS.IsAmplitudes code_5191 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5191 code_5191_ok (by decide) (by decide)

/-- Catalogue code #5192: ((6,2,2)), m=12, a=[5, 6, 7, 7, 9, 9], S=[0, 11]. -/
def code_5192 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5192_ok : code_5192.OK := by native_decide
/-- Code #5192 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5192_qec :
    ∃ ψ, SS.IsAmplitudes code_5192 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5192 code_5192_ok (by decide) (by decide)

/-- Catalogue code #5193: ((6,2,2)), m=12, a=[5, 6, 7, 8, 8, 10], S=[0, 11]. -/
def code_5193 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5193_ok : code_5193.OK := by native_decide
/-- Code #5193 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5193_qec :
    ∃ ψ, SS.IsAmplitudes code_5193 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5193 code_5193_ok (by decide) (by decide)

/-- Catalogue code #5194: ((6,2,2)), m=12, a=[5, 6, 7, 8, 9, 9], S=[0, 1]. -/
def code_5194 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5194_ok : code_5194.OK := by native_decide
/-- Code #5194 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5194_qec :
    ∃ ψ, SS.IsAmplitudes code_5194 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5194 code_5194_ok (by decide) (by decide)

/-- Catalogue code #5195: ((6,2,2)), m=12, a=[5, 6, 7, 8, 9, 10], S=[0, 1]. -/
def code_5195 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((2 : ℚ) / 3), ((1 : ℚ) / 6)]
theorem code_5195_ok : code_5195.OK := by native_decide
/-- Code #5195 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5195_qec :
    ∃ ψ, SS.IsAmplitudes code_5195 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5195 code_5195_ok (by decide) (by decide)

/-- Catalogue code #5196: ((6,2,2)), m=12, a=[5, 6, 7, 8, 9, 10], S=[0, 11]. -/
def code_5196 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((2 : ℚ) / 3), ((-1 : ℚ) / 2)]
theorem code_5196_ok : code_5196.OK := by native_decide
/-- Code #5196 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5196_qec :
    ∃ ψ, SS.IsAmplitudes code_5196 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5196 code_5196_ok (by decide) (by decide)

/-- Catalogue code #5197: ((6,2,2)), m=12, a=[5, 6, 7, 8, 10, 10], S=[0, 1]. -/
def code_5197 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((2 : ℚ) / 3), ((1 : ℚ) / 2)]
theorem code_5197_ok : code_5197.OK := by native_decide
/-- Code #5197 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5197_qec :
    ∃ ψ, SS.IsAmplitudes code_5197 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5197 code_5197_ok (by decide) (by decide)

/-- Catalogue code #5198: ((6,2,2)), m=12, a=[5, 6, 7, 9, 9, 10], S=[0, 11]. -/
def code_5198 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]
theorem code_5198_ok : code_5198.OK := by native_decide
/-- Code #5198 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5198_qec :
    ∃ ψ, SS.IsAmplitudes code_5198 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5198 code_5198_ok (by decide) (by decide)

/-- Catalogue code #5199: ((6,2,2)), m=12, a=[5, 6, 7, 9, 9, 11], S=[0, 10]. -/
def code_5199 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5199_ok : code_5199.OK := by native_decide
/-- Code #5199 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5199_qec :
    ∃ ψ, SS.IsAmplitudes code_5199 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5199 code_5199_ok (by decide) (by decide)

/-- Catalogue code #5200: ((6,2,2)), m=12, a=[5, 6, 8, 8, 9, 9], S=[0, 2]. -/
def code_5200 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ)]
theorem code_5200_ok : code_5200.OK := by native_decide
/-- Code #5200 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5200_qec :
    ∃ ψ, SS.IsAmplitudes code_5200 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5200 code_5200_ok (by decide) (by decide)

/-- Catalogue code #5201: ((6,2,2)), m=12, a=[5, 6, 8, 8, 9, 9], S=[0, 11]. -/
def code_5201 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 2), ((1 : ℚ) / 6)]
theorem code_5201_ok : code_5201.OK := by native_decide
/-- Code #5201 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5201_qec :
    ∃ ψ, SS.IsAmplitudes code_5201 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5201 code_5201_ok (by decide) (by decide)

/-- Catalogue code #5202: ((6,2,2)), m=12, a=[5, 6, 8, 8, 9, 10], S=[0, 11]. -/
def code_5202 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (11 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 6)]
theorem code_5202_ok : code_5202.OK := by native_decide
/-- Code #5202 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5202_qec :
    ∃ ψ, SS.IsAmplitudes code_5202 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5202 code_5202_ok (by decide) (by decide)

/-- Catalogue code #5203: ((6,2,2)), m=12, a=[5, 6, 8, 8, 11, 11], S=[0, 10]. -/
def code_5203 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]
theorem code_5203_ok : code_5203.OK := by native_decide
/-- Code #5203 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5203_qec :
    ∃ ψ, SS.IsAmplitudes code_5203 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5203 code_5203_ok (by decide) (by decide)

/-- Catalogue code #5204: ((6,2,2)), m=12, a=[5, 6, 8, 9, 10, 10], S=[0, 1]. -/
def code_5204 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 2)]
theorem code_5204_ok : code_5204.OK := by native_decide
/-- Code #5204 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5204_qec :
    ∃ ψ, SS.IsAmplitudes code_5204 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5204 code_5204_ok (by decide) (by decide)

/-- Catalogue code #5205: ((6,2,2)), m=12, a=[5, 6, 9, 9, 11, 11], S=[0, 10]. -/
def code_5205 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_5205_ok : code_5205.OK := by native_decide
/-- Code #5205 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5205_qec :
    ∃ ψ, SS.IsAmplitudes code_5205 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5205 code_5205_ok (by decide) (by decide)

/-- Catalogue code #5206: ((6,2,2)), m=12, a=[5, 7, 8, 11, 11, 11], S=[0, 2]. -/
def code_5206 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ)]
theorem code_5206_ok : code_5206.OK := by native_decide
/-- Code #5206 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5206_qec :
    ∃ ψ, SS.IsAmplitudes code_5206 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5206 code_5206_ok (by decide) (by decide)

/-- Catalogue code #5207: ((6,2,2)), m=12, a=[5, 7, 9, 9, 11, 11], S=[0, 2]. -/
def code_5207 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5207_ok : code_5207.OK := by native_decide
/-- Code #5207 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5207_qec :
    ∃ ψ, SS.IsAmplitudes code_5207 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5207 code_5207_ok (by decide) (by decide)

/-- Catalogue code #5208: ((6,2,2)), m=12, a=[5, 8, 9, 11, 11, 11], S=[0, 2]. -/
def code_5208 : ExampleData 6 12 2 where
  a := ![(5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_5208_ok : code_5208.OK := by native_decide
/-- Code #5208 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5208_qec :
    ∃ ψ, SS.IsAmplitudes code_5208 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5208 code_5208_ok (by decide) (by decide)

/-- Catalogue code #5209: ((6,2,2)), m=12, a=[6, 6, 8, 8, 11, 11], S=[0, 10]. -/
def code_5209 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_5209_ok : code_5209.OK := by native_decide
/-- Code #5209 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5209_qec :
    ∃ ψ, SS.IsAmplitudes code_5209 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5209 code_5209_ok (by decide) (by decide)

/-- Catalogue code #5210: ((6,2,2)), m=12, a=[6, 7, 7, 7, 9, 9], S=[0, 1]. -/
def code_5210 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5210_ok : code_5210.OK := by native_decide
/-- Code #5210 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5210_qec :
    ∃ ψ, SS.IsAmplitudes code_5210 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5210 code_5210_ok (by decide) (by decide)

/-- Catalogue code #5211: ((6,2,2)), m=12, a=[6, 7, 7, 8, 8, 10], S=[0, 1]. -/
def code_5211 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5211_ok : code_5211.OK := by native_decide
/-- Code #5211 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5211_qec :
    ∃ ψ, SS.IsAmplitudes code_5211 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5211 code_5211_ok (by decide) (by decide)

/-- Catalogue code #5212: ((6,2,2)), m=12, a=[6, 7, 7, 8, 8, 11], S=[0, 2]. -/
def code_5212 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 3)]
theorem code_5212_ok : code_5212.OK := by native_decide
/-- Code #5212 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5212_qec :
    ∃ ψ, SS.IsAmplitudes code_5212 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5212 code_5212_ok (by decide) (by decide)

/-- Catalogue code #5213: ((6,2,2)), m=12, a=[6, 7, 7, 8, 9, 9], S=[0, 2]. -/
def code_5213 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5213_ok : code_5213.OK := by native_decide
/-- Code #5213 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5213_qec :
    ∃ ψ, SS.IsAmplitudes code_5213 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5213 code_5213_ok (by decide) (by decide)

/-- Catalogue code #5214: ((6,2,2)), m=12, a=[6, 7, 7, 9, 9, 10], S=[0, 1]. -/
def code_5214 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]
theorem code_5214_ok : code_5214.OK := by native_decide
/-- Code #5214 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5214_qec :
    ∃ ψ, SS.IsAmplitudes code_5214 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5214 code_5214_ok (by decide) (by decide)

/-- Catalogue code #5215: ((6,2,2)), m=12, a=[6, 7, 8, 8, 9, 9], S=[0, 1]. -/
def code_5215 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 2)]
theorem code_5215_ok : code_5215.OK := by native_decide
/-- Code #5215 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5215_qec :
    ∃ ψ, SS.IsAmplitudes code_5215 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5215 code_5215_ok (by decide) (by decide)

/-- Catalogue code #5216: ((6,2,2)), m=12, a=[6, 7, 9, 9, 11, 11], S=[0, 10]. -/
def code_5216 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5216_ok : code_5216.OK := by native_decide
/-- Code #5216 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5216_qec :
    ∃ ψ, SS.IsAmplitudes code_5216 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5216 code_5216_ok (by decide) (by decide)

/-- Catalogue code #5217: ((6,2,2)), m=12, a=[6, 8, 8, 9, 9, 10], S=[0, 1]. -/
def code_5217 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]
theorem code_5217_ok : code_5217.OK := by native_decide
/-- Code #5217 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5217_qec :
    ∃ ψ, SS.IsAmplitudes code_5217 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5217 code_5217_ok (by decide) (by decide)

/-- Catalogue code #5218: ((6,2,2)), m=12, a=[6, 8, 8, 9, 9, 11], S=[0, 5]. -/
def code_5218 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3)]
theorem code_5218_ok : code_5218.OK := by native_decide
/-- Code #5218 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5218_qec :
    ∃ ψ, SS.IsAmplitudes code_5218 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5218 code_5218_ok (by decide) (by decide)

/-- Catalogue code #5219: ((6,2,2)), m=12, a=[6, 8, 8, 9, 10, 11], S=[0, 5]. -/
def code_5219 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ)]
theorem code_5219_ok : code_5219.OK := by native_decide
/-- Code #5219 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5219_qec :
    ∃ ψ, SS.IsAmplitudes code_5219 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5219 code_5219_ok (by decide) (by decide)

/-- Catalogue code #5220: ((6,2,2)), m=12, a=[6, 8, 8, 9, 11, 11], S=[0, 7]. -/
def code_5220 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 3)]
theorem code_5220_ok : code_5220.OK := by native_decide
/-- Code #5220 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5220_qec :
    ∃ ψ, SS.IsAmplitudes code_5220 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5220 code_5220_ok (by decide) (by decide)

/-- Catalogue code #5221: ((6,2,2)), m=12, a=[6, 8, 9, 9, 11, 11], S=[0, 5]. -/
def code_5221 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5221_ok : code_5221.OK := by native_decide
/-- Code #5221 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5221_qec :
    ∃ ψ, SS.IsAmplitudes code_5221 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5221 code_5221_ok (by decide) (by decide)

/-- Catalogue code #5222: ((6,2,2)), m=12, a=[6, 8, 9, 10, 10, 11], S=[0, 7]. -/
def code_5222 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((5 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ)]
theorem code_5222_ok : code_5222.OK := by native_decide
/-- Code #5222 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5222_qec :
    ∃ ψ, SS.IsAmplitudes code_5222 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5222 code_5222_ok (by decide) (by decide)

/-- Catalogue code #5223: ((6,2,2)), m=12, a=[6, 8, 9, 10, 11, 11], S=[0, 5]. -/
def code_5223 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]
theorem code_5223_ok : code_5223.OK := by native_decide
/-- Code #5223 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5223_qec :
    ∃ ψ, SS.IsAmplitudes code_5223 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5223 code_5223_ok (by decide) (by decide)

/-- Catalogue code #5224: ((6,2,2)), m=12, a=[6, 8, 10, 10, 11, 11], S=[0, 5]. -/
def code_5224 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5224_ok : code_5224.OK := by native_decide
/-- Code #5224 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5224_qec :
    ∃ ψ, SS.IsAmplitudes code_5224 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5224 code_5224_ok (by decide) (by decide)

/-- Catalogue code #5225: ((6,2,2)), m=12, a=[6, 9, 9, 11, 11, 11], S=[0, 5]. -/
def code_5225 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5225_ok : code_5225.OK := by native_decide
/-- Code #5225 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5225_qec :
    ∃ ψ, SS.IsAmplitudes code_5225 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5225 code_5225_ok (by decide) (by decide)

/-- Catalogue code #5226: ((6,2,2)), m=12, a=[6, 10, 10, 10, 11, 11], S=[0, 5]. -/
def code_5226 : ExampleData 6 12 2 where
  a := ![(6 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ), (0 : ℚ)]
theorem code_5226_ok : code_5226.OK := by native_decide
/-- Code #5226 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5226_qec :
    ∃ ψ, SS.IsAmplitudes code_5226 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5226 code_5226_ok (by decide) (by decide)

/-- Catalogue code #5227: ((6,2,2)), m=12, a=[7, 7, 8, 9, 9, 10], S=[0, 1]. -/
def code_5227 : ExampleData 6 12 2 where
  a := ![(7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5227_ok : code_5227.OK := by native_decide
/-- Code #5227 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5227_qec :
    ∃ ψ, SS.IsAmplitudes code_5227 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5227 code_5227_ok (by decide) (by decide)

/-- Catalogue code #5228: ((6,2,2)), m=12, a=[7, 7, 8, 9, 11, 11], S=[0, 2]. -/
def code_5228 : ExampleData 6 12 2 where
  a := ![(7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5228_ok : code_5228.OK := by native_decide
/-- Code #5228 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5228_qec :
    ∃ ψ, SS.IsAmplitudes code_5228 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5228 code_5228_ok (by decide) (by decide)

/-- Catalogue code #5229: ((6,2,2)), m=12, a=[7, 7, 8, 9, 11, 11], S=[0, 10]. -/
def code_5229 : ExampleData 6 12 2 where
  a := ![(7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_5229_ok : code_5229.OK := by native_decide
/-- Code #5229 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5229_qec :
    ∃ ψ, SS.IsAmplitudes code_5229 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5229 code_5229_ok (by decide) (by decide)

/-- Catalogue code #5230: ((6,2,2)), m=12, a=[7, 7, 8, 11, 11, 11], S=[0, 10]. -/
def code_5230 : ExampleData 6 12 2 where
  a := ![(7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_5230_ok : code_5230.OK := by native_decide
/-- Code #5230 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5230_qec :
    ∃ ψ, SS.IsAmplitudes code_5230 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5230 code_5230_ok (by decide) (by decide)

/-- Catalogue code #5231: ((6,2,2)), m=12, a=[8, 8, 9, 9, 10, 10], S=[0, 1]. -/
def code_5231 : ExampleData 6 12 2 where
  a := ![(8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (1 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_5231_ok : code_5231.OK := by native_decide
/-- Code #5231 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5231_qec :
    ∃ ψ, SS.IsAmplitudes code_5231 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5231 code_5231_ok (by decide) (by decide)

/-- Catalogue code #5232: ((6,2,2)), m=12, a=[8, 8, 9, 9, 10, 10], S=[0, 5]. -/
def code_5232 : ExampleData 6 12 2 where
  a := ![(8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((5 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5232_ok : code_5232.OK := by native_decide
/-- Code #5232 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5232_qec :
    ∃ ψ, SS.IsAmplitudes code_5232 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5232 code_5232_ok (by decide) (by decide)

/-- Catalogue code #5233: ((6,2,2)), m=12, a=[8, 8, 9, 9, 10, 11], S=[0, 5]. -/
def code_5233 : ExampleData 6 12 2 where
  a := ![(8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3)]
theorem code_5233_ok : code_5233.OK := by native_decide
/-- Code #5233 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5233_qec :
    ∃ ψ, SS.IsAmplitudes code_5233 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5233 code_5233_ok (by decide) (by decide)

/-- Catalogue code #5234: ((6,2,2)), m=12, a=[8, 8, 9, 9, 11, 11], S=[0, 2]. -/
def code_5234 : ExampleData 6 12 2 where
  a := ![(8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_5234_ok : code_5234.OK := by native_decide
/-- Code #5234 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5234_qec :
    ∃ ψ, SS.IsAmplitudes code_5234 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5234 code_5234_ok (by decide) (by decide)

/-- Catalogue code #5235: ((6,2,2)), m=12, a=[8, 8, 9, 10, 10, 11], S=[0, 5]. -/
def code_5235 : ExampleData 6 12 2 where
  a := ![(8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((5 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ)]
theorem code_5235_ok : code_5235.OK := by native_decide
/-- Code #5235 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5235_qec :
    ∃ ψ, SS.IsAmplitudes code_5235 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5235 code_5235_ok (by decide) (by decide)

/-- Catalogue code #5236: ((6,2,2)), m=12, a=[8, 9, 9, 10, 10, 11], S=[0, 5]. -/
def code_5236 : ExampleData 6 12 2 where
  a := ![(8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((5 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_5236_ok : code_5236.OK := by native_decide
/-- Code #5236 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5236_qec :
    ∃ ψ, SS.IsAmplitudes code_5236 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5236 code_5236_ok (by decide) (by decide)

/-- Catalogue code #5237: ((6,2,2)), m=12, a=[8, 9, 9, 10, 11, 11], S=[0, 5]. -/
def code_5237 : ExampleData 6 12 2 where
  a := ![(8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_5237_ok : code_5237.OK := by native_decide
/-- Code #5237 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5237_qec :
    ∃ ψ, SS.IsAmplitudes code_5237 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5237 code_5237_ok (by decide) (by decide)

/-- Catalogue code #5238: ((6,2,2)), m=12, a=[8, 9, 9, 11, 11, 11], S=[0, 5]. -/
def code_5238 : ExampleData 6 12 2 where
  a := ![(8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3)]
theorem code_5238_ok : code_5238.OK := by native_decide
/-- Code #5238 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5238_qec :
    ∃ ψ, SS.IsAmplitudes code_5238 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5238 code_5238_ok (by decide) (by decide)

/-- Catalogue code #5239: ((6,2,2)), m=12, a=[8, 9, 10, 10, 11, 11], S=[0, 5]. -/
def code_5239 : ExampleData 6 12 2 where
  a := ![(8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((1 : ℚ) / 3)]
theorem code_5239_ok : code_5239.OK := by native_decide
/-- Code #5239 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5239_qec :
    ∃ ψ, SS.IsAmplitudes code_5239 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5239 code_5239_ok (by decide) (by decide)

/-- Catalogue code #5240: ((6,2,2)), m=12, a=[8, 9, 10, 11, 11, 11], S=[0, 7]. -/
def code_5240 : ExampleData 6 12 2 where
  a := ![(8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5240_ok : code_5240.OK := by native_decide
/-- Code #5240 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5240_qec :
    ∃ ψ, SS.IsAmplitudes code_5240 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5240 code_5240_ok (by decide) (by decide)

/-- Catalogue code #5241: ((6,2,2)), m=12, a=[9, 9, 10, 10, 11, 11], S=[0, 7]. -/
def code_5241 : ExampleData 6 12 2 where
  a := ![(9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_5241_ok : code_5241.OK := by native_decide
/-- Code #5241 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5241_qec :
    ∃ ψ, SS.IsAmplitudes code_5241 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5241 code_5241_ok (by decide) (by decide)

/-- Catalogue code #5242: ((6,2,2)), m=13, a=[1, 1, 1, 2, 5, 5], S=[0, 10]. -/
def code_5242 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_5242_ok : code_5242.OK := by native_decide
/-- Code #5242 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5242_qec :
    ∃ ψ, SS.IsAmplitudes code_5242 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5242 code_5242_ok (by decide) (by decide)

/-- Catalogue code #5243: ((6,2,2)), m=13, a=[1, 1, 1, 2, 5, 8], S=[0, 10]. -/
def code_5243 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_5243_ok : code_5243.OK := by native_decide
/-- Code #5243 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5243_qec :
    ∃ ψ, SS.IsAmplitudes code_5243 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5243 code_5243_ok (by decide) (by decide)

/-- Catalogue code #5244: ((6,2,2)), m=13, a=[1, 1, 1, 3, 3, 4], S=[0, 6]. -/
def code_5244 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5244_ok : code_5244.OK := by native_decide
/-- Code #5244 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5244_qec :
    ∃ ψ, SS.IsAmplitudes code_5244 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5244 code_5244_ok (by decide) (by decide)

/-- Catalogue code #5245: ((6,2,2)), m=13, a=[1, 1, 1, 3, 3, 5], S=[0, 6]. -/
def code_5245 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5245_ok : code_5245.OK := by native_decide
/-- Code #5245 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5245_qec :
    ∃ ψ, SS.IsAmplitudes code_5245 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5245 code_5245_ok (by decide) (by decide)

/-- Catalogue code #5246: ((6,2,2)), m=13, a=[1, 1, 1, 3, 3, 7], S=[0, 8]. -/
def code_5246 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5246_ok : code_5246.OK := by native_decide
/-- Code #5246 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5246_qec :
    ∃ ψ, SS.IsAmplitudes code_5246 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5246 code_5246_ok (by decide) (by decide)

/-- Catalogue code #5247: ((6,2,2)), m=13, a=[1, 1, 1, 3, 5, 5], S=[0, 6]. -/
def code_5247 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5247_ok : code_5247.OK := by native_decide
/-- Code #5247 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5247_qec :
    ∃ ψ, SS.IsAmplitudes code_5247 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5247 code_5247_ok (by decide) (by decide)

/-- Catalogue code #5248: ((6,2,2)), m=13, a=[1, 1, 1, 3, 5, 5], S=[0, 11]. -/
def code_5248 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-9 : ℚ) / 13), ((-9 : ℚ) / 13)]
theorem code_5248_ok : code_5248.OK := by native_decide
/-- Code #5248 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5248_qec :
    ∃ ψ, SS.IsAmplitudes code_5248 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5248 code_5248_ok (by decide) (by decide)

/-- Catalogue code #5249: ((6,2,2)), m=13, a=[1, 1, 1, 3, 7, 10], S=[0, 5]. -/
def code_5249 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5249_ok : code_5249.OK := by native_decide
/-- Code #5249 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5249_qec :
    ∃ ψ, SS.IsAmplitudes code_5249 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5249 code_5249_ok (by decide) (by decide)

/-- Catalogue code #5250: ((6,2,2)), m=13, a=[1, 1, 1, 3, 8, 8], S=[0, 6]. -/
def code_5250 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5250_ok : code_5250.OK := by native_decide
/-- Code #5250 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5250_qec :
    ∃ ψ, SS.IsAmplitudes code_5250 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5250 code_5250_ok (by decide) (by decide)

/-- Catalogue code #5251: ((6,2,2)), m=13, a=[1, 1, 1, 3, 8, 10], S=[0, 6]. -/
def code_5251 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5251_ok : code_5251.OK := by native_decide
/-- Code #5251 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5251_qec :
    ∃ ψ, SS.IsAmplitudes code_5251 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5251 code_5251_ok (by decide) (by decide)

/-- Catalogue code #5252: ((6,2,2)), m=13, a=[1, 1, 1, 3, 9, 10], S=[0, 6]. -/
def code_5252 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5252_ok : code_5252.OK := by native_decide
/-- Code #5252 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5252_qec :
    ∃ ψ, SS.IsAmplitudes code_5252 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5252 code_5252_ok (by decide) (by decide)

/-- Catalogue code #5253: ((6,2,2)), m=13, a=[1, 1, 1, 4, 6, 6], S=[0, 3]. -/
def code_5253 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5253_ok : code_5253.OK := by native_decide
/-- Code #5253 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5253_qec :
    ∃ ψ, SS.IsAmplitudes code_5253 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5253 code_5253_ok (by decide) (by decide)

/-- Catalogue code #5254: ((6,2,2)), m=13, a=[1, 1, 1, 4, 10, 10], S=[0, 7]. -/
def code_5254 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5254_ok : code_5254.OK := by native_decide
/-- Code #5254 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5254_qec :
    ∃ ψ, SS.IsAmplitudes code_5254 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5254 code_5254_ok (by decide) (by decide)

/-- Catalogue code #5255: ((6,2,2)), m=13, a=[1, 1, 1, 5, 5, 5], S=[0, 2]. -/
def code_5255 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5255_ok : code_5255.OK := by native_decide
/-- Code #5255 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5255_qec :
    ∃ ψ, SS.IsAmplitudes code_5255 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5255 code_5255_ok (by decide) (by decide)

/-- Catalogue code #5256: ((6,2,2)), m=13, a=[1, 1, 1, 5, 5, 5], S=[0, 3]. -/
def code_5256 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5256_ok : code_5256.OK := by native_decide
/-- Code #5256 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5256_qec :
    ∃ ψ, SS.IsAmplitudes code_5256 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5256 code_5256_ok (by decide) (by decide)

/-- Catalogue code #5257: ((6,2,2)), m=13, a=[1, 1, 1, 5, 5, 6], S=[0, 3]. -/
def code_5257 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5257_ok : code_5257.OK := by native_decide
/-- Code #5257 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5257_qec :
    ∃ ψ, SS.IsAmplitudes code_5257 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5257 code_5257_ok (by decide) (by decide)

/-- Catalogue code #5258: ((6,2,2)), m=13, a=[1, 1, 1, 5, 5, 7], S=[0, 10]. -/
def code_5258 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5258_ok : code_5258.OK := by native_decide
/-- Code #5258 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5258_qec :
    ∃ ψ, SS.IsAmplitudes code_5258 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5258 code_5258_ok (by decide) (by decide)

/-- Catalogue code #5259: ((6,2,2)), m=13, a=[1, 1, 1, 5, 5, 10], S=[0, 2]. -/
def code_5259 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5259_ok : code_5259.OK := by native_decide
/-- Code #5259 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5259_qec :
    ∃ ψ, SS.IsAmplitudes code_5259 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5259 code_5259_ok (by decide) (by decide)

/-- Catalogue code #5260: ((6,2,2)), m=13, a=[1, 1, 1, 5, 5, 10], S=[0, 7]. -/
def code_5260 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_5260_ok : code_5260.OK := by native_decide
/-- Code #5260 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5260_qec :
    ∃ ψ, SS.IsAmplitudes code_5260 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5260 code_5260_ok (by decide) (by decide)

/-- Catalogue code #5261: ((6,2,2)), m=13, a=[1, 1, 1, 5, 5, 11], S=[0, 3]. -/
def code_5261 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5261_ok : code_5261.OK := by native_decide
/-- Code #5261 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5261_qec :
    ∃ ψ, SS.IsAmplitudes code_5261 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5261 code_5261_ok (by decide) (by decide)

/-- Catalogue code #5262: ((6,2,2)), m=13, a=[1, 1, 1, 5, 10, 10], S=[0, 7]. -/
def code_5262 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5262_ok : code_5262.OK := by native_decide
/-- Code #5262 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5262_qec :
    ∃ ψ, SS.IsAmplitudes code_5262 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5262 code_5262_ok (by decide) (by decide)

/-- Catalogue code #5263: ((6,2,2)), m=13, a=[1, 1, 1, 6, 10, 10], S=[0, 8]. -/
def code_5263 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5263_ok : code_5263.OK := by native_decide
/-- Code #5263 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5263_qec :
    ∃ ψ, SS.IsAmplitudes code_5263 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5263 code_5263_ok (by decide) (by decide)

/-- Catalogue code #5264: ((6,2,2)), m=13, a=[1, 1, 1, 7, 7, 9], S=[0, 3]. -/
def code_5264 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5264_ok : code_5264.OK := by native_decide
/-- Code #5264 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5264_qec :
    ∃ ψ, SS.IsAmplitudes code_5264 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5264 code_5264_ok (by decide) (by decide)

/-- Catalogue code #5265: ((6,2,2)), m=13, a=[1, 1, 1, 7, 8, 8], S=[0, 3]. -/
def code_5265 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5265_ok : code_5265.OK := by native_decide
/-- Code #5265 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5265_qec :
    ∃ ψ, SS.IsAmplitudes code_5265 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5265 code_5265_ok (by decide) (by decide)

/-- Catalogue code #5266: ((6,2,2)), m=13, a=[1, 1, 1, 8, 8, 10], S=[0, 6]. -/
def code_5266 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-11 : ℚ) / 13)]
theorem code_5266_ok : code_5266.OK := by native_decide
/-- Code #5266 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5266_qec :
    ∃ ψ, SS.IsAmplitudes code_5266 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5266 code_5266_ok (by decide) (by decide)

/-- Catalogue code #5267: ((6,2,2)), m=13, a=[1, 1, 2, 2, 2, 5], S=[0, 6]. -/
def code_5267 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5267_ok : code_5267.OK := by native_decide
/-- Code #5267 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5267_qec :
    ∃ ψ, SS.IsAmplitudes code_5267 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5267 code_5267_ok (by decide) (by decide)

/-- Catalogue code #5268: ((6,2,2)), m=13, a=[1, 1, 2, 2, 3, 4], S=[0, 5]. -/
def code_5268 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5268_ok : code_5268.OK := by native_decide
/-- Code #5268 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5268_qec :
    ∃ ψ, SS.IsAmplitudes code_5268 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5268 code_5268_ok (by decide) (by decide)

/-- Catalogue code #5269: ((6,2,2)), m=13, a=[1, 1, 2, 2, 3, 4], S=[0, 6]. -/
def code_5269 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5269_ok : code_5269.OK := by native_decide
/-- Code #5269 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5269_qec :
    ∃ ψ, SS.IsAmplitudes code_5269 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5269 code_5269_ok (by decide) (by decide)

/-- Catalogue code #5270: ((6,2,2)), m=13, a=[1, 1, 2, 2, 3, 4], S=[0, 7]. -/
def code_5270 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5270_ok : code_5270.OK := by native_decide
/-- Code #5270 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5270_qec :
    ∃ ψ, SS.IsAmplitudes code_5270 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5270 code_5270_ok (by decide) (by decide)

/-- Catalogue code #5271: ((6,2,2)), m=13, a=[1, 1, 2, 2, 3, 6], S=[0, 9]. -/
def code_5271 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_5271_ok : code_5271.OK := by native_decide
/-- Code #5271 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5271_qec :
    ∃ ψ, SS.IsAmplitudes code_5271 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5271 code_5271_ok (by decide) (by decide)

/-- Catalogue code #5272: ((6,2,2)), m=13, a=[1, 1, 2, 2, 4, 4], S=[0, 6]. -/
def code_5272 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5272_ok : code_5272.OK := by native_decide
/-- Code #5272 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5272_qec :
    ∃ ψ, SS.IsAmplitudes code_5272 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5272 code_5272_ok (by decide) (by decide)

/-- Catalogue code #5273: ((6,2,2)), m=13, a=[1, 1, 2, 2, 4, 4], S=[0, 8]. -/
def code_5273 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5273_ok : code_5273.OK := by native_decide
/-- Code #5273 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5273_qec :
    ∃ ψ, SS.IsAmplitudes code_5273 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5273 code_5273_ok (by decide) (by decide)

/-- Catalogue code #5274: ((6,2,2)), m=13, a=[1, 1, 2, 2, 4, 5], S=[0, 6]. -/
def code_5274 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5274_ok : code_5274.OK := by native_decide
/-- Code #5274 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5274_qec :
    ∃ ψ, SS.IsAmplitudes code_5274 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5274 code_5274_ok (by decide) (by decide)

/-- Catalogue code #5275: ((6,2,2)), m=13, a=[1, 1, 2, 2, 4, 5], S=[0, 10]. -/
def code_5275 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_5275_ok : code_5275.OK := by native_decide
/-- Code #5275 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5275_qec :
    ∃ ψ, SS.IsAmplitudes code_5275 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5275 code_5275_ok (by decide) (by decide)

/-- Catalogue code #5276: ((6,2,2)), m=13, a=[1, 1, 2, 2, 4, 6], S=[0, 10]. -/
def code_5276 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_5276_ok : code_5276.OK := by native_decide
/-- Code #5276 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5276_qec :
    ∃ ψ, SS.IsAmplitudes code_5276 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5276 code_5276_ok (by decide) (by decide)

/-- Catalogue code #5277: ((6,2,2)), m=13, a=[1, 1, 2, 2, 4, 7], S=[0, 8]. -/
def code_5277 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5277_ok : code_5277.OK := by native_decide
/-- Code #5277 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5277_qec :
    ∃ ψ, SS.IsAmplitudes code_5277 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5277 code_5277_ok (by decide) (by decide)

/-- Catalogue code #5278: ((6,2,2)), m=13, a=[1, 1, 2, 2, 4, 7], S=[0, 10]. -/
def code_5278 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_5278_ok : code_5278.OK := by native_decide
/-- Code #5278 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5278_qec :
    ∃ ψ, SS.IsAmplitudes code_5278 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5278 code_5278_ok (by decide) (by decide)

/-- Catalogue code #5279: ((6,2,2)), m=13, a=[1, 1, 2, 2, 4, 8], S=[0, 10]. -/
def code_5279 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_5279_ok : code_5279.OK := by native_decide
/-- Code #5279 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5279_qec :
    ∃ ψ, SS.IsAmplitudes code_5279 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5279 code_5279_ok (by decide) (by decide)

/-- Catalogue code #5280: ((6,2,2)), m=13, a=[1, 1, 2, 2, 5, 7], S=[0, 9]. -/
def code_5280 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_5280_ok : code_5280.OK := by native_decide
/-- Code #5280 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5280_qec :
    ∃ ψ, SS.IsAmplitudes code_5280 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5280 code_5280_ok (by decide) (by decide)

/-- Catalogue code #5281: ((6,2,2)), m=13, a=[1, 1, 2, 2, 5, 8], S=[0, 10]. -/
def code_5281 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_5281_ok : code_5281.OK := by native_decide
/-- Code #5281 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5281_qec :
    ∃ ψ, SS.IsAmplitudes code_5281 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5281 code_5281_ok (by decide) (by decide)

/-- Catalogue code #5282: ((6,2,2)), m=13, a=[1, 1, 2, 2, 6, 7], S=[0, 9]. -/
def code_5282 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_5282_ok : code_5282.OK := by native_decide
/-- Code #5282 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5282_qec :
    ∃ ψ, SS.IsAmplitudes code_5282 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5282 code_5282_ok (by decide) (by decide)

/-- Catalogue code #5283: ((6,2,2)), m=13, a=[1, 1, 2, 2, 6, 7], S=[0, 10]. -/
def code_5283 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_5283_ok : code_5283.OK := by native_decide
/-- Code #5283 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5283_qec :
    ∃ ψ, SS.IsAmplitudes code_5283 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5283 code_5283_ok (by decide) (by decide)

/-- Catalogue code #5284: ((6,2,2)), m=13, a=[1, 1, 2, 2, 7, 7], S=[0, 3]. -/
def code_5284 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_5284_ok : code_5284.OK := by native_decide
/-- Code #5284 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5284_qec :
    ∃ ψ, SS.IsAmplitudes code_5284 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5284 code_5284_ok (by decide) (by decide)

/-- Catalogue code #5285: ((6,2,2)), m=13, a=[1, 1, 2, 2, 7, 7], S=[0, 4]. -/
def code_5285 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5285_ok : code_5285.OK := by native_decide
/-- Code #5285 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5285_qec :
    ∃ ψ, SS.IsAmplitudes code_5285 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5285 code_5285_ok (by decide) (by decide)

/-- Catalogue code #5286: ((6,2,2)), m=13, a=[1, 1, 2, 2, 7, 8], S=[0, 4]. -/
def code_5286 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5286_ok : code_5286.OK := by native_decide
/-- Code #5286 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5286_qec :
    ∃ ψ, SS.IsAmplitudes code_5286 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5286 code_5286_ok (by decide) (by decide)

/-- Catalogue code #5287: ((6,2,2)), m=13, a=[1, 1, 2, 2, 7, 9], S=[0, 3]. -/
def code_5287 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_5287_ok : code_5287.OK := by native_decide
/-- Code #5287 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5287_qec :
    ∃ ψ, SS.IsAmplitudes code_5287 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5287 code_5287_ok (by decide) (by decide)

/-- Catalogue code #5288: ((6,2,2)), m=13, a=[1, 1, 2, 2, 7, 9], S=[0, 5]. -/
def code_5288 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5288_ok : code_5288.OK := by native_decide
/-- Code #5288 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5288_qec :
    ∃ ψ, SS.IsAmplitudes code_5288 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5288 code_5288_ok (by decide) (by decide)

/-- Catalogue code #5289: ((6,2,2)), m=13, a=[1, 1, 2, 2, 7, 10], S=[0, 4]. -/
def code_5289 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5289_ok : code_5289.OK := by native_decide
/-- Code #5289 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5289_qec :
    ∃ ψ, SS.IsAmplitudes code_5289 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5289 code_5289_ok (by decide) (by decide)

/-- Catalogue code #5290: ((6,2,2)), m=13, a=[1, 1, 2, 2, 8, 8], S=[0, 4]. -/
def code_5290 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5290_ok : code_5290.OK := by native_decide
/-- Code #5290 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5290_qec :
    ∃ ψ, SS.IsAmplitudes code_5290 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5290 code_5290_ok (by decide) (by decide)

/-- Catalogue code #5291: ((6,2,2)), m=13, a=[1, 1, 2, 2, 8, 9], S=[0, 6]. -/
def code_5291 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5291_ok : code_5291.OK := by native_decide
/-- Code #5291 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5291_qec :
    ∃ ψ, SS.IsAmplitudes code_5291 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5291 code_5291_ok (by decide) (by decide)

/-- Catalogue code #5292: ((6,2,2)), m=13, a=[1, 1, 2, 2, 8, 11], S=[0, 6]. -/
def code_5292 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5292_ok : code_5292.OK := by native_decide
/-- Code #5292 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5292_qec :
    ∃ ψ, SS.IsAmplitudes code_5292 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5292 code_5292_ok (by decide) (by decide)

/-- Catalogue code #5293: ((6,2,2)), m=13, a=[1, 1, 2, 2, 9, 9], S=[0, 5]. -/
def code_5293 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5293_ok : code_5293.OK := by native_decide
/-- Code #5293 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5293_qec :
    ∃ ψ, SS.IsAmplitudes code_5293 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5293 code_5293_ok (by decide) (by decide)

/-- Catalogue code #5294: ((6,2,2)), m=13, a=[1, 1, 2, 2, 9, 9], S=[0, 6]. -/
def code_5294 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5294_ok : code_5294.OK := by native_decide
/-- Code #5294 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5294_qec :
    ∃ ψ, SS.IsAmplitudes code_5294 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5294 code_5294_ok (by decide) (by decide)

/-- Catalogue code #5295: ((6,2,2)), m=13, a=[1, 1, 2, 2, 9, 10], S=[0, 6]. -/
def code_5295 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5295_ok : code_5295.OK := by native_decide
/-- Code #5295 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5295_qec :
    ∃ ψ, SS.IsAmplitudes code_5295 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5295 code_5295_ok (by decide) (by decide)

/-- Catalogue code #5296: ((6,2,2)), m=13, a=[1, 1, 2, 3, 3, 4], S=[0, 6]. -/
def code_5296 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5296_ok : code_5296.OK := by native_decide
/-- Code #5296 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5296_qec :
    ∃ ψ, SS.IsAmplitudes code_5296 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5296 code_5296_ok (by decide) (by decide)

/-- Catalogue code #5297: ((6,2,2)), m=13, a=[1, 1, 2, 3, 3, 5], S=[0, 6]. -/
def code_5297 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5297_ok : code_5297.OK := by native_decide
/-- Code #5297 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5297_qec :
    ∃ ψ, SS.IsAmplitudes code_5297 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5297 code_5297_ok (by decide) (by decide)

/-- Catalogue code #5298: ((6,2,2)), m=13, a=[1, 1, 2, 3, 3, 6], S=[0, 8]. -/
def code_5298 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5298_ok : code_5298.OK := by native_decide
/-- Code #5298 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5298_qec :
    ∃ ψ, SS.IsAmplitudes code_5298 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5298 code_5298_ok (by decide) (by decide)

/-- Catalogue code #5299: ((6,2,2)), m=13, a=[1, 1, 2, 3, 4, 4], S=[0, 8]. -/
def code_5299 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5299_ok : code_5299.OK := by native_decide
/-- Code #5299 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5299_qec :
    ∃ ψ, SS.IsAmplitudes code_5299 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5299 code_5299_ok (by decide) (by decide)

/-- Catalogue code #5300: ((6,2,2)), m=13, a=[1, 1, 2, 3, 4, 5], S=[0, 6]. -/
def code_5300 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5300_ok : code_5300.OK := by native_decide
/-- Code #5300 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5300_qec :
    ∃ ψ, SS.IsAmplitudes code_5300 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5300 code_5300_ok (by decide) (by decide)

/-- Catalogue code #5301: ((6,2,2)), m=13, a=[1, 1, 2, 3, 4, 6], S=[0, 8]. -/
def code_5301 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5301_ok : code_5301.OK := by native_decide
/-- Code #5301 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5301_qec :
    ∃ ψ, SS.IsAmplitudes code_5301 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5301 code_5301_ok (by decide) (by decide)

/-- Catalogue code #5302: ((6,2,2)), m=13, a=[1, 1, 2, 3, 5, 6], S=[0, 9]. -/
def code_5302 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_5302_ok : code_5302.OK := by native_decide
/-- Code #5302 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5302_qec :
    ∃ ψ, SS.IsAmplitudes code_5302 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5302 code_5302_ok (by decide) (by decide)

/-- Catalogue code #5303: ((6,2,2)), m=13, a=[1, 1, 2, 3, 6, 6], S=[0, 4]. -/
def code_5303 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5303_ok : code_5303.OK := by native_decide
/-- Code #5303 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5303_qec :
    ∃ ψ, SS.IsAmplitudes code_5303 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5303 code_5303_ok (by decide) (by decide)

/-- Catalogue code #5304: ((6,2,2)), m=13, a=[1, 1, 2, 3, 6, 7], S=[0, 9]. -/
def code_5304 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5304_ok : code_5304.OK := by native_decide
/-- Code #5304 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5304_qec :
    ∃ ψ, SS.IsAmplitudes code_5304 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5304 code_5304_ok (by decide) (by decide)

/-- Catalogue code #5305: ((6,2,2)), m=13, a=[1, 1, 2, 3, 6, 8], S=[0, 4]. -/
def code_5305 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5305_ok : code_5305.OK := by native_decide
/-- Code #5305 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5305_qec :
    ∃ ψ, SS.IsAmplitudes code_5305 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5305 code_5305_ok (by decide) (by decide)

/-- Catalogue code #5306: ((6,2,2)), m=13, a=[1, 1, 2, 3, 6, 9], S=[0, 5]. -/
def code_5306 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5306_ok : code_5306.OK := by native_decide
/-- Code #5306 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5306_qec :
    ∃ ψ, SS.IsAmplitudes code_5306 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5306 code_5306_ok (by decide) (by decide)

/-- Catalogue code #5307: ((6,2,2)), m=13, a=[1, 1, 2, 3, 6, 10], S=[0, 5]. -/
def code_5307 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5307_ok : code_5307.OK := by native_decide
/-- Code #5307 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5307_qec :
    ∃ ψ, SS.IsAmplitudes code_5307 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5307 code_5307_ok (by decide) (by decide)

/-- Catalogue code #5308: ((6,2,2)), m=13, a=[1, 1, 2, 3, 6, 11], S=[0, 4]. -/
def code_5308 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5308_ok : code_5308.OK := by native_decide
/-- Code #5308 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5308_qec :
    ∃ ψ, SS.IsAmplitudes code_5308 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5308 code_5308_ok (by decide) (by decide)

/-- Catalogue code #5309: ((6,2,2)), m=13, a=[1, 1, 2, 3, 7, 7], S=[0, 5]. -/
def code_5309 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5309_ok : code_5309.OK := by native_decide
/-- Code #5309 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5309_qec :
    ∃ ψ, SS.IsAmplitudes code_5309 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5309 code_5309_ok (by decide) (by decide)

/-- Catalogue code #5310: ((6,2,2)), m=13, a=[1, 1, 2, 3, 7, 8], S=[0, 4]. -/
def code_5310 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5310_ok : code_5310.OK := by native_decide
/-- Code #5310 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5310_qec :
    ∃ ψ, SS.IsAmplitudes code_5310 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5310 code_5310_ok (by decide) (by decide)

/-- Catalogue code #5311: ((6,2,2)), m=13, a=[1, 1, 2, 3, 7, 9], S=[0, 5]. -/
def code_5311 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5311_ok : code_5311.OK := by native_decide
/-- Code #5311 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5311_qec :
    ∃ ψ, SS.IsAmplitudes code_5311 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5311 code_5311_ok (by decide) (by decide)

/-- Catalogue code #5312: ((6,2,2)), m=13, a=[1, 1, 2, 3, 7, 10], S=[0, 5]. -/
def code_5312 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5312_ok : code_5312.OK := by native_decide
/-- Code #5312 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5312_qec :
    ∃ ψ, SS.IsAmplitudes code_5312 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5312 code_5312_ok (by decide) (by decide)

/-- Catalogue code #5313: ((6,2,2)), m=13, a=[1, 1, 2, 3, 8, 8], S=[0, 4]. -/
def code_5313 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5313_ok : code_5313.OK := by native_decide
/-- Code #5313 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5313_qec :
    ∃ ψ, SS.IsAmplitudes code_5313 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5313 code_5313_ok (by decide) (by decide)

/-- Catalogue code #5314: ((6,2,2)), m=13, a=[1, 1, 2, 3, 8, 8], S=[0, 6]. -/
def code_5314 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5314_ok : code_5314.OK := by native_decide
/-- Code #5314 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5314_qec :
    ∃ ψ, SS.IsAmplitudes code_5314 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5314 code_5314_ok (by decide) (by decide)

/-- Catalogue code #5315: ((6,2,2)), m=13, a=[1, 1, 2, 3, 8, 9], S=[0, 6]. -/
def code_5315 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5315_ok : code_5315.OK := by native_decide
/-- Code #5315 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5315_qec :
    ∃ ψ, SS.IsAmplitudes code_5315 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5315 code_5315_ok (by decide) (by decide)

/-- Catalogue code #5316: ((6,2,2)), m=13, a=[1, 1, 2, 3, 8, 10], S=[0, 6]. -/
def code_5316 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5316_ok : code_5316.OK := by native_decide
/-- Code #5316 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5316_qec :
    ∃ ψ, SS.IsAmplitudes code_5316 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5316 code_5316_ok (by decide) (by decide)

/-- Catalogue code #5317: ((6,2,2)), m=13, a=[1, 1, 2, 3, 9, 9], S=[0, 5]. -/
def code_5317 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5317_ok : code_5317.OK := by native_decide
/-- Code #5317 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5317_qec :
    ∃ ψ, SS.IsAmplitudes code_5317 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5317 code_5317_ok (by decide) (by decide)

/-- Catalogue code #5318: ((6,2,2)), m=13, a=[1, 1, 2, 3, 9, 11], S=[0, 7]. -/
def code_5318 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5318_ok : code_5318.OK := by native_decide
/-- Code #5318 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5318_qec :
    ∃ ψ, SS.IsAmplitudes code_5318 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5318 code_5318_ok (by decide) (by decide)

/-- Catalogue code #5319: ((6,2,2)), m=13, a=[1, 1, 2, 4, 4, 5], S=[0, 6]. -/
def code_5319 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5319_ok : code_5319.OK := by native_decide
/-- Code #5319 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5319_qec :
    ∃ ψ, SS.IsAmplitudes code_5319 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5319 code_5319_ok (by decide) (by decide)

/-- Catalogue code #5320: ((6,2,2)), m=13, a=[1, 1, 2, 4, 4, 6], S=[0, 8]. -/
def code_5320 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5320_ok : code_5320.OK := by native_decide
/-- Code #5320 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5320_qec :
    ∃ ψ, SS.IsAmplitudes code_5320 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5320 code_5320_ok (by decide) (by decide)

/-- Catalogue code #5321: ((6,2,2)), m=13, a=[1, 1, 2, 4, 4, 7], S=[0, 8]. -/
def code_5321 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5321_ok : code_5321.OK := by native_decide
/-- Code #5321 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5321_qec :
    ∃ ψ, SS.IsAmplitudes code_5321 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5321 code_5321_ok (by decide) (by decide)

/-- Catalogue code #5322: ((6,2,2)), m=13, a=[1, 1, 2, 4, 5, 5], S=[0, 3]. -/
def code_5322 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5322_ok : code_5322.OK := by native_decide
/-- Code #5322 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5322_qec :
    ∃ ψ, SS.IsAmplitudes code_5322 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5322 code_5322_ok (by decide) (by decide)

/-- Catalogue code #5323: ((6,2,2)), m=13, a=[1, 1, 2, 4, 5, 6], S=[0, 3]. -/
def code_5323 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5323_ok : code_5323.OK := by native_decide
/-- Code #5323 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5323_qec :
    ∃ ψ, SS.IsAmplitudes code_5323 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5323 code_5323_ok (by decide) (by decide)

/-- Catalogue code #5324: ((6,2,2)), m=13, a=[1, 1, 2, 4, 5, 8], S=[0, 10]. -/
def code_5324 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5324_ok : code_5324.OK := by native_decide
/-- Code #5324 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5324_qec :
    ∃ ψ, SS.IsAmplitudes code_5324 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5324 code_5324_ok (by decide) (by decide)

/-- Catalogue code #5325: ((6,2,2)), m=13, a=[1, 1, 2, 4, 5, 9], S=[0, 7]. -/
def code_5325 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_5325_ok : code_5325.OK := by native_decide
/-- Code #5325 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5325_qec :
    ∃ ψ, SS.IsAmplitudes code_5325 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5325 code_5325_ok (by decide) (by decide)

/-- Catalogue code #5326: ((6,2,2)), m=13, a=[1, 1, 2, 4, 5, 10], S=[0, 7]. -/
def code_5326 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_5326_ok : code_5326.OK := by native_decide
/-- Code #5326 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5326_qec :
    ∃ ψ, SS.IsAmplitudes code_5326 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5326 code_5326_ok (by decide) (by decide)

/-- Catalogue code #5327: ((6,2,2)), m=13, a=[1, 1, 2, 4, 5, 11], S=[0, 3]. -/
def code_5327 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5327_ok : code_5327.OK := by native_decide
/-- Code #5327 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5327_qec :
    ∃ ψ, SS.IsAmplitudes code_5327 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5327 code_5327_ok (by decide) (by decide)

/-- Catalogue code #5328: ((6,2,2)), m=13, a=[1, 1, 2, 4, 5, 11], S=[0, 7]. -/
def code_5328 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_5328_ok : code_5328.OK := by native_decide
/-- Code #5328 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5328_qec :
    ∃ ψ, SS.IsAmplitudes code_5328 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5328 code_5328_ok (by decide) (by decide)

/-- Catalogue code #5329: ((6,2,2)), m=13, a=[1, 1, 2, 4, 6, 7], S=[0, 10]. -/
def code_5329 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5329_ok : code_5329.OK := by native_decide
/-- Code #5329 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5329_qec :
    ∃ ψ, SS.IsAmplitudes code_5329 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5329 code_5329_ok (by decide) (by decide)

/-- Catalogue code #5330: ((6,2,2)), m=13, a=[1, 1, 2, 4, 6, 9], S=[0, 8]. -/
def code_5330 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5330_ok : code_5330.OK := by native_decide
/-- Code #5330 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5330_qec :
    ∃ ψ, SS.IsAmplitudes code_5330 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5330 code_5330_ok (by decide) (by decide)

/-- Catalogue code #5331: ((6,2,2)), m=13, a=[1, 1, 2, 4, 6, 11], S=[0, 8]. -/
def code_5331 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_5331_ok : code_5331.OK := by native_decide
/-- Code #5331 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5331_qec :
    ∃ ψ, SS.IsAmplitudes code_5331 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5331 code_5331_ok (by decide) (by decide)

/-- Catalogue code #5332: ((6,2,2)), m=13, a=[1, 1, 2, 4, 7, 7], S=[0, 5]. -/
def code_5332 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5332_ok : code_5332.OK := by native_decide
/-- Code #5332 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5332_qec :
    ∃ ψ, SS.IsAmplitudes code_5332 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5332 code_5332_ok (by decide) (by decide)

/-- Catalogue code #5333: ((6,2,2)), m=13, a=[1, 1, 2, 4, 7, 9], S=[0, 5]. -/
def code_5333 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5333_ok : code_5333.OK := by native_decide
/-- Code #5333 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5333_qec :
    ∃ ψ, SS.IsAmplitudes code_5333 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5333 code_5333_ok (by decide) (by decide)

/-- Catalogue code #5334: ((6,2,2)), m=13, a=[1, 1, 2, 4, 7, 9], S=[0, 8]. -/
def code_5334 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5334_ok : code_5334.OK := by native_decide
/-- Code #5334 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5334_qec :
    ∃ ψ, SS.IsAmplitudes code_5334 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5334 code_5334_ok (by decide) (by decide)

/-- Catalogue code #5335: ((6,2,2)), m=13, a=[1, 1, 2, 4, 7, 10], S=[0, 8]. -/
def code_5335 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_5335_ok : code_5335.OK := by native_decide
/-- Code #5335 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5335_qec :
    ∃ ψ, SS.IsAmplitudes code_5335 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5335 code_5335_ok (by decide) (by decide)

/-- Catalogue code #5336: ((6,2,2)), m=13, a=[1, 1, 2, 4, 8, 9], S=[0, 6]. -/
def code_5336 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5336_ok : code_5336.OK := by native_decide
/-- Code #5336 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5336_qec :
    ∃ ψ, SS.IsAmplitudes code_5336 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5336 code_5336_ok (by decide) (by decide)

/-- Catalogue code #5337: ((6,2,2)), m=13, a=[1, 1, 2, 4, 9, 9], S=[0, 6]. -/
def code_5337 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5337_ok : code_5337.OK := by native_decide
/-- Code #5337 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5337_qec :
    ∃ ψ, SS.IsAmplitudes code_5337 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5337 code_5337_ok (by decide) (by decide)

/-- Catalogue code #5338: ((6,2,2)), m=13, a=[1, 1, 2, 4, 9, 10], S=[0, 8]. -/
def code_5338 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5338_ok : code_5338.OK := by native_decide
/-- Code #5338 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5338_qec :
    ∃ ψ, SS.IsAmplitudes code_5338 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5338 code_5338_ok (by decide) (by decide)

/-- Catalogue code #5339: ((6,2,2)), m=13, a=[1, 1, 2, 4, 9, 11], S=[0, 7]. -/
def code_5339 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5339_ok : code_5339.OK := by native_decide
/-- Code #5339 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5339_qec :
    ∃ ψ, SS.IsAmplitudes code_5339 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5339 code_5339_ok (by decide) (by decide)

/-- Catalogue code #5340: ((6,2,2)), m=13, a=[1, 1, 2, 4, 9, 11], S=[0, 8]. -/
def code_5340 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5340_ok : code_5340.OK := by native_decide
/-- Code #5340 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5340_qec :
    ∃ ψ, SS.IsAmplitudes code_5340 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5340 code_5340_ok (by decide) (by decide)

/-- Catalogue code #5341: ((6,2,2)), m=13, a=[1, 1, 2, 4, 10, 10], S=[0, 7]. -/
def code_5341 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5341_ok : code_5341.OK := by native_decide
/-- Code #5341 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5341_qec :
    ∃ ψ, SS.IsAmplitudes code_5341 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5341 code_5341_ok (by decide) (by decide)

/-- Catalogue code #5342: ((6,2,2)), m=13, a=[1, 1, 2, 4, 10, 11], S=[0, 8]. -/
def code_5342 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5342_ok : code_5342.OK := by native_decide
/-- Code #5342 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5342_qec :
    ∃ ψ, SS.IsAmplitudes code_5342 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5342 code_5342_ok (by decide) (by decide)

/-- Catalogue code #5343: ((6,2,2)), m=13, a=[1, 1, 2, 5, 5, 5], S=[0, 4]. -/
def code_5343 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-11 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5343_ok : code_5343.OK := by native_decide
/-- Code #5343 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5343_qec :
    ∃ ψ, SS.IsAmplitudes code_5343 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5343 code_5343_ok (by decide) (by decide)

/-- Catalogue code #5344: ((6,2,2)), m=13, a=[1, 1, 2, 5, 5, 6], S=[0, 3]. -/
def code_5344 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5344_ok : code_5344.OK := by native_decide
/-- Code #5344 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5344_qec :
    ∃ ψ, SS.IsAmplitudes code_5344 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5344 code_5344_ok (by decide) (by decide)

/-- Catalogue code #5345: ((6,2,2)), m=13, a=[1, 1, 2, 5, 5, 6], S=[0, 4]. -/
def code_5345 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5345_ok : code_5345.OK := by native_decide
/-- Code #5345 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5345_qec :
    ∃ ψ, SS.IsAmplitudes code_5345 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5345 code_5345_ok (by decide) (by decide)

/-- Catalogue code #5346: ((6,2,2)), m=13, a=[1, 1, 2, 5, 5, 6], S=[0, 10]. -/
def code_5346 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5346_ok : code_5346.OK := by native_decide
/-- Code #5346 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5346_qec :
    ∃ ψ, SS.IsAmplitudes code_5346 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5346 code_5346_ok (by decide) (by decide)

/-- Catalogue code #5347: ((6,2,2)), m=13, a=[1, 1, 2, 5, 5, 8], S=[0, 10]. -/
def code_5347 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5347_ok : code_5347.OK := by native_decide
/-- Code #5347 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5347_qec :
    ∃ ψ, SS.IsAmplitudes code_5347 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5347 code_5347_ok (by decide) (by decide)

/-- Catalogue code #5348: ((6,2,2)), m=13, a=[1, 1, 2, 5, 5, 9], S=[0, 3]. -/
def code_5348 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5348_ok : code_5348.OK := by native_decide
/-- Code #5348 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5348_qec :
    ∃ ψ, SS.IsAmplitudes code_5348 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5348 code_5348_ok (by decide) (by decide)

/-- Catalogue code #5349: ((6,2,2)), m=13, a=[1, 1, 2, 5, 5, 9], S=[0, 7]. -/
def code_5349 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_5349_ok : code_5349.OK := by native_decide
/-- Code #5349 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5349_qec :
    ∃ ψ, SS.IsAmplitudes code_5349 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5349 code_5349_ok (by decide) (by decide)

/-- Catalogue code #5350: ((6,2,2)), m=13, a=[1, 1, 2, 5, 5, 10], S=[0, 4]. -/
def code_5350 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-11 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5350_ok : code_5350.OK := by native_decide
/-- Code #5350 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5350_qec :
    ∃ ψ, SS.IsAmplitudes code_5350 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5350 code_5350_ok (by decide) (by decide)

/-- Catalogue code #5351: ((6,2,2)), m=13, a=[1, 1, 2, 5, 5, 10], S=[0, 7]. -/
def code_5351 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_5351_ok : code_5351.OK := by native_decide
/-- Code #5351 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5351_qec :
    ∃ ψ, SS.IsAmplitudes code_5351 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5351 code_5351_ok (by decide) (by decide)

/-- Catalogue code #5352: ((6,2,2)), m=13, a=[1, 1, 2, 5, 5, 11], S=[0, 3]. -/
def code_5352 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5352_ok : code_5352.OK := by native_decide
/-- Code #5352 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5352_qec :
    ∃ ψ, SS.IsAmplitudes code_5352 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5352 code_5352_ok (by decide) (by decide)

/-- Catalogue code #5353: ((6,2,2)), m=13, a=[1, 1, 2, 5, 5, 11], S=[0, 4]. -/
def code_5353 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5353_ok : code_5353.OK := by native_decide
/-- Code #5353 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5353_qec :
    ∃ ψ, SS.IsAmplitudes code_5353 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5353 code_5353_ok (by decide) (by decide)

/-- Catalogue code #5354: ((6,2,2)), m=13, a=[1, 1, 2, 5, 6, 6], S=[0, 4]. -/
def code_5354 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5354_ok : code_5354.OK := by native_decide
/-- Code #5354 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5354_qec :
    ∃ ψ, SS.IsAmplitudes code_5354 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5354 code_5354_ok (by decide) (by decide)

/-- Catalogue code #5355: ((6,2,2)), m=13, a=[1, 1, 2, 5, 6, 9], S=[0, 3]. -/
def code_5355 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5355_ok : code_5355.OK := by native_decide
/-- Code #5355 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5355_qec :
    ∃ ψ, SS.IsAmplitudes code_5355 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5355 code_5355_ok (by decide) (by decide)

/-- Catalogue code #5356: ((6,2,2)), m=13, a=[1, 1, 2, 5, 6, 10], S=[0, 4]. -/
def code_5356 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5356_ok : code_5356.OK := by native_decide
/-- Code #5356 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5356_qec :
    ∃ ψ, SS.IsAmplitudes code_5356 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5356 code_5356_ok (by decide) (by decide)

/-- Catalogue code #5357: ((6,2,2)), m=13, a=[1, 1, 2, 5, 6, 11], S=[0, 4]. -/
def code_5357 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5357_ok : code_5357.OK := by native_decide
/-- Code #5357 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5357_qec :
    ∃ ψ, SS.IsAmplitudes code_5357 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5357 code_5357_ok (by decide) (by decide)

/-- Catalogue code #5358: ((6,2,2)), m=13, a=[1, 1, 2, 5, 7, 10], S=[0, 4]. -/
def code_5358 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5358_ok : code_5358.OK := by native_decide
/-- Code #5358 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5358_qec :
    ∃ ψ, SS.IsAmplitudes code_5358 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5358 code_5358_ok (by decide) (by decide)

/-- Catalogue code #5359: ((6,2,2)), m=13, a=[1, 1, 2, 5, 9, 9], S=[0, 7]. -/
def code_5359 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5359_ok : code_5359.OK := by native_decide
/-- Code #5359 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5359_qec :
    ∃ ψ, SS.IsAmplitudes code_5359 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5359 code_5359_ok (by decide) (by decide)

/-- Catalogue code #5360: ((6,2,2)), m=13, a=[1, 1, 2, 5, 9, 10], S=[0, 7]. -/
def code_5360 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5360_ok : code_5360.OK := by native_decide
/-- Code #5360 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5360_qec :
    ∃ ψ, SS.IsAmplitudes code_5360 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5360 code_5360_ok (by decide) (by decide)

/-- Catalogue code #5361: ((6,2,2)), m=13, a=[1, 1, 2, 5, 9, 11], S=[0, 7]. -/
def code_5361 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5361_ok : code_5361.OK := by native_decide
/-- Code #5361 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5361_qec :
    ∃ ψ, SS.IsAmplitudes code_5361 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5361 code_5361_ok (by decide) (by decide)

/-- Catalogue code #5362: ((6,2,2)), m=13, a=[1, 1, 2, 5, 10, 10], S=[0, 7]. -/
def code_5362 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5362_ok : code_5362.OK := by native_decide
/-- Code #5362 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5362_qec :
    ∃ ψ, SS.IsAmplitudes code_5362 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5362 code_5362_ok (by decide) (by decide)

/-- Catalogue code #5363: ((6,2,2)), m=13, a=[1, 1, 2, 6, 6, 9], S=[0, 8]. -/
def code_5363 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_5363_ok : code_5363.OK := by native_decide
/-- Code #5363 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5363_qec :
    ∃ ψ, SS.IsAmplitudes code_5363 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5363 code_5363_ok (by decide) (by decide)

/-- Catalogue code #5364: ((6,2,2)), m=13, a=[1, 1, 2, 6, 6, 9], S=[0, 10]. -/
def code_5364 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-11 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5364_ok : code_5364.OK := by native_decide
/-- Code #5364 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5364_qec :
    ∃ ψ, SS.IsAmplitudes code_5364 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5364 code_5364_ok (by decide) (by decide)

/-- Catalogue code #5365: ((6,2,2)), m=13, a=[1, 1, 2, 6, 6, 11], S=[0, 4]. -/
def code_5365 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5365_ok : code_5365.OK := by native_decide
/-- Code #5365 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5365_qec :
    ∃ ψ, SS.IsAmplitudes code_5365 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5365 code_5365_ok (by decide) (by decide)

/-- Catalogue code #5366: ((6,2,2)), m=13, a=[1, 1, 2, 6, 6, 11], S=[0, 10]. -/
def code_5366 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5366_ok : code_5366.OK := by native_decide
/-- Code #5366 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5366_qec :
    ∃ ψ, SS.IsAmplitudes code_5366 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5366 code_5366_ok (by decide) (by decide)

/-- Catalogue code #5367: ((6,2,2)), m=13, a=[1, 1, 2, 6, 8, 8], S=[0, 3]. -/
def code_5367 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5367_ok : code_5367.OK := by native_decide
/-- Code #5367 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5367_qec :
    ∃ ψ, SS.IsAmplitudes code_5367 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5367 code_5367_ok (by decide) (by decide)

/-- Catalogue code #5368: ((6,2,2)), m=13, a=[1, 1, 2, 6, 8, 8], S=[0, 10]. -/
def code_5368 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5368_ok : code_5368.OK := by native_decide
/-- Code #5368 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5368_qec :
    ∃ ψ, SS.IsAmplitudes code_5368 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5368 code_5368_ok (by decide) (by decide)

/-- Catalogue code #5369: ((6,2,2)), m=13, a=[1, 1, 2, 6, 9, 9], S=[0, 5]. -/
def code_5369 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_5369_ok : code_5369.OK := by native_decide
/-- Code #5369 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5369_qec :
    ∃ ψ, SS.IsAmplitudes code_5369 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5369 code_5369_ok (by decide) (by decide)

/-- Catalogue code #5370: ((6,2,2)), m=13, a=[1, 1, 2, 6, 9, 9], S=[0, 8]. -/
def code_5370 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5370_ok : code_5370.OK := by native_decide
/-- Code #5370 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5370_qec :
    ∃ ψ, SS.IsAmplitudes code_5370 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5370 code_5370_ok (by decide) (by decide)

/-- Catalogue code #5371: ((6,2,2)), m=13, a=[1, 1, 2, 6, 9, 10], S=[0, 8]. -/
def code_5371 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5371_ok : code_5371.OK := by native_decide
/-- Code #5371 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5371_qec :
    ∃ ψ, SS.IsAmplitudes code_5371 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5371 code_5371_ok (by decide) (by decide)

/-- Catalogue code #5372: ((6,2,2)), m=13, a=[1, 1, 2, 6, 9, 11], S=[0, 8]. -/
def code_5372 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_5372_ok : code_5372.OK := by native_decide
/-- Code #5372 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5372_qec :
    ∃ ψ, SS.IsAmplitudes code_5372 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5372 code_5372_ok (by decide) (by decide)

/-- Catalogue code #5373: ((6,2,2)), m=13, a=[1, 1, 2, 6, 9, 11], S=[0, 10]. -/
def code_5373 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5373_ok : code_5373.OK := by native_decide
/-- Code #5373 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5373_qec :
    ∃ ψ, SS.IsAmplitudes code_5373 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5373 code_5373_ok (by decide) (by decide)

/-- Catalogue code #5374: ((6,2,2)), m=13, a=[1, 1, 2, 7, 7, 8], S=[0, 3]. -/
def code_5374 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5374_ok : code_5374.OK := by native_decide
/-- Code #5374 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5374_qec :
    ∃ ψ, SS.IsAmplitudes code_5374 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5374 code_5374_ok (by decide) (by decide)

/-- Catalogue code #5375: ((6,2,2)), m=13, a=[1, 1, 2, 7, 7, 8], S=[0, 4]. -/
def code_5375 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5375_ok : code_5375.OK := by native_decide
/-- Code #5375 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5375_qec :
    ∃ ψ, SS.IsAmplitudes code_5375 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5375 code_5375_ok (by decide) (by decide)

/-- Catalogue code #5376: ((6,2,2)), m=13, a=[1, 1, 2, 7, 7, 8], S=[0, 9]. -/
def code_5376 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5376_ok : code_5376.OK := by native_decide
/-- Code #5376 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5376_qec :
    ∃ ψ, SS.IsAmplitudes code_5376 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5376 code_5376_ok (by decide) (by decide)

/-- Catalogue code #5377: ((6,2,2)), m=13, a=[1, 1, 2, 7, 7, 8], S=[0, 10]. -/
def code_5377 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5377_ok : code_5377.OK := by native_decide
/-- Code #5377 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5377_qec :
    ∃ ψ, SS.IsAmplitudes code_5377 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5377 code_5377_ok (by decide) (by decide)

/-- Catalogue code #5378: ((6,2,2)), m=13, a=[1, 1, 2, 7, 7, 9], S=[0, 3]. -/
def code_5378 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5378_ok : code_5378.OK := by native_decide
/-- Code #5378 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5378_qec :
    ∃ ψ, SS.IsAmplitudes code_5378 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5378 code_5378_ok (by decide) (by decide)

/-- Catalogue code #5379: ((6,2,2)), m=13, a=[1, 1, 2, 7, 7, 9], S=[0, 5]. -/
def code_5379 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_5379_ok : code_5379.OK := by native_decide
/-- Code #5379 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5379_qec :
    ∃ ψ, SS.IsAmplitudes code_5379 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5379 code_5379_ok (by decide) (by decide)

/-- Catalogue code #5380: ((6,2,2)), m=13, a=[1, 1, 2, 7, 7, 10], S=[0, 4]. -/
def code_5380 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5380_ok : code_5380.OK := by native_decide
/-- Code #5380 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5380_qec :
    ∃ ψ, SS.IsAmplitudes code_5380 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5380 code_5380_ok (by decide) (by decide)

/-- Catalogue code #5381: ((6,2,2)), m=13, a=[1, 1, 2, 7, 7, 10], S=[0, 5]. -/
def code_5381 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_5381_ok : code_5381.OK := by native_decide
/-- Code #5381 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5381_qec :
    ∃ ψ, SS.IsAmplitudes code_5381 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5381 code_5381_ok (by decide) (by decide)

/-- Catalogue code #5382: ((6,2,2)), m=13, a=[1, 1, 2, 7, 8, 8], S=[0, 4]. -/
def code_5382 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5382_ok : code_5382.OK := by native_decide
/-- Code #5382 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5382_qec :
    ∃ ψ, SS.IsAmplitudes code_5382 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5382 code_5382_ok (by decide) (by decide)

/-- Catalogue code #5383: ((6,2,2)), m=13, a=[1, 1, 2, 7, 8, 8], S=[0, 10]. -/
def code_5383 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5383_ok : code_5383.OK := by native_decide
/-- Code #5383 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5383_qec :
    ∃ ψ, SS.IsAmplitudes code_5383 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5383 code_5383_ok (by decide) (by decide)

/-- Catalogue code #5384: ((6,2,2)), m=13, a=[1, 1, 2, 7, 8, 9], S=[0, 10]. -/
def code_5384 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5384_ok : code_5384.OK := by native_decide
/-- Code #5384 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5384_qec :
    ∃ ψ, SS.IsAmplitudes code_5384 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5384 code_5384_ok (by decide) (by decide)

/-- Catalogue code #5385: ((6,2,2)), m=13, a=[1, 1, 2, 7, 9, 9], S=[0, 5]. -/
def code_5385 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_5385_ok : code_5385.OK := by native_decide
/-- Code #5385 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5385_qec :
    ∃ ψ, SS.IsAmplitudes code_5385 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5385 code_5385_ok (by decide) (by decide)

/-- Catalogue code #5386: ((6,2,2)), m=13, a=[1, 1, 2, 7, 9, 10], S=[0, 8]. -/
def code_5386 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5386_ok : code_5386.OK := by native_decide
/-- Code #5386 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5386_qec :
    ∃ ψ, SS.IsAmplitudes code_5386 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5386 code_5386_ok (by decide) (by decide)

/-- Catalogue code #5387: ((6,2,2)), m=13, a=[1, 1, 2, 8, 8, 8], S=[0, 4]. -/
def code_5387 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5387_ok : code_5387.OK := by native_decide
/-- Code #5387 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5387_qec :
    ∃ ψ, SS.IsAmplitudes code_5387 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5387 code_5387_ok (by decide) (by decide)

/-- Catalogue code #5388: ((6,2,2)), m=13, a=[1, 1, 2, 8, 8, 9], S=[0, 6]. -/
def code_5388 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-11 : ℚ) / 13)]
theorem code_5388_ok : code_5388.OK := by native_decide
/-- Code #5388 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5388_qec :
    ∃ ψ, SS.IsAmplitudes code_5388 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5388 code_5388_ok (by decide) (by decide)

/-- Catalogue code #5389: ((6,2,2)), m=13, a=[1, 1, 2, 8, 8, 9], S=[0, 10]. -/
def code_5389 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5389_ok : code_5389.OK := by native_decide
/-- Code #5389 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5389_qec :
    ∃ ψ, SS.IsAmplitudes code_5389 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5389 code_5389_ok (by decide) (by decide)

/-- Catalogue code #5390: ((6,2,2)), m=13, a=[1, 1, 2, 8, 9, 9], S=[0, 6]. -/
def code_5390 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5390_ok : code_5390.OK := by native_decide
/-- Code #5390 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5390_qec :
    ∃ ψ, SS.IsAmplitudes code_5390 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5390 code_5390_ok (by decide) (by decide)

/-- Catalogue code #5391: ((6,2,2)), m=13, a=[1, 1, 3, 3, 4, 5], S=[0, 6]. -/
def code_5391 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5391_ok : code_5391.OK := by native_decide
/-- Code #5391 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5391_qec :
    ∃ ψ, SS.IsAmplitudes code_5391 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5391 code_5391_ok (by decide) (by decide)

/-- Catalogue code #5392: ((6,2,2)), m=13, a=[1, 1, 3, 3, 4, 5], S=[0, 11]. -/
def code_5392 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13)]
theorem code_5392_ok : code_5392.OK := by native_decide
/-- Code #5392 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5392_qec :
    ∃ ψ, SS.IsAmplitudes code_5392 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5392 code_5392_ok (by decide) (by decide)

/-- Catalogue code #5393: ((6,2,2)), m=13, a=[1, 1, 3, 3, 4, 7], S=[0, 11]. -/
def code_5393 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13)]
theorem code_5393_ok : code_5393.OK := by native_decide
/-- Code #5393 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5393_qec :
    ∃ ψ, SS.IsAmplitudes code_5393 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5393 code_5393_ok (by decide) (by decide)

/-- Catalogue code #5394: ((6,2,2)), m=13, a=[1, 1, 3, 3, 5, 5], S=[0, 6]. -/
def code_5394 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5394_ok : code_5394.OK := by native_decide
/-- Code #5394 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5394_qec :
    ∃ ψ, SS.IsAmplitudes code_5394 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5394 code_5394_ok (by decide) (by decide)

/-- Catalogue code #5395: ((6,2,2)), m=13, a=[1, 1, 3, 3, 5, 5], S=[0, 11]. -/
def code_5395 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5395_ok : code_5395.OK := by native_decide
/-- Code #5395 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5395_qec :
    ∃ ψ, SS.IsAmplitudes code_5395 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5395 code_5395_ok (by decide) (by decide)

/-- Catalogue code #5396: ((6,2,2)), m=13, a=[1, 1, 3, 3, 5, 6], S=[0, 2]. -/
def code_5396 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5396_ok : code_5396.OK := by native_decide
/-- Code #5396 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5396_qec :
    ∃ ψ, SS.IsAmplitudes code_5396 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5396 code_5396_ok (by decide) (by decide)

/-- Catalogue code #5397: ((6,2,2)), m=13, a=[1, 1, 3, 3, 5, 6], S=[0, 11]. -/
def code_5397 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5397_ok : code_5397.OK := by native_decide
/-- Code #5397 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5397_qec :
    ∃ ψ, SS.IsAmplitudes code_5397 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5397 code_5397_ok (by decide) (by decide)

/-- Catalogue code #5398: ((6,2,2)), m=13, a=[1, 1, 3, 3, 5, 7], S=[0, 11]. -/
def code_5398 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5398_ok : code_5398.OK := by native_decide
/-- Code #5398 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5398_qec :
    ∃ ψ, SS.IsAmplitudes code_5398 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5398 code_5398_ok (by decide) (by decide)

/-- Catalogue code #5399: ((6,2,2)), m=13, a=[1, 1, 3, 3, 5, 8], S=[0, 7]. -/
def code_5399 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5399_ok : code_5399.OK := by native_decide
/-- Code #5399 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5399_qec :
    ∃ ψ, SS.IsAmplitudes code_5399 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5399 code_5399_ok (by decide) (by decide)

/-- Catalogue code #5400: ((6,2,2)), m=13, a=[1, 1, 3, 3, 5, 9], S=[0, 2]. -/
def code_5400 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5400_ok : code_5400.OK := by native_decide
/-- Code #5400 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5400_qec :
    ∃ ψ, SS.IsAmplitudes code_5400 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5400 code_5400_ok (by decide) (by decide)

/-- Catalogue code #5401: ((6,2,2)), m=13, a=[1, 1, 3, 3, 5, 9], S=[0, 7]. -/
def code_5401 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_5401_ok : code_5401.OK := by native_decide
/-- Code #5401 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5401_qec :
    ∃ ψ, SS.IsAmplitudes code_5401 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5401 code_5401_ok (by decide) (by decide)

/-- Catalogue code #5402: ((6,2,2)), m=13, a=[1, 1, 3, 3, 5, 11], S=[0, 7]. -/
def code_5402 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_5402_ok : code_5402.OK := by native_decide
/-- Code #5402 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5402_qec :
    ∃ ψ, SS.IsAmplitudes code_5402 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5402 code_5402_ok (by decide) (by decide)

/-- Catalogue code #5403: ((6,2,2)), m=13, a=[1, 1, 3, 3, 5, 12], S=[0, 7]. -/
def code_5403 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_5403_ok : code_5403.OK := by native_decide
/-- Code #5403 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5403_qec :
    ∃ ψ, SS.IsAmplitudes code_5403 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5403 code_5403_ok (by decide) (by decide)

/-- Catalogue code #5404: ((6,2,2)), m=13, a=[1, 1, 3, 3, 6, 6], S=[0, 2]. -/
def code_5404 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5404_ok : code_5404.OK := by native_decide
/-- Code #5404 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5404_qec :
    ∃ ψ, SS.IsAmplitudes code_5404 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5404 code_5404_ok (by decide) (by decide)

/-- Catalogue code #5405: ((6,2,2)), m=13, a=[1, 1, 3, 3, 6, 6], S=[0, 5]. -/
def code_5405 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5405_ok : code_5405.OK := by native_decide
/-- Code #5405 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5405_qec :
    ∃ ψ, SS.IsAmplitudes code_5405 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5405 code_5405_ok (by decide) (by decide)

/-- Catalogue code #5406: ((6,2,2)), m=13, a=[1, 1, 3, 3, 6, 8], S=[0, 2]. -/
def code_5406 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5406_ok : code_5406.OK := by native_decide
/-- Code #5406 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5406_qec :
    ∃ ψ, SS.IsAmplitudes code_5406 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5406 code_5406_ok (by decide) (by decide)

/-- Catalogue code #5407: ((6,2,2)), m=13, a=[1, 1, 3, 3, 6, 9], S=[0, 2]. -/
def code_5407 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5407_ok : code_5407.OK := by native_decide
/-- Code #5407 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5407_qec :
    ∃ ψ, SS.IsAmplitudes code_5407 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5407 code_5407_ok (by decide) (by decide)

/-- Catalogue code #5408: ((6,2,2)), m=13, a=[1, 1, 3, 3, 6, 11], S=[0, 5]. -/
def code_5408 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5408_ok : code_5408.OK := by native_decide
/-- Code #5408 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5408_qec :
    ∃ ψ, SS.IsAmplitudes code_5408 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5408 code_5408_ok (by decide) (by decide)

/-- Catalogue code #5409: ((6,2,2)), m=13, a=[1, 1, 3, 3, 6, 12], S=[0, 5]. -/
def code_5409 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5409_ok : code_5409.OK := by native_decide
/-- Code #5409 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5409_qec :
    ∃ ψ, SS.IsAmplitudes code_5409 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5409 code_5409_ok (by decide) (by decide)

/-- Catalogue code #5410: ((6,2,2)), m=13, a=[1, 1, 3, 3, 7, 8], S=[0, 2]. -/
def code_5410 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5410_ok : code_5410.OK := by native_decide
/-- Code #5410 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5410_qec :
    ∃ ψ, SS.IsAmplitudes code_5410 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5410 code_5410_ok (by decide) (by decide)

/-- Catalogue code #5411: ((6,2,2)), m=13, a=[1, 1, 3, 3, 7, 11], S=[0, 5]. -/
def code_5411 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5411_ok : code_5411.OK := by native_decide
/-- Code #5411 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5411_qec :
    ∃ ψ, SS.IsAmplitudes code_5411 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5411 code_5411_ok (by decide) (by decide)

/-- Catalogue code #5412: ((6,2,2)), m=13, a=[1, 1, 3, 3, 8, 11], S=[0, 7]. -/
def code_5412 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5412_ok : code_5412.OK := by native_decide
/-- Code #5412 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5412_qec :
    ∃ ψ, SS.IsAmplitudes code_5412 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5412 code_5412_ok (by decide) (by decide)

/-- Catalogue code #5413: ((6,2,2)), m=13, a=[1, 1, 3, 3, 8, 12], S=[0, 7]. -/
def code_5413 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5413_ok : code_5413.OK := by native_decide
/-- Code #5413 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5413_qec :
    ∃ ψ, SS.IsAmplitudes code_5413 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5413 code_5413_ok (by decide) (by decide)

/-- Catalogue code #5414: ((6,2,2)), m=13, a=[1, 1, 3, 3, 9, 11], S=[0, 7]. -/
def code_5414 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5414_ok : code_5414.OK := by native_decide
/-- Code #5414 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5414_qec :
    ∃ ψ, SS.IsAmplitudes code_5414 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5414 code_5414_ok (by decide) (by decide)

/-- Catalogue code #5415: ((6,2,2)), m=13, a=[1, 1, 3, 4, 4, 4], S=[0, 2]. -/
def code_5415 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5415_ok : code_5415.OK := by native_decide
/-- Code #5415 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5415_qec :
    ∃ ψ, SS.IsAmplitudes code_5415 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5415 code_5415_ok (by decide) (by decide)

/-- Catalogue code #5416: ((6,2,2)), m=13, a=[1, 1, 3, 4, 4, 5], S=[0, 11]. -/
def code_5416 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5416_ok : code_5416.OK := by native_decide
/-- Code #5416 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5416_qec :
    ∃ ψ, SS.IsAmplitudes code_5416 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5416 code_5416_ok (by decide) (by decide)

/-- Catalogue code #5417: ((6,2,2)), m=13, a=[1, 1, 3, 4, 4, 6], S=[0, 8]. -/
def code_5417 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_5417_ok : code_5417.OK := by native_decide
/-- Code #5417 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5417_qec :
    ∃ ψ, SS.IsAmplitudes code_5417 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5417 code_5417_ok (by decide) (by decide)

/-- Catalogue code #5418: ((6,2,2)), m=13, a=[1, 1, 3, 4, 4, 6], S=[0, 11]. -/
def code_5418 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5418_ok : code_5418.OK := by native_decide
/-- Code #5418 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5418_qec :
    ∃ ψ, SS.IsAmplitudes code_5418 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5418 code_5418_ok (by decide) (by decide)

/-- Catalogue code #5419: ((6,2,2)), m=13, a=[1, 1, 3, 4, 4, 8], S=[0, 2]. -/
def code_5419 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5419_ok : code_5419.OK := by native_decide
/-- Code #5419 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5419_qec :
    ∃ ψ, SS.IsAmplitudes code_5419 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5419 code_5419_ok (by decide) (by decide)

/-- Catalogue code #5420: ((6,2,2)), m=13, a=[1, 1, 3, 4, 4, 11], S=[0, 5]. -/
def code_5420 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_5420_ok : code_5420.OK := by native_decide
/-- Code #5420 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5420_qec :
    ∃ ψ, SS.IsAmplitudes code_5420 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5420 code_5420_ok (by decide) (by decide)

/-- Catalogue code #5421: ((6,2,2)), m=13, a=[1, 1, 3, 4, 5, 6], S=[0, 2]. -/
def code_5421 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5421_ok : code_5421.OK := by native_decide
/-- Code #5421 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5421_qec :
    ∃ ψ, SS.IsAmplitudes code_5421 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5421 code_5421_ok (by decide) (by decide)

/-- Catalogue code #5422: ((6,2,2)), m=13, a=[1, 1, 3, 4, 5, 6], S=[0, 11]. -/
def code_5422 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13)]
theorem code_5422_ok : code_5422.OK := by native_decide
/-- Code #5422 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5422_qec :
    ∃ ψ, SS.IsAmplitudes code_5422 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5422 code_5422_ok (by decide) (by decide)

/-- Catalogue code #5423: ((6,2,2)), m=13, a=[1, 1, 3, 4, 5, 7], S=[0, 11]. -/
def code_5423 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5423_ok : code_5423.OK := by native_decide
/-- Code #5423 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5423_qec :
    ∃ ψ, SS.IsAmplitudes code_5423 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5423 code_5423_ok (by decide) (by decide)

/-- Catalogue code #5424: ((6,2,2)), m=13, a=[1, 1, 3, 4, 5, 8], S=[0, 2]. -/
def code_5424 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5424_ok : code_5424.OK := by native_decide
/-- Code #5424 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5424_qec :
    ∃ ψ, SS.IsAmplitudes code_5424 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5424 code_5424_ok (by decide) (by decide)

/-- Catalogue code #5425: ((6,2,2)), m=13, a=[1, 1, 3, 4, 5, 8], S=[0, 7]. -/
def code_5425 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_5425_ok : code_5425.OK := by native_decide
/-- Code #5425 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5425_qec :
    ∃ ψ, SS.IsAmplitudes code_5425 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5425 code_5425_ok (by decide) (by decide)

/-- Catalogue code #5426: ((6,2,2)), m=13, a=[1, 1, 3, 4, 5, 8], S=[0, 11]. -/
def code_5426 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5426_ok : code_5426.OK := by native_decide
/-- Code #5426 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5426_qec :
    ∃ ψ, SS.IsAmplitudes code_5426 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5426 code_5426_ok (by decide) (by decide)

/-- Catalogue code #5427: ((6,2,2)), m=13, a=[1, 1, 3, 4, 5, 11], S=[0, 7]. -/
def code_5427 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5427_ok : code_5427.OK := by native_decide
/-- Code #5427 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5427_qec :
    ∃ ψ, SS.IsAmplitudes code_5427 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5427 code_5427_ok (by decide) (by decide)

/-- Catalogue code #5428: ((6,2,2)), m=13, a=[1, 1, 3, 4, 6, 7], S=[0, 11]. -/
def code_5428 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5428_ok : code_5428.OK := by native_decide
/-- Code #5428 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5428_qec :
    ∃ ψ, SS.IsAmplitudes code_5428 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5428 code_5428_ok (by decide) (by decide)

/-- Catalogue code #5429: ((6,2,2)), m=13, a=[1, 1, 3, 4, 6, 8], S=[0, 2]. -/
def code_5429 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5429_ok : code_5429.OK := by native_decide
/-- Code #5429 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5429_qec :
    ∃ ψ, SS.IsAmplitudes code_5429 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5429 code_5429_ok (by decide) (by decide)

/-- Catalogue code #5430: ((6,2,2)), m=13, a=[1, 1, 3, 4, 6, 11], S=[0, 5]. -/
def code_5430 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5430_ok : code_5430.OK := by native_decide
/-- Code #5430 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5430_qec :
    ∃ ψ, SS.IsAmplitudes code_5430 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5430 code_5430_ok (by decide) (by decide)

/-- Catalogue code #5431: ((6,2,2)), m=13, a=[1, 1, 3, 4, 7, 8], S=[0, 2]. -/
def code_5431 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5431_ok : code_5431.OK := by native_decide
/-- Code #5431 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5431_qec :
    ∃ ψ, SS.IsAmplitudes code_5431 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5431 code_5431_ok (by decide) (by decide)

/-- Catalogue code #5432: ((6,2,2)), m=13, a=[1, 1, 3, 4, 7, 11], S=[0, 5]. -/
def code_5432 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5432_ok : code_5432.OK := by native_decide
/-- Code #5432 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5432_qec :
    ∃ ψ, SS.IsAmplitudes code_5432 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5432 code_5432_ok (by decide) (by decide)

/-- Catalogue code #5433: ((6,2,2)), m=13, a=[1, 1, 3, 5, 5, 6], S=[0, 11]. -/
def code_5433 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5433_ok : code_5433.OK := by native_decide
/-- Code #5433 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5433_qec :
    ∃ ψ, SS.IsAmplitudes code_5433 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5433 code_5433_ok (by decide) (by decide)

/-- Catalogue code #5434: ((6,2,2)), m=13, a=[1, 1, 3, 5, 5, 8], S=[0, 11]. -/
def code_5434 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5434_ok : code_5434.OK := by native_decide
/-- Code #5434 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5434_qec :
    ∃ ψ, SS.IsAmplitudes code_5434 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5434 code_5434_ok (by decide) (by decide)

/-- Catalogue code #5435: ((6,2,2)), m=13, a=[1, 1, 3, 5, 6, 8], S=[0, 2]. -/
def code_5435 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5435_ok : code_5435.OK := by native_decide
/-- Code #5435 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5435_qec :
    ∃ ψ, SS.IsAmplitudes code_5435 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5435 code_5435_ok (by decide) (by decide)

/-- Catalogue code #5436: ((6,2,2)), m=13, a=[1, 1, 3, 5, 6, 8], S=[0, 9]. -/
def code_5436 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((11 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5436_ok : code_5436.OK := by native_decide
/-- Code #5436 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5436_qec :
    ∃ ψ, SS.IsAmplitudes code_5436 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5436 code_5436_ok (by decide) (by decide)

/-- Catalogue code #5437: ((6,2,2)), m=13, a=[1, 1, 3, 5, 6, 9], S=[0, 2]. -/
def code_5437 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5437_ok : code_5437.OK := by native_decide
/-- Code #5437 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5437_qec :
    ∃ ψ, SS.IsAmplitudes code_5437 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5437 code_5437_ok (by decide) (by decide)

/-- Catalogue code #5438: ((6,2,2)), m=13, a=[1, 1, 3, 5, 6, 11], S=[0, 9]. -/
def code_5438 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5438_ok : code_5438.OK := by native_decide
/-- Code #5438 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5438_qec :
    ∃ ψ, SS.IsAmplitudes code_5438 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5438 code_5438_ok (by decide) (by decide)

/-- Catalogue code #5439: ((6,2,2)), m=13, a=[1, 1, 3, 5, 7, 8], S=[0, 2]. -/
def code_5439 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5439_ok : code_5439.OK := by native_decide
/-- Code #5439 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5439_qec :
    ∃ ψ, SS.IsAmplitudes code_5439 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5439 code_5439_ok (by decide) (by decide)

/-- Catalogue code #5440: ((6,2,2)), m=13, a=[1, 1, 3, 5, 8, 11], S=[0, 7]. -/
def code_5440 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5440_ok : code_5440.OK := by native_decide
/-- Code #5440 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5440_qec :
    ∃ ψ, SS.IsAmplitudes code_5440 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5440 code_5440_ok (by decide) (by decide)

/-- Catalogue code #5441: ((6,2,2)), m=13, a=[1, 1, 3, 5, 8, 11], S=[0, 9]. -/
def code_5441 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((11 : ℚ) / 13)]
theorem code_5441_ok : code_5441.OK := by native_decide
/-- Code #5441 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5441_qec :
    ∃ ψ, SS.IsAmplitudes code_5441 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5441 code_5441_ok (by decide) (by decide)

/-- Catalogue code #5442: ((6,2,2)), m=13, a=[1, 1, 3, 5, 8, 12], S=[0, 7]. -/
def code_5442 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5442_ok : code_5442.OK := by native_decide
/-- Code #5442 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5442_qec :
    ∃ ψ, SS.IsAmplitudes code_5442 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5442 code_5442_ok (by decide) (by decide)

/-- Catalogue code #5443: ((6,2,2)), m=13, a=[1, 1, 3, 5, 9, 11], S=[0, 7]. -/
def code_5443 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5443_ok : code_5443.OK := by native_decide
/-- Code #5443 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5443_qec :
    ∃ ψ, SS.IsAmplitudes code_5443 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5443 code_5443_ok (by decide) (by decide)

/-- Catalogue code #5444: ((6,2,2)), m=13, a=[1, 1, 3, 6, 6, 8], S=[0, 2]. -/
def code_5444 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5444_ok : code_5444.OK := by native_decide
/-- Code #5444 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5444_qec :
    ∃ ψ, SS.IsAmplitudes code_5444 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5444 code_5444_ok (by decide) (by decide)

/-- Catalogue code #5445: ((6,2,2)), m=13, a=[1, 1, 3, 6, 6, 9], S=[0, 2]. -/
def code_5445 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5445_ok : code_5445.OK := by native_decide
/-- Code #5445 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5445_qec :
    ∃ ψ, SS.IsAmplitudes code_5445 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5445 code_5445_ok (by decide) (by decide)

/-- Catalogue code #5446: ((6,2,2)), m=13, a=[1, 1, 3, 6, 6, 11], S=[0, 4]. -/
def code_5446 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5446_ok : code_5446.OK := by native_decide
/-- Code #5446 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5446_qec :
    ∃ ψ, SS.IsAmplitudes code_5446 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5446 code_5446_ok (by decide) (by decide)

/-- Catalogue code #5447: ((6,2,2)), m=13, a=[1, 1, 3, 6, 6, 11], S=[0, 5]. -/
def code_5447 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_5447_ok : code_5447.OK := by native_decide
/-- Code #5447 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5447_qec :
    ∃ ψ, SS.IsAmplitudes code_5447 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5447 code_5447_ok (by decide) (by decide)

/-- Catalogue code #5448: ((6,2,2)), m=13, a=[1, 1, 3, 6, 8, 8], S=[0, 11]. -/
def code_5448 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5448_ok : code_5448.OK := by native_decide
/-- Code #5448 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5448_qec :
    ∃ ψ, SS.IsAmplitudes code_5448 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5448 code_5448_ok (by decide) (by decide)

/-- Catalogue code #5449: ((6,2,2)), m=13, a=[1, 1, 3, 6, 8, 9], S=[0, 11]. -/
def code_5449 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5449_ok : code_5449.OK := by native_decide
/-- Code #5449 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5449_qec :
    ∃ ψ, SS.IsAmplitudes code_5449 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5449 code_5449_ok (by decide) (by decide)

/-- Catalogue code #5450: ((6,2,2)), m=13, a=[1, 1, 3, 6, 8, 10], S=[0, 11]. -/
def code_5450 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_5450_ok : code_5450.OK := by native_decide
/-- Code #5450 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5450_qec :
    ∃ ψ, SS.IsAmplitudes code_5450 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5450 code_5450_ok (by decide) (by decide)

/-- Catalogue code #5451: ((6,2,2)), m=13, a=[1, 1, 3, 6, 8, 11], S=[0, 9]. -/
def code_5451 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5451_ok : code_5451.OK := by native_decide
/-- Code #5451 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5451_qec :
    ∃ ψ, SS.IsAmplitudes code_5451 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5451 code_5451_ok (by decide) (by decide)

/-- Catalogue code #5452: ((6,2,2)), m=13, a=[1, 1, 3, 6, 9, 9], S=[0, 5]. -/
def code_5452 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5452_ok : code_5452.OK := by native_decide
/-- Code #5452 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5452_qec :
    ∃ ψ, SS.IsAmplitudes code_5452 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5452 code_5452_ok (by decide) (by decide)

/-- Catalogue code #5453: ((6,2,2)), m=13, a=[1, 1, 3, 6, 9, 9], S=[0, 11]. -/
def code_5453 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_5453_ok : code_5453.OK := by native_decide
/-- Code #5453 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5453_qec :
    ∃ ψ, SS.IsAmplitudes code_5453 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5453 code_5453_ok (by decide) (by decide)

/-- Catalogue code #5454: ((6,2,2)), m=13, a=[1, 1, 3, 7, 7, 8], S=[0, 11]. -/
def code_5454 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_5454_ok : code_5454.OK := by native_decide
/-- Code #5454 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5454_qec :
    ∃ ψ, SS.IsAmplitudes code_5454 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5454 code_5454_ok (by decide) (by decide)

/-- Catalogue code #5455: ((6,2,2)), m=13, a=[1, 1, 3, 7, 7, 10], S=[0, 5]. -/
def code_5455 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13)]
theorem code_5455_ok : code_5455.OK := by native_decide
/-- Code #5455 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5455_qec :
    ∃ ψ, SS.IsAmplitudes code_5455 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5455 code_5455_ok (by decide) (by decide)

/-- Catalogue code #5456: ((6,2,2)), m=13, a=[1, 1, 3, 7, 7, 10], S=[0, 11]. -/
def code_5456 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_5456_ok : code_5456.OK := by native_decide
/-- Code #5456 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5456_qec :
    ∃ ψ, SS.IsAmplitudes code_5456 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5456 code_5456_ok (by decide) (by decide)

/-- Catalogue code #5457: ((6,2,2)), m=13, a=[1, 1, 3, 7, 8, 8], S=[0, 4]. -/
def code_5457 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5457_ok : code_5457.OK := by native_decide
/-- Code #5457 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5457_qec :
    ∃ ψ, SS.IsAmplitudes code_5457 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5457 code_5457_ok (by decide) (by decide)

/-- Catalogue code #5458: ((6,2,2)), m=13, a=[1, 1, 3, 7, 8, 8], S=[0, 11]. -/
def code_5458 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5458_ok : code_5458.OK := by native_decide
/-- Code #5458 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5458_qec :
    ∃ ψ, SS.IsAmplitudes code_5458 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5458 code_5458_ok (by decide) (by decide)

/-- Catalogue code #5459: ((6,2,2)), m=13, a=[1, 1, 3, 7, 8, 9], S=[0, 11]. -/
def code_5459 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5459_ok : code_5459.OK := by native_decide
/-- Code #5459 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5459_qec :
    ∃ ψ, SS.IsAmplitudes code_5459 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5459 code_5459_ok (by decide) (by decide)

/-- Catalogue code #5460: ((6,2,2)), m=13, a=[1, 1, 3, 7, 8, 10], S=[0, 11]. -/
def code_5460 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5460_ok : code_5460.OK := by native_decide
/-- Code #5460 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5460_qec :
    ∃ ψ, SS.IsAmplitudes code_5460 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5460 code_5460_ok (by decide) (by decide)

/-- Catalogue code #5461: ((6,2,2)), m=13, a=[1, 1, 3, 7, 8, 11], S=[0, 9]. -/
def code_5461 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5461_ok : code_5461.OK := by native_decide
/-- Code #5461 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5461_qec :
    ∃ ψ, SS.IsAmplitudes code_5461 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5461 code_5461_ok (by decide) (by decide)

/-- Catalogue code #5462: ((6,2,2)), m=13, a=[1, 1, 3, 8, 8, 9], S=[0, 2]. -/
def code_5462 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5462_ok : code_5462.OK := by native_decide
/-- Code #5462 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5462_qec :
    ∃ ψ, SS.IsAmplitudes code_5462 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5462 code_5462_ok (by decide) (by decide)

/-- Catalogue code #5463: ((6,2,2)), m=13, a=[1, 1, 3, 8, 8, 9], S=[0, 6]. -/
def code_5463 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5463_ok : code_5463.OK := by native_decide
/-- Code #5463 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5463_qec :
    ∃ ψ, SS.IsAmplitudes code_5463 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5463 code_5463_ok (by decide) (by decide)

/-- Catalogue code #5464: ((6,2,2)), m=13, a=[1, 1, 3, 8, 8, 9], S=[0, 11]. -/
def code_5464 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5464_ok : code_5464.OK := by native_decide
/-- Code #5464 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5464_qec :
    ∃ ψ, SS.IsAmplitudes code_5464 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5464 code_5464_ok (by decide) (by decide)

/-- Catalogue code #5465: ((6,2,2)), m=13, a=[1, 1, 3, 8, 8, 10], S=[0, 6]. -/
def code_5465 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5465_ok : code_5465.OK := by native_decide
/-- Code #5465 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5465_qec :
    ∃ ψ, SS.IsAmplitudes code_5465 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5465 code_5465_ok (by decide) (by decide)

/-- Catalogue code #5466: ((6,2,2)), m=13, a=[1, 1, 3, 8, 8, 10], S=[0, 11]. -/
def code_5466 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5466_ok : code_5466.OK := by native_decide
/-- Code #5466 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5466_qec :
    ∃ ψ, SS.IsAmplitudes code_5466 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5466 code_5466_ok (by decide) (by decide)

/-- Catalogue code #5467: ((6,2,2)), m=13, a=[1, 1, 3, 8, 8, 12], S=[0, 2]. -/
def code_5467 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((9 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5467_ok : code_5467.OK := by native_decide
/-- Code #5467 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5467_qec :
    ∃ ψ, SS.IsAmplitudes code_5467 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5467 code_5467_ok (by decide) (by decide)

/-- Catalogue code #5468: ((6,2,2)), m=13, a=[1, 1, 3, 8, 9, 9], S=[0, 11]. -/
def code_5468 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5468_ok : code_5468.OK := by native_decide
/-- Code #5468 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5468_qec :
    ∃ ψ, SS.IsAmplitudes code_5468 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5468 code_5468_ok (by decide) (by decide)

/-- Catalogue code #5469: ((6,2,2)), m=13, a=[1, 1, 3, 9, 11, 11], S=[0, 5]. -/
def code_5469 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5469_ok : code_5469.OK := by native_decide
/-- Code #5469 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5469_qec :
    ∃ ψ, SS.IsAmplitudes code_5469 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5469 code_5469_ok (by decide) (by decide)

/-- Catalogue code #5470: ((6,2,2)), m=13, a=[1, 1, 4, 4, 4, 7], S=[0, 2]. -/
def code_5470 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5470_ok : code_5470.OK := by native_decide
/-- Code #5470 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5470_qec :
    ∃ ψ, SS.IsAmplitudes code_5470 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5470 code_5470_ok (by decide) (by decide)

/-- Catalogue code #5471: ((6,2,2)), m=13, a=[1, 1, 4, 4, 4, 11], S=[0, 6]. -/
def code_5471 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5471_ok : code_5471.OK := by native_decide
/-- Code #5471 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5471_qec :
    ∃ ψ, SS.IsAmplitudes code_5471 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5471 code_5471_ok (by decide) (by decide)

/-- Catalogue code #5472: ((6,2,2)), m=13, a=[1, 1, 4, 4, 5, 6], S=[0, 11]. -/
def code_5472 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5472_ok : code_5472.OK := by native_decide
/-- Code #5472 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5472_qec :
    ∃ ψ, SS.IsAmplitudes code_5472 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5472 code_5472_ok (by decide) (by decide)

/-- Catalogue code #5473: ((6,2,2)), m=13, a=[1, 1, 4, 4, 5, 7], S=[0, 11]. -/
def code_5473 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5473_ok : code_5473.OK := by native_decide
/-- Code #5473 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5473_qec :
    ∃ ψ, SS.IsAmplitudes code_5473 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5473 code_5473_ok (by decide) (by decide)

/-- Catalogue code #5474: ((6,2,2)), m=13, a=[1, 1, 4, 4, 5, 11], S=[0, 6]. -/
def code_5474 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5474_ok : code_5474.OK := by native_decide
/-- Code #5474 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5474_qec :
    ∃ ψ, SS.IsAmplitudes code_5474 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5474 code_5474_ok (by decide) (by decide)

/-- Catalogue code #5475: ((6,2,2)), m=13, a=[1, 1, 4, 4, 6, 7], S=[0, 8]. -/
def code_5475 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5475_ok : code_5475.OK := by native_decide
/-- Code #5475 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5475_qec :
    ∃ ψ, SS.IsAmplitudes code_5475 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5475 code_5475_ok (by decide) (by decide)

/-- Catalogue code #5476: ((6,2,2)), m=13, a=[1, 1, 4, 4, 6, 11], S=[0, 8]. -/
def code_5476 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5476_ok : code_5476.OK := by native_decide
/-- Code #5476 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5476_qec :
    ∃ ψ, SS.IsAmplitudes code_5476 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5476 code_5476_ok (by decide) (by decide)

/-- Catalogue code #5477: ((6,2,2)), m=13, a=[1, 1, 4, 4, 7, 7], S=[0, 2]. -/
def code_5477 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5477_ok : code_5477.OK := by native_decide
/-- Code #5477 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5477_qec :
    ∃ ψ, SS.IsAmplitudes code_5477 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5477 code_5477_ok (by decide) (by decide)

/-- Catalogue code #5478: ((6,2,2)), m=13, a=[1, 1, 4, 4, 7, 8], S=[0, 2]. -/
def code_5478 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_5478_ok : code_5478.OK := by native_decide
/-- Code #5478 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5478_qec :
    ∃ ψ, SS.IsAmplitudes code_5478 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5478 code_5478_ok (by decide) (by decide)

/-- Catalogue code #5479: ((6,2,2)), m=13, a=[1, 1, 4, 4, 7, 11], S=[0, 5]. -/
def code_5479 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
theorem code_5479_ok : code_5479.OK := by native_decide
/-- Code #5479 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5479_qec :
    ∃ ψ, SS.IsAmplitudes code_5479 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5479 code_5479_ok (by decide) (by decide)

/-- Catalogue code #5480: ((6,2,2)), m=13, a=[1, 1, 4, 4, 7, 11], S=[0, 8]. -/
def code_5480 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13)]
theorem code_5480_ok : code_5480.OK := by native_decide
/-- Code #5480 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5480_qec :
    ∃ ψ, SS.IsAmplitudes code_5480 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5480 code_5480_ok (by decide) (by decide)

/-- Catalogue code #5481: ((6,2,2)), m=13, a=[1, 1, 4, 5, 5, 10], S=[0, 2]. -/
def code_5481 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]
theorem code_5481_ok : code_5481.OK := by native_decide
/-- Code #5481 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5481_qec :
    ∃ ψ, SS.IsAmplitudes code_5481 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5481 code_5481_ok (by decide) (by decide)

/-- Catalogue code #5482: ((6,2,2)), m=13, a=[1, 1, 4, 5, 5, 11], S=[0, 3]. -/
def code_5482 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_5482_ok : code_5482.OK := by native_decide
/-- Code #5482 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5482_qec :
    ∃ ψ, SS.IsAmplitudes code_5482 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5482 code_5482_ok (by decide) (by decide)

/-- Catalogue code #5483: ((6,2,2)), m=13, a=[1, 1, 4, 5, 6, 8], S=[0, 2]. -/
def code_5483 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5483_ok : code_5483.OK := by native_decide
/-- Code #5483 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5483_qec :
    ∃ ψ, SS.IsAmplitudes code_5483 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5483 code_5483_ok (by decide) (by decide)

/-- Catalogue code #5484: ((6,2,2)), m=13, a=[1, 1, 4, 5, 6, 8], S=[0, 10]. -/
def code_5484 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]
theorem code_5484_ok : code_5484.OK := by native_decide
/-- Code #5484 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5484_qec :
    ∃ ψ, SS.IsAmplitudes code_5484 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5484 code_5484_ok (by decide) (by decide)

/-- Catalogue code #5485: ((6,2,2)), m=13, a=[1, 1, 4, 5, 6, 9], S=[0, 2]. -/
def code_5485 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5485_ok : code_5485.OK := by native_decide
/-- Code #5485 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5485_qec :
    ∃ ψ, SS.IsAmplitudes code_5485 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5485 code_5485_ok (by decide) (by decide)

/-- Catalogue code #5486: ((6,2,2)), m=13, a=[1, 1, 4, 5, 6, 9], S=[0, 11]. -/
def code_5486 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5486_ok : code_5486.OK := by native_decide
/-- Code #5486 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5486_qec :
    ∃ ψ, SS.IsAmplitudes code_5486 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5486 code_5486_ok (by decide) (by decide)

/-- Catalogue code #5487: ((6,2,2)), m=13, a=[1, 1, 4, 5, 6, 10], S=[0, 11]. -/
def code_5487 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5487_ok : code_5487.OK := by native_decide
/-- Code #5487 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5487_qec :
    ∃ ψ, SS.IsAmplitudes code_5487 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5487 code_5487_ok (by decide) (by decide)

/-- Catalogue code #5488: ((6,2,2)), m=13, a=[1, 1, 4, 5, 6, 11], S=[0, 10]. -/
def code_5488 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5488_ok : code_5488.OK := by native_decide
/-- Code #5488 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5488_qec :
    ∃ ψ, SS.IsAmplitudes code_5488 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5488 code_5488_ok (by decide) (by decide)

/-- Catalogue code #5489: ((6,2,2)), m=13, a=[1, 1, 4, 5, 7, 9], S=[0, 11]. -/
def code_5489 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5489_ok : code_5489.OK := by native_decide
/-- Code #5489 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5489_qec :
    ∃ ψ, SS.IsAmplitudes code_5489 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5489 code_5489_ok (by decide) (by decide)

/-- Catalogue code #5490: ((6,2,2)), m=13, a=[1, 1, 4, 5, 7, 10], S=[0, 11]. -/
def code_5490 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5490_ok : code_5490.OK := by native_decide
/-- Code #5490 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5490_qec :
    ∃ ψ, SS.IsAmplitudes code_5490 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5490 code_5490_ok (by decide) (by decide)

/-- Catalogue code #5491: ((6,2,2)), m=13, a=[1, 1, 4, 5, 8, 11], S=[0, 7]. -/
def code_5491 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5491_ok : code_5491.OK := by native_decide
/-- Code #5491 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5491_qec :
    ∃ ψ, SS.IsAmplitudes code_5491 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5491 code_5491_ok (by decide) (by decide)

/-- Catalogue code #5492: ((6,2,2)), m=13, a=[1, 1, 4, 5, 8, 11], S=[0, 10]. -/
def code_5492 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5492_ok : code_5492.OK := by native_decide
/-- Code #5492 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5492_qec :
    ∃ ψ, SS.IsAmplitudes code_5492 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5492 code_5492_ok (by decide) (by decide)

/-- Catalogue code #5493: ((6,2,2)), m=13, a=[1, 1, 4, 5, 9, 10], S=[0, 11]. -/
def code_5493 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5493_ok : code_5493.OK := by native_decide
/-- Code #5493 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5493_qec :
    ∃ ψ, SS.IsAmplitudes code_5493 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5493 code_5493_ok (by decide) (by decide)

/-- Catalogue code #5494: ((6,2,2)), m=13, a=[1, 1, 4, 5, 9, 11], S=[0, 7]. -/
def code_5494 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5494_ok : code_5494.OK := by native_decide
/-- Code #5494 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5494_qec :
    ∃ ψ, SS.IsAmplitudes code_5494 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5494 code_5494_ok (by decide) (by decide)

/-- Catalogue code #5495: ((6,2,2)), m=13, a=[1, 1, 4, 5, 10, 10], S=[0, 7]. -/
def code_5495 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]
theorem code_5495_ok : code_5495.OK := by native_decide
/-- Code #5495 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5495_qec :
    ∃ ψ, SS.IsAmplitudes code_5495 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5495 code_5495_ok (by decide) (by decide)

/-- Catalogue code #5496: ((6,2,2)), m=13, a=[1, 1, 4, 5, 10, 10], S=[0, 11]. -/
def code_5496 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
theorem code_5496_ok : code_5496.OK := by native_decide
/-- Code #5496 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5496_qec :
    ∃ ψ, SS.IsAmplitudes code_5496 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5496 code_5496_ok (by decide) (by decide)

/-- Catalogue code #5497: ((6,2,2)), m=13, a=[1, 1, 4, 6, 7, 9], S=[0, 11]. -/
def code_5497 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5497_ok : code_5497.OK := by native_decide
/-- Code #5497 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5497_qec :
    ∃ ψ, SS.IsAmplitudes code_5497 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5497 code_5497_ok (by decide) (by decide)

/-- Catalogue code #5498: ((6,2,2)), m=13, a=[1, 1, 4, 6, 7, 11], S=[0, 8]. -/
def code_5498 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13)]
theorem code_5498_ok : code_5498.OK := by native_decide
/-- Code #5498 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5498_qec :
    ∃ ψ, SS.IsAmplitudes code_5498 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5498 code_5498_ok (by decide) (by decide)

/-- Catalogue code #5499: ((6,2,2)), m=13, a=[1, 1, 4, 6, 8, 11], S=[0, 10]. -/
def code_5499 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13)]
theorem code_5499_ok : code_5499.OK := by native_decide
/-- Code #5499 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5499_qec :
    ∃ ψ, SS.IsAmplitudes code_5499 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5499 code_5499_ok (by decide) (by decide)

end Catalogue.Chunk010
